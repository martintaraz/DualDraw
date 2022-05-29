#include <iostream>
#include <ftxui/component/screen_interactive.hpp>
#include <ftxui/component/component_options.hpp>
#include <ftxui/component/component.hpp>

#include "serial/include/libInterface.hpp"

using namespace ftxui;

struct car {
    int size_x{};
    int size_y{};
    int pos_x{};
    int pos_y{};
    Color color = Color::Green;

    bool is_on_tile(int x, int y) {
        bool inRange = (x >= pos_x) && (x < pos_x + size_x) && (y >= pos_y) && (y < pos_y + size_y);
        return inRange;
    }

    void activate() {
        this->color = Color::Blue;
    }

    void deactivate() {
        this->color = Color::Green;
    }
};

int panto_index = 0;


int gridSize = 6;

int courser_x = 0;
int courser_y = 0;

int me_handle_x = 0;
int me_handle_y = 0;

double raw_me_handle_x = 0;
double raw_me_handle_y = 0;

double raw_panto_world_bottom_left_x = -98;
double raw_panto_world_bottom_left_y = -134;
double raw_panto_world_top_right_x = 2;
double raw_panto_world_top_right_y = -27;

int car_selected = -1;

int max_collider_id = 2;

std::vector<car> cars;

uint64_t handle;

auto heartbeatReceived = false;

bool move_coursor(int x, int y);

void draw_border_around_grid();

void updateGameHandlePosition(int originX, int originY, int pixelPerCell);

void draw_rect(ftxui::Canvas &c, int origin_x, int origin_y, int target_x, int target_y) {
    // draw borders
    c.DrawPointLine(origin_x, origin_y, origin_x, target_y, Color::Red);
    c.DrawPointLine(origin_x, target_y, target_x, target_y, Color::Red);
    c.DrawPointLine(target_x, target_y, target_x, origin_y, Color::Red);
    c.DrawPointLine(target_x, origin_y, origin_x, origin_y, Color::Red);
}

void draw_rect_filled(ftxui::Canvas &c, int origin_x, int origin_y, int target_x, int target_y, Color color) {
    for (int i = origin_x; i < target_x; ++i) {
        for (int j = origin_y; j < target_y; ++j) {
            c.DrawBlock(i, j, true, color);
        }
    }
}


void draw_rect_filled_2(ftxui::Canvas &c, int origin_x, int origin_y, int target_x, int target_y, Color color) {
    for (int i = origin_x; i < target_x; ++i) {
        for (int j = origin_y; j < target_y; ++j) {
            c.DrawPoint(i, j, true, color);
        }
    }
}

void draw_panto_handle(Canvas &c, int origin_x, int origin_y, int pixel_per_cell) {

    draw_rect_filled_2(c,
                       origin_x + pixel_per_cell * me_handle_x + 2,
                       origin_y + pixel_per_cell * me_handle_y + 4,
                       origin_x + pixel_per_cell * (me_handle_x + 1) - 1,
                       origin_y + pixel_per_cell * (me_handle_y + 1) - 2,
                       Color::Yellow
    );
}


void draw_grid(ftxui::Canvas &c, int origin_x, int origin_y, int num_rows, int num_cols, int pixel_per_cell) {
    // draw the grid, start at 1 to not kill the border
    for (int i = 1; i < num_cols; ++i) {
        c.DrawPointLine(origin_x + pixel_per_cell * i, origin_y, origin_x + pixel_per_cell * i,
                        origin_y + num_rows * pixel_per_cell, Color::White);
    }
    for (int i = 1; i < num_rows; ++i) {
        c.DrawPointLine(origin_x, origin_y + pixel_per_cell * i, origin_x + pixel_per_cell * num_cols,
                        origin_y + i * pixel_per_cell, Color::White);
    }

    draw_rect(c, origin_x, origin_y, origin_x + num_cols * pixel_per_cell, origin_y + num_rows * pixel_per_cell);
}

void draw_car(Canvas &c, car car, int origin_x, int origin_y, int pixel_per_cell) {

    draw_rect_filled(c,
                     origin_x + pixel_per_cell * car.pos_x + 2,
                     origin_y + pixel_per_cell * car.pos_y + 4,
                     origin_x + pixel_per_cell * (car.pos_x + car.size_x) - 1,
                     origin_y + pixel_per_cell * (car.pos_y + car.size_y) - 2,
                     car.color
    );
}


void draw_courser(Canvas &canvas, int x, int y, int origin_x, int origin_y, int pixel_per_cell) {
    draw_rect(canvas,
              origin_x + x * pixel_per_cell,
              origin_y + y * pixel_per_cell,
              origin_x + (x + 1) * pixel_per_cell,
              origin_y + (y + 1) * pixel_per_cell);
}

