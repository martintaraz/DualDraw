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
include CMakeFiles/dualDraw.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/dualDraw.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/dualDraw.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dualDraw.dir/flags.make

CMakeFiles/dualDraw.dir/main.cpp.obj: CMakeFiles/dualDraw.dir/flags.make
CMakeFiles/dualDraw.dir/main.cpp.obj: CMakeFiles/dualDraw.dir/includes_CXX.rsp
CMakeFiles/dualDraw.dir/main.cpp.obj: C:/Users/marti/Github/DualDraw/main.cpp
CMakeFiles/dualDraw.dir/main.cpp.obj: CMakeFiles/dualDraw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\marti\Github\DualDraw\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/dualDraw.dir/main.cpp.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dualDraw.dir/main.cpp.obj -MF CMakeFiles\dualDraw.dir\main.cpp.obj.d -o CMakeFiles\dualDraw.dir\main.cpp.obj -c C:\Users\marti\Github\DualDraw\main.cpp

CMakeFiles/dualDraw.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dualDraw.dir/main.cpp.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\marti\Github\DualDraw\main.cpp > CMakeFiles\dualDraw.dir\main.cpp.i

CMakeFiles/dualDraw.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dualDraw.dir/main.cpp.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\marti\Github\DualDraw\main.cpp -o CMakeFiles\dualDraw.dir\main.cpp.s

CMakeFiles/dualDraw.dir/serial/src/cppLib/lib.cpp.obj: CMakeFiles/dualDraw.dir/flags.make
CMakeFiles/dualDraw.dir/serial/src/cppLib/lib.cpp.obj: CMakeFiles/dualDraw.dir/includes_CXX.rsp
CMakeFiles/dualDraw.dir/serial/src/cppLib/lib.cpp.obj: C:/Users/marti/Github/DualDraw/serial/src/cppLib/lib.cpp
CMakeFiles/dualDraw.dir/serial/src/cppLib/lib.cpp.obj: CMakeFiles/dualDraw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\marti\Github\DualDraw\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/dualDraw.dir/serial/src/cppLib/lib.cpp.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dualDraw.dir/serial/src/cppLib/lib.cpp.obj -MF CMakeFiles\dualDraw.dir\serial\src\cppLib\lib.cpp.obj.d -o CMakeFiles\dualDraw.dir\serial\src\cppLib\lib.cpp.obj -c C:\Users\marti\Github\DualDraw\serial\src\cppLib\lib.cpp

CMakeFiles/dualDraw.dir/serial/src/cppLib/lib.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dualDraw.dir/serial/src/cppLib/lib.cpp.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\marti\Github\DualDraw\serial\src\cppLib\lib.cpp > CMakeFiles\dualDraw.dir\serial\src\cppLib\lib.cpp.i

CMakeFiles/dualDraw.dir/serial/src/cppLib/lib.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dualDraw.dir/serial/src/cppLib/lib.cpp.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\marti\Github\DualDraw\serial\src\cppLib\lib.cpp -o CMakeFiles\dualDraw.dir\serial\src\cppLib\lib.cpp.s

CMakeFiles/dualDraw.dir/serial/src/crashAnalyzer/analyze.cpp.obj: CMakeFiles/dualDraw.dir/flags.make
CMakeFiles/dualDraw.dir/serial/src/crashAnalyzer/analyze.cpp.obj: CMakeFiles/dualDraw.dir/includes_CXX.rsp
CMakeFiles/dualDraw.dir/serial/src/crashAnalyzer/analyze.cpp.obj: C:/Users/marti/Github/DualDraw/serial/src/crashAnalyzer/analyze.cpp
CMakeFiles/dualDraw.dir/serial/src/crashAnalyzer/analyze.cpp.obj: CMakeFiles/dualDraw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\marti\Github\DualDraw\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/dualDraw.dir/serial/src/crashAnalyzer/analyze.cpp.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dualDraw.dir/serial/src/crashAnalyzer/analyze.cpp.obj -MF CMakeFiles\dualDraw.dir\serial\src\crashAnalyzer\analyze.cpp.obj.d -o CMakeFiles\dualDraw.dir\serial\src\crashAnalyzer\analyze.cpp.obj -c C:\Users\marti\Github\DualDraw\serial\src\crashAnalyzer\analyze.cpp

CMakeFiles/dualDraw.dir/serial/src/crashAnalyzer/analyze.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dualDraw.dir/serial/src/crashAnalyzer/analyze.cpp.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\marti\Github\DualDraw\serial\src\crashAnalyzer\analyze.cpp > CMakeFiles\dualDraw.dir\serial\src\crashAnalyzer\analyze.cpp.i

