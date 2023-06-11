cmake_minimum_required(VERSION 3.20)
project(dualDraw)

set(CMAKE_CXX_STANDARD 20)

include(FetchContent)

FetchContent_Declare(ftxui
        GIT_REPOSITORY https://github.com/ArthurSonzogni/ftxui
        GIT_TAG v2.0.0
        )

FetchContent_GetProperties(ftxui)
if(NOT ftxui_POPULATED)
    FetchContent_Populate(ftxui)
    add_subdirectory(${ftxui_SOURCE_DIR} ${ftxui_BINARY_DIR} EXCLUDE_FROM_ALL)
endif()


# link against serial and protocol

set(serial_source_dir serial/src)
set(protocol_source_dir protocol/src/protocol)
set(serial_include_dir serial/include)
set(protocol_include_dir protocol/include)
set(base_include_dir serial/include/serial)

set(export_header
        ${generated_header_dir}/serial_export.hpp)

set(public_headers
        ${serial_include_dir}/libInterface.hpp
        ${export_header})

set(private_headers
        ${serial_include_dir}/serial.hpp
        ${serial_include_dir}/packet.hpp
        ${serial_include_dir}/crashAnalyzer.hpp
        ${protocol_include_dir}/protocol/protocol.hpp
        ${protocol_include_dir}/protocol/header.hpp
        ${protocol_include_dir}/protocol/messageType.hpp)

set(shared_sources
        main.cpp
        ${serial_source_dir}/cppLib/lib.cpp
        ${serial_source_dir}/crashAnalyzer/analyze.cpp
        ${serial_source_dir}/crashAnalyzer/buffer.cpp
        ${serial_source_dir}/serial/shared.cpp
        ${serial_source_dir}/serial/packet.cpp
        ${protocol_source_dir}/protocol.cpp
        ${protocol_source_dir}/messageType.cpp)


include_directories(${serial_include_dir})
include_directories(${protocol_include_dir})


if (WIN32)
    # set path vars
    set(addr2line "$ENV{USERPROFILE}\\.platformio\\packages\\toolchain-xtensa32\\bin\\xtensa-esp32-elf-addr2line.exe")
    set(firmware_rel "..\\..\\firmware\\.pio\\build\\esp32dev\\firmware.elf")
    get_filename_component(firmware_abs ${firmware_rel} ABSOLUTE)
    # escape backslashes
    string(REPLACE "\\" "\\\\" addr2line ${addr2line})
    string(REPLACE "/" "\\\\" firmware_abs ${firmware_abs})
    message(STATUS "addr2line: ${addr2line}")
    message(STATUS "firmware (rel): ${firmware_rel}")
    message(STATUS "firmware (abs): ${firmware_abs}")
    # set defines
    add_compile_definitions(WINDOWS)
    #add_compile_definitions(ADDR2LINE_PATH="${addr2line}")
    #add_compile_definitions(FIRMWARE_PATH="${firmware_abs}")
    set(sources
            ${shared_sources}
            ${serial_source_dir}/serial/win.cpp)
elseif (UNIX)
    set(sources
            ${shared_sources}
            ${serial_source_dir}/serial/unix.cpp)
else()
    message(FATAL_ERROR "System is neither WIN32 nor UNIX.")
endif()


add_executable(dualDraw ${sources})

target_include_directories(dualDraw PRIVATE src serial protocol)

target_link_libraries(dualDraw
        PRIVATE ftxui::screen
        PRIVATE ftxui::dom
        PRIVATE ftxui::component
        )