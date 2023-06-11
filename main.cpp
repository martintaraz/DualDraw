#include <iostream>
#include <ftxui/component/screen_interactive.hpp>
#include <ftxui/component/component_options.hpp>

// TODO BIS change this to your path to dualpantoframework
#include "../dualpantoframework/utils/serial/include/libInterface.hpp"

using namespace ftxui;

int panto_index = 0;

double raw_panto_world_bottom_left_x = -50;
double raw_panto_world_bottom_left_y = -134;
double raw_panto_world_top_right_x = 50;
double raw_panto_world_top_right_y = -27;

double canvas_width = 100;
double canvas_height = 100;

Color::Palette16 drawingColor = Color::Red;

uint64_t handle;

auto protocolDebug = false;


std::atomic_bool stop = false;


std::vector<std::vector<bool>> pixels;

void initPixels() {
    pixels.clear();
    for (int i = 0; i < canvas_width; ++i) {
        auto tmp = std::vector<bool>();
        for (int j = 0; j < canvas_height; ++j) {
            tmp.emplace_back(false);
        }
        pixels.emplace_back(tmp);
    }
}


double panto_to_canvas_x(double panto_x) {
    double x_raw =
            (panto_x - raw_panto_world_bottom_left_x) / (raw_panto_world_top_right_x - raw_panto_world_bottom_left_x) *
            canvas_width;
    return std::clamp(x_raw, 0.0, canvas_width - 1);
}

double panto_to_canvas_y(double panto_y) {
    // y-axis is inverted, therefore subtract
    double y_raw = canvas_height - (panto_y - raw_panto_world_bottom_left_y) /
                                   (raw_panto_world_top_right_y - raw_panto_world_bottom_left_y) * canvas_height;
    return std::clamp(y_raw, 0.0, canvas_height - 1);
}

void draw_pixels(Canvas &c) {
    for (int i = 0; i < pixels.size(); ++i) {
        for (int j = 0; j < pixels[i].size(); ++j) {
            if (pixels[i][j]) {
                c.DrawPoint(i, j, true, drawingColor);
            }
        }
    }
}

void draw_pixel(double x, double y) {
    pixels[(int) x][(int) y] = true;
}


void handlePositionUpdates(uint64_t a, double *b) {
    std::vector<double> tmp;
    for (int i = 0; i < 10; ++i) {
        tmp.emplace_back(*b);
        b++;
    }
    auto raw_me_handle_x = tmp[panto_index * 5];
    auto raw_me_handle_y = tmp[panto_index * 5 + 1];

    draw_pixel(panto_to_canvas_x(raw_me_handle_x), panto_to_canvas_y(raw_me_handle_y));

    if (protocolDebug)
        std::cout << "position" << std::endl;
}


void handleSync(uint64_t a) {
    SendSyncAck(handle);
    if (protocolDebug)
        std::cout << "SynAck" << std::endl;
}


void handleHeartbeat(uint64_t a) {
    SendHeartbeatAck(handle);
    if (protocolDebug)
        std::cout << "heartbeatAck" << std::endl;
}


void handleLog(char *data) {
    if (protocolDebug)
        std::cout << data << std::endl;
}

void PollLoop() {
    while (!stop) {
        Poll(handle);
    }
}

void DrawLoop() {
    while (!stop) {
        ftxui::Canvas c = ftxui::Canvas((int) canvas_width, (int) canvas_height);
        draw_pixels(c);
        // TODO BIS: Bonus Task: have a look at the FTXUI documentation https://arthursonzogni.github.io/FTXUI/ and implement a simple color changer

        auto document = canvas(&c) | border;

        auto screen = Screen::Create(Dimension::Fit(document));
        Render(screen, document);
        screen.Print();
    }

}

int main(int argc, const char *argv[]) {
    initPixels();

    // TODO BIS: change this to your devices com port
    char *serialPort = strdup(R"(\\.\COM3)");
    handle = Open(serialPort);
    if (handle == 0) {
        std::cout << "Connection to dualPanto could not be established" << std::endl;
    }

    SetPositionHandler(handlePositionUpdates);
    SetSyncHandler(handleSync);
    SetHeartbeatHandler(handleHeartbeat);
    SetLoggingHandler(handleLog);

    std::thread pollThread(PollLoop);
    std::thread drawThread(DrawLoop);

    getchar();
    // if main loop is finished clean up and destroy the game
    stop = true;
    pollThread.join();
    drawThread.join();
    Close(handle);
}