CMakeFiles/dualDraw.dir/serial/src/crashAnalyzer/analyze.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dualDraw.dir/serial/src/crashAnalyzer/analyze.cpp.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\marti\Github\DualDraw\serial\src\crashAnalyzer\analyze.cpp -o CMakeFiles\dualDraw.dir\serial\src\crashAnalyzer\analyze.cpp.s

CMakeFiles/dualDraw.dir/serial/src/crashAnalyzer/buffer.cpp.obj: CMakeFiles/dualDraw.dir/flags.make
CMakeFiles/dualDraw.dir/serial/src/crashAnalyzer/buffer.cpp.obj: CMakeFiles/dualDraw.dir/includes_CXX.rsp
CMakeFiles/dualDraw.dir/serial/src/crashAnalyzer/buffer.cpp.obj: C:/Users/marti/Github/DualDraw/serial/src/crashAnalyzer/buffer.cpp
CMakeFiles/dualDraw.dir/serial/src/crashAnalyzer/buffer.cpp.obj: CMakeFiles/dualDraw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\marti\Github\DualDraw\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/dualDraw.dir/serial/src/crashAnalyzer/buffer.cpp.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dualDraw.dir/serial/src/crashAnalyzer/buffer.cpp.obj -MF CMakeFiles\dualDraw.dir\serial\src\crashAnalyzer\buffer.cpp.obj.d -o CMakeFiles\dualDraw.dir\serial\src\crashAnalyzer\buffer.cpp.obj -c C:\Users\marti\Github\DualDraw\serial\src\crashAnalyzer\buffer.cpp

CMakeFiles/dualDraw.dir/serial/src/crashAnalyzer/buffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dualDraw.dir/serial/src/crashAnalyzer/buffer.cpp.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\marti\Github\DualDraw\serial\src\crashAnalyzer\buffer.cpp > CMakeFiles\dualDraw.dir\serial\src\crashAnalyzer\buffer.cpp.i

CMakeFiles/dualDraw.dir/serial/src/crashAnalyzer/buffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dualDraw.dir/serial/src/crashAnalyzer/buffer.cpp.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\marti\Github\DualDraw\serial\src\crashAnalyzer\buffer.cpp -o CMakeFiles\dualDraw.dir\serial\src\crashAnalyzer\buffer.cpp.s

CMakeFiles/dualDraw.dir/serial/src/serial/shared.cpp.obj: CMakeFiles/dualDraw.dir/flags.make
CMakeFiles/dualDraw.dir/serial/src/serial/shared.cpp.obj: CMakeFiles/dualDraw.dir/includes_CXX.rsp
CMakeFiles/dualDraw.dir/serial/src/serial/shared.cpp.obj: C:/Users/marti/Github/DualDraw/serial/src/serial/shared.cpp
CMakeFiles/dualDraw.dir/serial/src/serial/shared.cpp.obj: CMakeFiles/dualDraw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\marti\Github\DualDraw\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/dualDraw.dir/serial/src/serial/shared.cpp.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dualDraw.dir/serial/src/serial/shared.cpp.obj -MF CMakeFiles\dualDraw.dir\serial\src\serial\shared.cpp.obj.d -o CMakeFiles\dualDraw.dir\serial\src\serial\shared.cpp.obj -c C:\Users\marti\Github\DualDraw\serial\src\serial\shared.cpp

CMakeFiles/dualDraw.dir/serial/src/serial/shared.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dualDraw.dir/serial/src/serial/shared.cpp.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\marti\Github\DualDraw\serial\src\serial\shared.cpp > CMakeFiles\dualDraw.dir\serial\src\serial\shared.cpp.i

CMakeFiles/dualDraw.dir/serial/src/serial/shared.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dualDraw.dir/serial/src/serial/shared.cpp.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\marti\Github\DualDraw\serial\src\serial\shared.cpp -o CMakeFiles\dualDraw.dir\serial\src\serial\shared.cpp.s

CMakeFiles/dualDraw.dir/serial/src/serial/packet.cpp.obj: CMakeFiles/dualDraw.dir/flags.make
CMakeFiles/dualDraw.dir/serial/src/serial/packet.cpp.obj: CMakeFiles/dualDraw.dir/includes_CXX.rsp
CMakeFiles/dualDraw.dir/serial/src/serial/packet.cpp.obj: C:/Users/marti/Github/DualDraw/serial/src/serial/packet.cpp
CMakeFiles/dualDraw.dir/serial/src/serial/packet.cpp.obj: CMakeFiles/dualDraw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\marti\Github\DualDraw\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/dualDraw.dir/serial/src/serial/packet.cpp.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dualDraw.dir/serial/src/serial/packet.cpp.obj -MF CMakeFiles\dualDraw.dir\serial\src\serial\packet.cpp.obj.d -o CMakeFiles\dualDraw.dir\serial\src\serial\packet.cpp.obj -c C:\Users\marti\Github\DualDraw\serial\src\serial\packet.cpp