void handlePositionUpdates(uint64_t a, double *b) {
    std::vector<double> tmp;
    for (int i = 0; i < 10; ++i) {
        tmp.emplace_back(*b);
        b++;
    }
    raw_me_handle_x = tmp[panto_index * 5];
    raw_me_handle_y = tmp[panto_index * 5 + 1];
    std::cout << "position" << std::endl;
}


void handleSync(uint64_t a) {
    SendSyncAck(handle);
    //std::cout << "SynAck" << std::endl;
}


void handleHeartbeat(uint64_t a) {
    heartbeatReceived = true;
    SendHeartbeatAck(handle);
    std::cout << "heartbeatAck" << std::endl;
}


void handleLog(char *data) {
    // std::cout << data << std::endl;
}

void handleTransition(uint8_t) {
//    std::cout << "transition handler called... no idea what to do next" << std::endl;
}

int main(int argc, const char *argv[]) {

    char *serialPort = strdup(R"(\\.\COM5)");
    handle = Open(serialPort);
    if (handle == 0) {
        std::cout << "Connection to dualPanto could not be established" << std::endl;
    }

    std::cout << std::to_string(handle);
    SetPositionHandler(handlePositionUpdates);
    SetSyncHandler(handleSync);
    SetHeartbeatHandler(handleHeartbeat);
    SetLoggingHandler(handleLog);
    SetTransitionHandler(handleTransition);


    while (!heartbeatReceived) {
        Poll(handle);
    }


    auto _car1 = car();
    _car1.pos_x = 0;
    _car1.pos_y = 0;
    _car1.size_x = 1;
    _car1.size_y = 2;
    cars.emplace_back(_car1);

    auto _car2 = car();
    _car2.pos_x = 2;
    _car2.pos_y = 1;
    _car2.size_x = 1;
    _car2.size_y = 2;
    cars.emplace_back(_car2);

    auto _car3 = car();
    _car3.pos_x = 3;
    _car3.pos_y = 3;
    _car3.size_x = 2;
    _car3.size_y = 1;
    cars.emplace_back(_car3);

    CreateObstacle(handle, panto_index, max_collider_id,
                   raw_panto_world_bottom_left_x,
                   raw_panto_world_bottom_left_y,
                   raw_panto_world_top_right_x,
                   raw_panto_world_top_right_y);
    EnableObstacle(handle, panto_index, max_collider_id);
    max_collider_id++;




    // do not do this in the loop since it will flood the panto with colliders
    // draw_border_around_grid();

    auto render_game = Renderer([&] {
        Poll(handle);
        ftxui::Canvas c = ftxui::Canvas(80, 80);
        int originX = 10;
        int originY = 20;
        int pixelPerCell = 8;
        draw_grid(c, originX, originY, gridSize, gridSize, pixelPerCell);

        for (auto _car: cars) {
            draw_car(c, _car, originX, originY, pixelPerCell);
        }

        if (car_selected == -1) {
            draw_courser(c, courser_x, courser_y, originX, originY, pixelPerCell);
        }

        updateGameHandlePosition(originX, originY, pixelPerCell);

        draw_panto_handle(c, originX, originY, pixelPerCell);


        auto document = canvas(&c) | border;

//        c.DrawText(0, 0, "Welcome to RushHour");
//        c.DrawText(0, 5, "Use your arrow keys to navigate");
//        c.DrawText(0, 10, "Use Return to select / deselect a car");
        return canvas(std::move(c));
    });

    auto tab_with_game = CatchEvent(render_game, [&](Event e) {
        if (e == Event::ArrowUp) {
            move_coursor(0, -1);
            return true;
        }
        if (e == Event::ArrowDown) {
            move_coursor(0, 1);
            return true;
        }
        if (e == Event::ArrowLeft) {
            move_coursor(-1, 0);
            return true;
        }
        if (e == Event::ArrowRight) {
            move_coursor(1, 0);
            return true;
        }
        if (e == Event::Return) {
            if (car_selected == -1) {
                // see if there is a car on the cursor tile
                for (int i = 0; i < cars.size(); ++i) {
                    if (cars[i].is_on_tile(courser_x, courser_y)) {
                        cars[i].activate();
                        courser_x = cars[i].pos_x;
                        courser_y = cars[i].pos_y;
                        car_selected = i;
                        break;
                    }
                }
            } else {
                cars[car_selected].deactivate();
                car_selected = -1;
            }
            return true;
        }
        return false;
    });

    auto s = ScreenInteractive::FitComponent();
    auto exit_button = Button("exit", s.ExitLoopClosure());
    auto menu = Container::Horizontal(
            {
                    exit_button,
            }
    );


    auto component = Container::Vertical({
                                                 tab_with_game,
                                                 menu,
                                         });

    // Add some separator to decorate the whole component:
    auto component_renderer = Renderer(component, [&] {
        return vbox({
                            tab_with_game->Render(),
                            separator(),
                            menu->Render(),
                    }) |
               border;
    });
    s.Loop(component_renderer);
}

