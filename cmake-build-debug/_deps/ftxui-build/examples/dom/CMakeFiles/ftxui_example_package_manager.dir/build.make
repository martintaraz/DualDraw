# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Users\marti\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\212.5457.51\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\marti\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\212.5457.51\bin\cmake\win\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\marti\CLionProjects\ftxuiCMAKE

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\marti\CLionProjects\ftxuiCMAKE\cmake-build-debug

# Include any dependencies generated for this target.
include _deps/ftxui-build/examples/dom/CMakeFiles/ftxui_example_package_manager.dir/depend.make
# Include the progress variables for this target.
include _deps/ftxui-build/examples/dom/CMakeFiles/ftxui_example_package_manager.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/ftxui-build/examples/dom/CMakeFiles/ftxui_example_package_manager.dir/flags.make

_deps/ftxui-build/examples/dom/CMakeFiles/ftxui_example_package_manager.dir/package_manager.cpp.obj: _deps/ftxui-build/examples/dom/CMakeFiles/ftxui_example_package_manager.dir/flags.make
_deps/ftxui-build/examples/dom/CMakeFiles/ftxui_example_package_manager.dir/package_manager.cpp.obj: _deps/ftxui-build/examples/dom/CMakeFiles/ftxui_example_package_manager.dir/includes_CXX.rsp
_deps/ftxui-build/examples/dom/CMakeFiles/ftxui_example_package_manager.dir/package_manager.cpp.obj: _deps/ftxui-src/examples/dom/package_manager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\marti\CLionProjects\ftxuiCMAKE\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object _deps/ftxui-build/examples/dom/CMakeFiles/ftxui_example_package_manager.dir/package_manager.cpp.obj"
	cd /d C:\Users\marti\CLionProjects\ftxuiCMAKE\cmake-build-debug\_deps\ftxui-build\examples\dom && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\ftxui_example_package_manager.dir\package_manager.cpp.obj -c C:\Users\marti\CLionProjects\ftxuiCMAKE\cmake-build-debug\_deps\ftxui-src\examples\dom\package_manager.cpp

_deps/ftxui-build/examples/dom/CMakeFiles/ftxui_example_package_manager.dir/package_manager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ftxui_example_package_manager.dir/package_manager.cpp.i"
	cd /d C:\Users\marti\CLionProjects\ftxuiCMAKE\cmake-build-debug\_deps\ftxui-build\examples\dom && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\marti\CLionProjects\ftxuiCMAKE\cmake-build-debug\_deps\ftxui-src\examples\dom\package_manager.cpp > CMakeFiles\ftxui_example_package_manager.dir\package_manager.cpp.i

_deps/ftxui-build/examples/dom/CMakeFiles/ftxui_example_package_manager.dir/package_manager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ftxui_example_package_manager.dir/package_manager.cpp.s"
	cd /d C:\Users\marti\CLionProjects\ftxuiCMAKE\cmake-build-debug\_deps\ftxui-build\examples\dom && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\marti\CLionProjects\ftxuiCMAKE\cmake-build-debug\_deps\ftxui-src\examples\dom\package_manager.cpp -o CMakeFiles\ftxui_example_package_manager.dir\package_manager.cpp.s

# Object files for target ftxui_example_package_manager
ftxui_example_package_manager_OBJECTS = \
"CMakeFiles/ftxui_example_package_manager.dir/package_manager.cpp.obj"

# External object files for target ftxui_example_package_manager
ftxui_example_package_manager_EXTERNAL_OBJECTS =

_deps/ftxui-build/examples/dom/ftxui_example_package_manager.exe: _deps/ftxui-build/examples/dom/CMakeFiles/ftxui_example_package_manager.dir/package_manager.cpp.obj
_deps/ftxui-build/examples/dom/ftxui_example_package_manager.exe: _deps/ftxui-build/examples/dom/CMakeFiles/ftxui_example_package_manager.dir/build.make
_deps/ftxui-build/examples/dom/ftxui_example_package_manager.exe: _deps/ftxui-build/ftxui-dom.a
_deps/ftxui-build/examples/dom/ftxui_example_package_manager.exe: _deps/ftxui-build/ftxui-screen.a
_deps/ftxui-build/examples/dom/ftxui_example_package_manager.exe: _deps/ftxui-build/examples/dom/CMakeFiles/ftxui_example_package_manager.dir/linklibs.rsp
_deps/ftxui-build/examples/dom/ftxui_example_package_manager.exe: _deps/ftxui-build/examples/dom/CMakeFiles/ftxui_example_package_manager.dir/objects1.rsp
_deps/ftxui-build/examples/dom/ftxui_example_package_manager.exe: _deps/ftxui-build/examples/dom/CMakeFiles/ftxui_example_package_manager.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\marti\CLionProjects\ftxuiCMAKE\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ftxui_example_package_manager.exe"
	cd /d C:\Users\marti\CLionProjects\ftxuiCMAKE\cmake-build-debug\_deps\ftxui-build\examples\dom && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\ftxui_example_package_manager.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/ftxui-build/examples/dom/CMakeFiles/ftxui_example_package_manager.dir/build: _deps/ftxui-build/examples/dom/ftxui_example_package_manager.exe
.PHONY : _deps/ftxui-build/examples/dom/CMakeFiles/ftxui_example_package_manager.dir/build

_deps/ftxui-build/examples/dom/CMakeFiles/ftxui_example_package_manager.dir/clean:
	cd /d C:\Users\marti\CLionProjects\ftxuiCMAKE\cmake-build-debug\_deps\ftxui-build\examples\dom && $(CMAKE_COMMAND) -P CMakeFiles\ftxui_example_package_manager.dir\cmake_clean.cmake
.PHONY : _deps/ftxui-build/examples/dom/CMakeFiles/ftxui_example_package_manager.dir/clean

_deps/ftxui-build/examples/dom/CMakeFiles/ftxui_example_package_manager.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\marti\CLionProjects\ftxuiCMAKE C:\Users\marti\CLionProjects\ftxuiCMAKE\cmake-build-debug\_deps\ftxui-src\examples\dom C:\Users\marti\CLionProjects\ftxuiCMAKE\cmake-build-debug C:\Users\marti\CLionProjects\ftxuiCMAKE\cmake-build-debug\_deps\ftxui-build\examples\dom C:\Users\marti\CLionProjects\ftxuiCMAKE\cmake-build-debug\_deps\ftxui-build\examples\dom\CMakeFiles\ftxui_example_package_manager.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/ftxui-build/examples/dom/CMakeFiles/ftxui_example_package_manager.dir/depend

