# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2023.1.3\bin\cmake\win\x64\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2023.1.3\bin\cmake\win\x64\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\marti\Github\DualDraw

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\marti\Github\DualDraw\cmake-build-debug

# Include any dependencies generated for this target.
include _deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_maybe.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_maybe.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_maybe.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_maybe.dir/flags.make

_deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_maybe.dir/maybe.cpp.obj: _deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_maybe.dir/flags.make
_deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_maybe.dir/maybe.cpp.obj: _deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_maybe.dir/includes_CXX.rsp
_deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_maybe.dir/maybe.cpp.obj: _deps/ftxui-src/examples/component/maybe.cpp
_deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_maybe.dir/maybe.cpp.obj: _deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_maybe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\marti\Github\DualDraw\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object _deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_maybe.dir/maybe.cpp.obj"
	cd /d C:\Users\marti\Github\DualDraw\cmake-build-debug\_deps\ftxui-build\examples\component && C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_maybe.dir/maybe.cpp.obj -MF CMakeFiles\ftxui_example_maybe.dir\maybe.cpp.obj.d -o CMakeFiles\ftxui_example_maybe.dir\maybe.cpp.obj -c C:\Users\marti\Github\DualDraw\cmake-build-debug\_deps\ftxui-src\examples\component\maybe.cpp

_deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_maybe.dir/maybe.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ftxui_example_maybe.dir/maybe.cpp.i"
	cd /d C:\Users\marti\Github\DualDraw\cmake-build-debug\_deps\ftxui-build\examples\component && C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\marti\Github\DualDraw\cmake-build-debug\_deps\ftxui-src\examples\component\maybe.cpp > CMakeFiles\ftxui_example_maybe.dir\maybe.cpp.i

_deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_maybe.dir/maybe.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ftxui_example_maybe.dir/maybe.cpp.s"
	cd /d C:\Users\marti\Github\DualDraw\cmake-build-debug\_deps\ftxui-build\examples\component && C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\marti\Github\DualDraw\cmake-build-debug\_deps\ftxui-src\examples\component\maybe.cpp -o CMakeFiles\ftxui_example_maybe.dir\maybe.cpp.s

# Object files for target ftxui_example_maybe
ftxui_example_maybe_OBJECTS = \
"CMakeFiles/ftxui_example_maybe.dir/maybe.cpp.obj"

# External object files for target ftxui_example_maybe
ftxui_example_maybe_EXTERNAL_OBJECTS =

_deps/ftxui-build/examples/component/ftxui_example_maybe.exe: _deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_maybe.dir/maybe.cpp.obj
_deps/ftxui-build/examples/component/ftxui_example_maybe.exe: _deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_maybe.dir/build.make
_deps/ftxui-build/examples/component/ftxui_example_maybe.exe: _deps/ftxui-build/ftxui-component.a
_deps/ftxui-build/examples/component/ftxui_example_maybe.exe: _deps/ftxui-build/ftxui-dom.a
_deps/ftxui-build/examples/component/ftxui_example_maybe.exe: _deps/ftxui-build/ftxui-screen.a
_deps/ftxui-build/examples/component/ftxui_example_maybe.exe: _deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_maybe.dir/linkLibs.rsp
_deps/ftxui-build/examples/component/ftxui_example_maybe.exe: _deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_maybe.dir/objects1
_deps/ftxui-build/examples/component/ftxui_example_maybe.exe: _deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_maybe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\marti\Github\DualDraw\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ftxui_example_maybe.exe"
	cd /d C:\Users\marti\Github\DualDraw\cmake-build-debug\_deps\ftxui-build\examples\component && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\ftxui_example_maybe.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_maybe.dir/build: _deps/ftxui-build/examples/component/ftxui_example_maybe.exe
.PHONY : _deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_maybe.dir/build

_deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_maybe.dir/clean:
	cd /d C:\Users\marti\Github\DualDraw\cmake-build-debug\_deps\ftxui-build\examples\component && $(CMAKE_COMMAND) -P CMakeFiles\ftxui_example_maybe.dir\cmake_clean.cmake
.PHONY : _deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_maybe.dir/clean

_deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_maybe.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\marti\Github\DualDraw C:\Users\marti\Github\DualDraw\cmake-build-debug\_deps\ftxui-src\examples\component C:\Users\marti\Github\DualDraw\cmake-build-debug C:\Users\marti\Github\DualDraw\cmake-build-debug\_deps\ftxui-build\examples\component C:\Users\marti\Github\DualDraw\cmake-build-debug\_deps\ftxui-build\examples\component\CMakeFiles\ftxui_example_maybe.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_maybe.dir/depend