double panto_to_grid_x(double panto_x) {
    return (panto_x - raw_panto_world_bottom_left_x) / (raw_panto_world_top_right_x - raw_panto_world_bottom_left_x) *
           gridSize;
}

double panto_to_grid_y(double panto_y) {
    // y-axis is inverted, therefore subtract
    return gridSize - (raw_me_handle_y - raw_panto_world_bottom_left_y) /
                      (raw_panto_world_top_right_y - raw_panto_world_bottom_left_y) * gridSize;
}


void draw_border_around_grid() {
    CreateObstacle(handle, panto_index, max_collider_id,
                   raw_panto_world_bottom_left_x,
                   raw_panto_world_bottom_left_y,
                   raw_panto_world_top_right_x,
                   raw_panto_world_bottom_left_y);
    EnableObstacle(handle, panto_index, max_collider_id);
    max_collider_id++;
    return;

    CreateObstacle(handle, panto_index, max_collider_id,
                   raw_panto_world_top_right_x,
                   raw_panto_world_bottom_left_y,
                   raw_panto_world_top_right_x,
                   raw_panto_world_top_right_y);
    EnableObstacle(handle, panto_index, max_collider_id);
    max_collider_id++;

    CreateObstacle(handle, panto_index, max_collider_id,
                   raw_panto_world_top_right_x,
                   raw_panto_world_top_right_y,
                   raw_panto_world_bottom_left_x,
                   raw_panto_world_top_right_y);
    EnableObstacle(handle, panto_index, max_collider_id);
    max_collider_id++;

    CreateObstacle(handle, panto_index, max_collider_id,
                   raw_panto_world_bottom_left_x,
                   raw_panto_world_top_right_y,
                   raw_panto_world_bottom_left_x,
                   raw_panto_world_bottom_left_y);
    EnableObstacle(handle, panto_index, max_collider_id);
    max_collider_id++;
}

void updateGameHandlePosition(int originX, int originY, int pixelPerCell) {
    me_handle_x = panto_to_grid_x(raw_me_handle_x);
    me_handle_y = panto_to_grid_y(raw_me_handle_y);
//    std::cout << raw_me_handle_x << " " << raw_me_handle_y << " " << me_handle_x << " " << me_handle_y;
}

bool move_coursor(int x, int y) {
    if (car_selected == -1) {
        courser_x = std::clamp(courser_x + x, 0, gridSize - 1);
        courser_y = std::clamp(courser_y + y, 0, gridSize - 1);
        return true;
    } else {
        // check if the selected car allows this movement direction
        if (x != 0) {
            if (cars[car_selected].size_y != 1) {
                return false;
            }
        }
        if (y != 0) {
            if (cars[car_selected].size_x != 1) {
                return false;
            }
        }

        // check if the to be moved to is in range
        int _courser_x = std::clamp(courser_x + x, 0, gridSize - 1);
        int _courser_y = std::clamp(courser_y + y, 0, gridSize - 1);
        bool free = true;
        // check if the car would be out of the game
        free = free && (_courser_x + cars[car_selected].size_x) <= gridSize;
        free = free && (_courser_y + cars[car_selected].size_y) <= gridSize;

        // check if the new position of the car is free from other cars
        for (int i = 0; i < cars.size(); ++i) {
            if (i == car_selected) continue;
            for (int _x_pos = _courser_x;
                 _x_pos < courser_x + cars[car_selected].size_x; ++_x_pos) {
                for (int _y_pos = _courser_y;
                     _y_pos < _courser_y + cars[car_selected].size_y; ++_y_pos) {
                    free = free && !cars[i].is_on_tile(_x_pos, _y_pos);
                }
            }
        }
        // TODO check that the player is not in this tile (aka will not be overrun)


        // move the car
        if (free) {
            cars[car_selected].pos_x = _courser_x;
            cars[car_selected].pos_y = _courser_y;
            courser_x = _courser_x;
            courser_y = _courser_y;
        }
        return free;
    }

}
