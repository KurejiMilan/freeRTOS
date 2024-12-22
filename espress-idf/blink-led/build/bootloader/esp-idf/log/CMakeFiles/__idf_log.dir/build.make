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

# Include any dependencies generated for this target.
include esp-idf/log/CMakeFiles/__idf_log.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include esp-idf/log/CMakeFiles/__idf_log.dir/compiler_depend.make

# Include the progress variables for this target.
include esp-idf/log/CMakeFiles/__idf_log.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/log/CMakeFiles/__idf_log.dir/flags.make

esp-idf/log/CMakeFiles/__idf_log.dir/src/noos/log_timestamp.c.obj: esp-idf/log/CMakeFiles/__idf_log.dir/flags.make
esp-idf/log/CMakeFiles/__idf_log.dir/src/noos/log_timestamp.c.obj: /home/milan-rayee/esp-idf/components/log/src/noos/log_timestamp.c
esp-idf/log/CMakeFiles/__idf_log.dir/src/noos/log_timestamp.c.obj: esp-idf/log/CMakeFiles/__idf_log.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/milan-rayee/esp-idf/projects/blink-led/build/bootloader/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/log/CMakeFiles/__idf_log.dir/src/noos/log_timestamp.c.obj"
	cd /home/milan-rayee/esp-idf/projects/blink-led/build/bootloader/esp-idf/log && /home/milan-rayee/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/log/CMakeFiles/__idf_log.dir/src/noos/log_timestamp.c.obj -MF CMakeFiles/__idf_log.dir/src/noos/log_timestamp.c.obj.d -o CMakeFiles/__idf_log.dir/src/noos/log_timestamp.c.obj -c /home/milan-rayee/esp-idf/components/log/src/noos/log_timestamp.c

esp-idf/log/CMakeFiles/__idf_log.dir/src/noos/log_timestamp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_log.dir/src/noos/log_timestamp.c.i"
	cd /home/milan-rayee/esp-idf/projects/blink-led/build/bootloader/esp-idf/log && /home/milan-rayee/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/milan-rayee/esp-idf/components/log/src/noos/log_timestamp.c > CMakeFiles/__idf_log.dir/src/noos/log_timestamp.c.i

esp-idf/log/CMakeFiles/__idf_log.dir/src/noos/log_timestamp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_log.dir/src/noos/log_timestamp.c.s"
	cd /home/milan-rayee/esp-idf/projects/blink-led/build/bootloader/esp-idf/log && /home/milan-rayee/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/milan-rayee/esp-idf/components/log/src/noos/log_timestamp.c -o CMakeFiles/__idf_log.dir/src/noos/log_timestamp.c.s

esp-idf/log/CMakeFiles/__idf_log.dir/src/log_timestamp_common.c.obj: esp-idf/log/CMakeFiles/__idf_log.dir/flags.make
esp-idf/log/CMakeFiles/__idf_log.dir/src/log_timestamp_common.c.obj: /home/milan-rayee/esp-idf/components/log/src/log_timestamp_common.c
esp-idf/log/CMakeFiles/__idf_log.dir/src/log_timestamp_common.c.obj: esp-idf/log/CMakeFiles/__idf_log.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/milan-rayee/esp-idf/projects/blink-led/build/bootloader/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/log/CMakeFiles/__idf_log.dir/src/log_timestamp_common.c.obj"
	cd /home/milan-rayee/esp-idf/projects/blink-led/build/bootloader/esp-idf/log && /home/milan-rayee/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/log/CMakeFiles/__idf_log.dir/src/log_timestamp_common.c.obj -MF CMakeFiles/__idf_log.dir/src/log_timestamp_common.c.obj.d -o CMakeFiles/__idf_log.dir/src/log_timestamp_common.c.obj -c /home/milan-rayee/esp-idf/components/log/src/log_timestamp_common.c

esp-idf/log/CMakeFiles/__idf_log.dir/src/log_timestamp_common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_log.dir/src/log_timestamp_common.c.i"
	cd /home/milan-rayee/esp-idf/projects/blink-led/build/bootloader/esp-idf/log && /home/milan-rayee/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/milan-rayee/esp-idf/components/log/src/log_timestamp_common.c > CMakeFiles/__idf_log.dir/src/log_timestamp_common.c.i

esp-idf/log/CMakeFiles/__idf_log.dir/src/log_timestamp_common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_log.dir/src/log_timestamp_common.c.s"
	cd /home/milan-rayee/esp-idf/projects/blink-led/build/bootloader/esp-idf/log && /home/milan-rayee/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/milan-rayee/esp-idf/components/log/src/log_timestamp_common.c -o CMakeFiles/__idf_log.dir/src/log_timestamp_common.c.s

