# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/milan-rayee/esp-idf/projects/blink-led

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/milan-rayee/esp-idf/projects/blink-led/build

# Utility rule file for uf2.

# Include any custom commands dependencies for this target.
include CMakeFiles/uf2.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/uf2.dir/progress.make

CMakeFiles/uf2:
	cd /home/milan-rayee/esp-idf/components/esptool_py && /usr/bin/cmake -D IDF_PATH=/home/milan-rayee/esp-idf -D "SERIAL_TOOL=/home/milan-rayee/.espressif/python_env/idf5.4_py3.12_env/bin/python;/home/milan-rayee/esp-idf/tools/mkuf2.py;write;--chip;esp32" -D "SERIAL_TOOL_ARGS=--json;/home/milan-rayee/esp-idf/projects/blink-led/build/flasher_args.json;-o;/home/milan-rayee/esp-idf/projects/blink-led/build/uf2.bin" -P run_serial_tool.cmake

uf2: CMakeFiles/uf2
uf2: CMakeFiles/uf2.dir/build.make
.PHONY : uf2

# Rule to build all files generated by this target.
CMakeFiles/uf2.dir/build: uf2
.PHONY : CMakeFiles/uf2.dir/build

CMakeFiles/uf2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/uf2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/uf2.dir/clean

CMakeFiles/uf2.dir/depend:
	cd /home/milan-rayee/esp-idf/projects/blink-led/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/milan-rayee/esp-idf/projects/blink-led /home/milan-rayee/esp-idf/projects/blink-led /home/milan-rayee/esp-idf/projects/blink-led/build /home/milan-rayee/esp-idf/projects/blink-led/build /home/milan-rayee/esp-idf/projects/blink-led/build/CMakeFiles/uf2.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/uf2.dir/depend