CMakeFiles/dualDraw.dir/serial/src/serial/packet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dualDraw.dir/serial/src/serial/packet.cpp.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\marti\Github\DualDraw\serial\src\serial\packet.cpp > CMakeFiles\dualDraw.dir\serial\src\serial\packet.cpp.i

CMakeFiles/dualDraw.dir/serial/src/serial/packet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dualDraw.dir/serial/src/serial/packet.cpp.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\marti\Github\DualDraw\serial\src\serial\packet.cpp -o CMakeFiles\dualDraw.dir\serial\src\serial\packet.cpp.s

CMakeFiles/dualDraw.dir/protocol/src/protocol/protocol.cpp.obj: CMakeFiles/dualDraw.dir/flags.make
CMakeFiles/dualDraw.dir/protocol/src/protocol/protocol.cpp.obj: CMakeFiles/dualDraw.dir/includes_CXX.rsp
CMakeFiles/dualDraw.dir/protocol/src/protocol/protocol.cpp.obj: C:/Users/marti/Github/DualDraw/protocol/src/protocol/protocol.cpp
CMakeFiles/dualDraw.dir/protocol/src/protocol/protocol.cpp.obj: CMakeFiles/dualDraw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\marti\Github\DualDraw\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/dualDraw.dir/protocol/src/protocol/protocol.cpp.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dualDraw.dir/protocol/src/protocol/protocol.cpp.obj -MF CMakeFiles\dualDraw.dir\protocol\src\protocol\protocol.cpp.obj.d -o CMakeFiles\dualDraw.dir\protocol\src\protocol\protocol.cpp.obj -c C:\Users\marti\Github\DualDraw\protocol\src\protocol\protocol.cpp

CMakeFiles/dualDraw.dir/protocol/src/protocol/protocol.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dualDraw.dir/protocol/src/protocol/protocol.cpp.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\marti\Github\DualDraw\protocol\src\protocol\protocol.cpp > CMakeFiles\dualDraw.dir\protocol\src\protocol\protocol.cpp.i

CMakeFiles/dualDraw.dir/protocol/src/protocol/protocol.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dualDraw.dir/protocol/src/protocol/protocol.cpp.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\marti\Github\DualDraw\protocol\src\protocol\protocol.cpp -o CMakeFiles\dualDraw.dir\protocol\src\protocol\protocol.cpp.s

CMakeFiles/dualDraw.dir/protocol/src/protocol/messageType.cpp.obj: CMakeFiles/dualDraw.dir/flags.make
CMakeFiles/dualDraw.dir/protocol/src/protocol/messageType.cpp.obj: CMakeFiles/dualDraw.dir/includes_CXX.rsp
CMakeFiles/dualDraw.dir/protocol/src/protocol/messageType.cpp.obj: C:/Users/marti/Github/DualDraw/protocol/src/protocol/messageType.cpp
CMakeFiles/dualDraw.dir/protocol/src/protocol/messageType.cpp.obj: CMakeFiles/dualDraw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\marti\Github\DualDraw\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/dualDraw.dir/protocol/src/protocol/messageType.cpp.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dualDraw.dir/protocol/src/protocol/messageType.cpp.obj -MF CMakeFiles\dualDraw.dir\protocol\src\protocol\messageType.cpp.obj.d -o CMakeFiles\dualDraw.dir\protocol\src\protocol\messageType.cpp.obj -c C:\Users\marti\Github\DualDraw\protocol\src\protocol\messageType.cpp

CMakeFiles/dualDraw.dir/protocol/src/protocol/messageType.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dualDraw.dir/protocol/src/protocol/messageType.cpp.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\marti\Github\DualDraw\protocol\src\protocol\messageType.cpp > CMakeFiles\dualDraw.dir\protocol\src\protocol\messageType.cpp.i

CMakeFiles/dualDraw.dir/protocol/src/protocol/messageType.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dualDraw.dir/protocol/src/protocol/messageType.cpp.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\marti\Github\DualDraw\protocol\src\protocol\messageType.cpp -o CMakeFiles\dualDraw.dir\protocol\src\protocol\messageType.cpp.s

