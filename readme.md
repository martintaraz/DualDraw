# how to compile

## windows:

use clion and the bundled Cmake + MingW

This project will most likely NOT compile on the VisualStudio Toolchain (illeagal conversion from string to char* in the protocal) or out of the box MingW (missing thread pool implementation needed for the UI component)

## macOS:

cmake + gcc

# known issues

application crashes from time to time due to asynchronous access on the event queue.

For the time being, just restart and try again