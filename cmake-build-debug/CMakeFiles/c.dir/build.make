# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /cygdrive/c/Users/85387/.CLion2017.2/system/cygwin_cmake/bin/cmake.exe

# The command to remove a file.
RM = /cygdrive/c/Users/85387/.CLion2017.2/system/cygwin_cmake/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /cygdrive/e/c

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cygdrive/e/c/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/c.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/c.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/c.dir/flags.make

CMakeFiles/c.dir/exp3/BinaryTree.c.o: CMakeFiles/c.dir/flags.make
CMakeFiles/c.dir/exp3/BinaryTree.c.o: ../exp3/BinaryTree.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/e/c/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/c.dir/exp3/BinaryTree.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/c.dir/exp3/BinaryTree.c.o   -c /cygdrive/e/c/exp3/BinaryTree.c

CMakeFiles/c.dir/exp3/BinaryTree.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/c.dir/exp3/BinaryTree.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/e/c/exp3/BinaryTree.c > CMakeFiles/c.dir/exp3/BinaryTree.c.i

CMakeFiles/c.dir/exp3/BinaryTree.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/c.dir/exp3/BinaryTree.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/e/c/exp3/BinaryTree.c -o CMakeFiles/c.dir/exp3/BinaryTree.c.s

CMakeFiles/c.dir/exp3/BinaryTree.c.o.requires:

.PHONY : CMakeFiles/c.dir/exp3/BinaryTree.c.o.requires

CMakeFiles/c.dir/exp3/BinaryTree.c.o.provides: CMakeFiles/c.dir/exp3/BinaryTree.c.o.requires
	$(MAKE) -f CMakeFiles/c.dir/build.make CMakeFiles/c.dir/exp3/BinaryTree.c.o.provides.build
.PHONY : CMakeFiles/c.dir/exp3/BinaryTree.c.o.provides

CMakeFiles/c.dir/exp3/BinaryTree.c.o.provides.build: CMakeFiles/c.dir/exp3/BinaryTree.c.o


# Object files for target c
c_OBJECTS = \
"CMakeFiles/c.dir/exp3/BinaryTree.c.o"

# External object files for target c
c_EXTERNAL_OBJECTS =

c.exe: CMakeFiles/c.dir/exp3/BinaryTree.c.o
c.exe: CMakeFiles/c.dir/build.make
c.exe: CMakeFiles/c.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cygdrive/e/c/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable c.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/c.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/c.dir/build: c.exe

.PHONY : CMakeFiles/c.dir/build

CMakeFiles/c.dir/requires: CMakeFiles/c.dir/exp3/BinaryTree.c.o.requires

.PHONY : CMakeFiles/c.dir/requires

CMakeFiles/c.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/c.dir/cmake_clean.cmake
.PHONY : CMakeFiles/c.dir/clean

CMakeFiles/c.dir/depend:
	cd /cygdrive/e/c/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/e/c /cygdrive/e/c /cygdrive/e/c/cmake-build-debug /cygdrive/e/c/cmake-build-debug /cygdrive/e/c/cmake-build-debug/CMakeFiles/c.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/c.dir/depend