CMakeFiles/dualDraw.dir/serial/src/serial/win.cpp.obj: CMakeFiles/dualDraw.dir/flags.make
CMakeFiles/dualDraw.dir/serial/src/serial/win.cpp.obj: CMakeFiles/dualDraw.dir/includes_CXX.rsp
CMakeFiles/dualDraw.dir/serial/src/serial/win.cpp.obj: C:/Users/marti/Github/DualDraw/serial/src/serial/win.cpp
CMakeFiles/dualDraw.dir/serial/src/serial/win.cpp.obj: CMakeFiles/dualDraw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\marti\Github\DualDraw\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/dualDraw.dir/serial/src/serial/win.cpp.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dualDraw.dir/serial/src/serial/win.cpp.obj -MF CMakeFiles\dualDraw.dir\serial\src\serial\win.cpp.obj.d -o CMakeFiles\dualDraw.dir\serial\src\serial\win.cpp.obj -c C:\Users\marti\Github\DualDraw\serial\src\serial\win.cpp

CMakeFiles/dualDraw.dir/serial/src/serial/win.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dualDraw.dir/serial/src/serial/win.cpp.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\marti\Github\DualDraw\serial\src\serial\win.cpp > CMakeFiles\dualDraw.dir\serial\src\serial\win.cpp.i

CMakeFiles/dualDraw.dir/serial/src/serial/win.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dualDraw.dir/serial/src/serial/win.cpp.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\marti\Github\DualDraw\serial\src\serial\win.cpp -o CMakeFiles\dualDraw.dir\serial\src\serial\win.cpp.s

# Object files for target dualDraw
dualDraw_OBJECTS = \
"CMakeFiles/dualDraw.dir/main.cpp.obj" \
"CMakeFiles/dualDraw.dir/serial/src/cppLib/lib.cpp.obj" \
"CMakeFiles/dualDraw.dir/serial/src/crashAnalyzer/analyze.cpp.obj" \
"CMakeFiles/dualDraw.dir/serial/src/crashAnalyzer/buffer.cpp.obj" \
"CMakeFiles/dualDraw.dir/serial/src/serial/shared.cpp.obj" \
"CMakeFiles/dualDraw.dir/serial/src/serial/packet.cpp.obj" \
"CMakeFiles/dualDraw.dir/protocol/src/protocol/protocol.cpp.obj" \
"CMakeFiles/dualDraw.dir/protocol/src/protocol/messageType.cpp.obj" \
"CMakeFiles/dualDraw.dir/serial/src/serial/win.cpp.obj"

# External object files for target dualDraw
dualDraw_EXTERNAL_OBJECTS =

dualDraw.exe: CMakeFiles/dualDraw.dir/main.cpp.obj
dualDraw.exe: CMakeFiles/dualDraw.dir/serial/src/cppLib/lib.cpp.obj
dualDraw.exe: CMakeFiles/dualDraw.dir/serial/src/crashAnalyzer/analyze.cpp.obj
dualDraw.exe: CMakeFiles/dualDraw.dir/serial/src/crashAnalyzer/buffer.cpp.obj
dualDraw.exe: CMakeFiles/dualDraw.dir/serial/src/serial/shared.cpp.obj
dualDraw.exe: CMakeFiles/dualDraw.dir/serial/src/serial/packet.cpp.obj
dualDraw.exe: CMakeFiles/dualDraw.dir/protocol/src/protocol/protocol.cpp.obj
dualDraw.exe: CMakeFiles/dualDraw.dir/protocol/src/protocol/messageType.cpp.obj
dualDraw.exe: CMakeFiles/dualDraw.dir/serial/src/serial/win.cpp.obj
dualDraw.exe: CMakeFiles/dualDraw.dir/build.make
dualDraw.exe: _deps/ftxui-build/ftxui-screen.a
dualDraw.exe: _deps/ftxui-build/ftxui-dom.a
dualDraw.exe: _deps/ftxui-build/ftxui-component.a
dualDraw.exe: _deps/ftxui-build/ftxui-dom.a
dualDraw.exe: _deps/ftxui-build/ftxui-screen.a
dualDraw.exe: CMakeFiles/dualDraw.dir/linkLibs.rsp
dualDraw.exe: CMakeFiles/dualDraw.dir/objects1
dualDraw.exe: CMakeFiles/dualDraw.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\marti\Github\DualDraw\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable dualDraw.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\dualDraw.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dualDraw.dir/build: dualDraw.exe
.PHONY : CMakeFiles/dualDraw.dir/build

CMakeFiles/dualDraw.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\dualDraw.dir\cmake_clean.cmake
.PHONY : CMakeFiles/dualDraw.dir/clean

CMakeFiles/dualDraw.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\marti\Github\DualDraw C:\Users\marti\Github\DualDraw C:\Users\marti\Github\DualDraw\cmake-build-debug C:\Users\marti\Github\DualDraw\cmake-build-debug C:\Users\marti\Github\DualDraw\cmake-build-debug\CMakeFiles\dualDraw.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/dualDraw.dir/depend