esp-idf/log/CMakeFiles/__idf_log.dir/src/noos/log_lock.c.obj: esp-idf/log/CMakeFiles/__idf_log.dir/flags.make
esp-idf/log/CMakeFiles/__idf_log.dir/src/noos/log_lock.c.obj: /home/milan-rayee/esp-idf/components/log/src/noos/log_lock.c
esp-idf/log/CMakeFiles/__idf_log.dir/src/noos/log_lock.c.obj: esp-idf/log/CMakeFiles/__idf_log.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/milan-rayee/esp-idf/projects/blink-led/build/bootloader/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object esp-idf/log/CMakeFiles/__idf_log.dir/src/noos/log_lock.c.obj"
	cd /home/milan-rayee/esp-idf/projects/blink-led/build/bootloader/esp-idf/log && /home/milan-rayee/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/log/CMakeFiles/__idf_log.dir/src/noos/log_lock.c.obj -MF CMakeFiles/__idf_log.dir/src/noos/log_lock.c.obj.d -o CMakeFiles/__idf_log.dir/src/noos/log_lock.c.obj -c /home/milan-rayee/esp-idf/components/log/src/noos/log_lock.c

esp-idf/log/CMakeFiles/__idf_log.dir/src/noos/log_lock.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_log.dir/src/noos/log_lock.c.i"
	cd /home/milan-rayee/esp-idf/projects/blink-led/build/bootloader/esp-idf/log && /home/milan-rayee/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/milan-rayee/esp-idf/components/log/src/noos/log_lock.c > CMakeFiles/__idf_log.dir/src/noos/log_lock.c.i

esp-idf/log/CMakeFiles/__idf_log.dir/src/noos/log_lock.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_log.dir/src/noos/log_lock.c.s"
	cd /home/milan-rayee/esp-idf/projects/blink-led/build/bootloader/esp-idf/log && /home/milan-rayee/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/milan-rayee/esp-idf/components/log/src/noos/log_lock.c -o CMakeFiles/__idf_log.dir/src/noos/log_lock.c.s

# Object files for target __idf_log
__idf_log_OBJECTS = \
"CMakeFiles/__idf_log.dir/src/noos/log_timestamp.c.obj" \
"CMakeFiles/__idf_log.dir/src/log_timestamp_common.c.obj" \
"CMakeFiles/__idf_log.dir/src/noos/log_lock.c.obj"

# External object files for target __idf_log
__idf_log_EXTERNAL_OBJECTS =

esp-idf/log/liblog.a: esp-idf/log/CMakeFiles/__idf_log.dir/src/noos/log_timestamp.c.obj
esp-idf/log/liblog.a: esp-idf/log/CMakeFiles/__idf_log.dir/src/log_timestamp_common.c.obj
esp-idf/log/liblog.a: esp-idf/log/CMakeFiles/__idf_log.dir/src/noos/log_lock.c.obj
esp-idf/log/liblog.a: esp-idf/log/CMakeFiles/__idf_log.dir/build.make
esp-idf/log/liblog.a: esp-idf/log/CMakeFiles/__idf_log.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/milan-rayee/esp-idf/projects/blink-led/build/bootloader/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C static library liblog.a"
	cd /home/milan-rayee/esp-idf/projects/blink-led/build/bootloader/esp-idf/log && $(CMAKE_COMMAND) -P CMakeFiles/__idf_log.dir/cmake_clean_target.cmake
	cd /home/milan-rayee/esp-idf/projects/blink-led/build/bootloader/esp-idf/log && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_log.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/log/CMakeFiles/__idf_log.dir/build: esp-idf/log/liblog.a
.PHONY : esp-idf/log/CMakeFiles/__idf_log.dir/build

esp-idf/log/CMakeFiles/__idf_log.dir/clean:
	cd /home/milan-rayee/esp-idf/projects/blink-led/build/bootloader/esp-idf/log && $(CMAKE_COMMAND) -P CMakeFiles/__idf_log.dir/cmake_clean.cmake
.PHONY : esp-idf/log/CMakeFiles/__idf_log.dir/clean

esp-idf/log/CMakeFiles/__idf_log.dir/depend:
	cd /home/milan-rayee/esp-idf/projects/blink-led/build/bootloader && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/milan-rayee/esp-idf/components/bootloader/subproject /home/milan-rayee/esp-idf/components/log /home/milan-rayee/esp-idf/projects/blink-led/build/bootloader /home/milan-rayee/esp-idf/projects/blink-led/build/bootloader/esp-idf/log /home/milan-rayee/esp-idf/projects/blink-led/build/bootloader/esp-idf/log/CMakeFiles/__idf_log.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : esp-idf/log/CMakeFiles/__idf_log.dir/depend

