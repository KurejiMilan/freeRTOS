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
CMAKE_SOURCE_DIR = /home/milan-rayee/esp-idf/components/bootloader/subproject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/milan-rayee/esp-idf/projects/blink-led/build/bootloader

# Utility rule file for size-components.

# Include any custom commands dependencies for this target.
include CMakeFiles/size-components.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/size-components.dir/progress.make

CMakeFiles/size-components: bootloader.map
	/usr/bin/cmake -D "IDF_SIZE_TOOL=/home/milan-rayee/.espressif/python_env/idf5.4_py3.12_env/bin/python;-m;esp_idf_size" -D IDF_SIZE_MODE=--archives -D MAP_FILE=/home/milan-rayee/esp-idf/projects/blink-led/build/bootloader/bootloader.map -D OUTPUT_JSON= -P /home/milan-rayee/esp-idf/tools/cmake/run_size_tool.cmake

size-components: CMakeFiles/size-components
size-components: CMakeFiles/size-components.dir/build.make
.PHONY : size-components

# Rule to build all files generated by this target.
CMakeFiles/size-components.dir/build: size-components
.PHONY : CMakeFiles/size-components.dir/build

CMakeFiles/size-components.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/size-components.dir/cmake_clean.cmake
.PHONY : CMakeFiles/size-components.dir/clean

CMakeFiles/size-components.dir/depend:
	cd /home/milan-rayee/esp-idf/projects/blink-led/build/bootloader && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/milan-rayee/esp-idf/components/bootloader/subproject /home/milan-rayee/esp-idf/components/bootloader/subproject /home/milan-rayee/esp-idf/projects/blink-led/build/bootloader /home/milan-rayee/esp-idf/projects/blink-led/build/bootloader /home/milan-rayee/esp-idf/projects/blink-led/build/bootloader/CMakeFiles/size-components.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/size-components.dir/depend

