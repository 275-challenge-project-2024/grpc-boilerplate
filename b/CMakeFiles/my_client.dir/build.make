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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.28.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.28.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/subramanyajagadeesh/Downloads/CMPE 275/275-main-proj"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/subramanyajagadeesh/Downloads/CMPE 275/275-main-proj/b"

# Include any dependencies generated for this target.
include CMakeFiles/my_client.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/my_client.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/my_client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/my_client.dir/flags.make

generated/task.pb.h: /Users/subramanyajagadeesh/Downloads/CMPE\ 275/275-main-proj/task.proto
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir="/Users/subramanyajagadeesh/Downloads/CMPE 275/275-main-proj/b/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Generating generated/task.pb.h, generated/task.pb.cc, generated/task.grpc.pb.h, generated/task.grpc.pb.cc"
	/usr/local/bin/protoc-26.1.0 --grpc_out /Users/subramanyajagadeesh/Downloads/CMPE\ 275/275-main-proj/b/generated --cpp_out /Users/subramanyajagadeesh/Downloads/CMPE\ 275/275-main-proj/b/generated -I /Users/subramanyajagadeesh/Downloads/CMPE\ 275/275-main-proj --plugin=protoc-gen-grpc="/usr/local/bin/grpc_cpp_plugin" /Users/subramanyajagadeesh/Downloads/CMPE\ 275/275-main-proj/task.proto

generated/task.pb.cc: generated/task.pb.h
	@$(CMAKE_COMMAND) -E touch_nocreate generated/task.pb.cc

generated/task.grpc.pb.h: generated/task.pb.h
	@$(CMAKE_COMMAND) -E touch_nocreate generated/task.grpc.pb.h

generated/task.grpc.pb.cc: generated/task.pb.h
	@$(CMAKE_COMMAND) -E touch_nocreate generated/task.grpc.pb.cc

CMakeFiles/my_client.dir/client.cpp.o: CMakeFiles/my_client.dir/flags.make
CMakeFiles/my_client.dir/client.cpp.o: /Users/subramanyajagadeesh/Downloads/CMPE\ 275/275-main-proj/client.cpp
CMakeFiles/my_client.dir/client.cpp.o: CMakeFiles/my_client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/subramanyajagadeesh/Downloads/CMPE 275/275-main-proj/b/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/my_client.dir/client.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_client.dir/client.cpp.o -MF CMakeFiles/my_client.dir/client.cpp.o.d -o CMakeFiles/my_client.dir/client.cpp.o -c "/Users/subramanyajagadeesh/Downloads/CMPE 275/275-main-proj/client.cpp"

CMakeFiles/my_client.dir/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/my_client.dir/client.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/subramanyajagadeesh/Downloads/CMPE 275/275-main-proj/client.cpp" > CMakeFiles/my_client.dir/client.cpp.i

CMakeFiles/my_client.dir/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/my_client.dir/client.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/subramanyajagadeesh/Downloads/CMPE 275/275-main-proj/client.cpp" -o CMakeFiles/my_client.dir/client.cpp.s

CMakeFiles/my_client.dir/generated/task.pb.cc.o: CMakeFiles/my_client.dir/flags.make
CMakeFiles/my_client.dir/generated/task.pb.cc.o: generated/task.pb.cc
CMakeFiles/my_client.dir/generated/task.pb.cc.o: CMakeFiles/my_client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/subramanyajagadeesh/Downloads/CMPE 275/275-main-proj/b/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/my_client.dir/generated/task.pb.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_client.dir/generated/task.pb.cc.o -MF CMakeFiles/my_client.dir/generated/task.pb.cc.o.d -o CMakeFiles/my_client.dir/generated/task.pb.cc.o -c "/Users/subramanyajagadeesh/Downloads/CMPE 275/275-main-proj/b/generated/task.pb.cc"

CMakeFiles/my_client.dir/generated/task.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/my_client.dir/generated/task.pb.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/subramanyajagadeesh/Downloads/CMPE 275/275-main-proj/b/generated/task.pb.cc" > CMakeFiles/my_client.dir/generated/task.pb.cc.i

CMakeFiles/my_client.dir/generated/task.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/my_client.dir/generated/task.pb.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/subramanyajagadeesh/Downloads/CMPE 275/275-main-proj/b/generated/task.pb.cc" -o CMakeFiles/my_client.dir/generated/task.pb.cc.s

CMakeFiles/my_client.dir/generated/task.grpc.pb.cc.o: CMakeFiles/my_client.dir/flags.make
CMakeFiles/my_client.dir/generated/task.grpc.pb.cc.o: generated/task.grpc.pb.cc
CMakeFiles/my_client.dir/generated/task.grpc.pb.cc.o: CMakeFiles/my_client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/subramanyajagadeesh/Downloads/CMPE 275/275-main-proj/b/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/my_client.dir/generated/task.grpc.pb.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_client.dir/generated/task.grpc.pb.cc.o -MF CMakeFiles/my_client.dir/generated/task.grpc.pb.cc.o.d -o CMakeFiles/my_client.dir/generated/task.grpc.pb.cc.o -c "/Users/subramanyajagadeesh/Downloads/CMPE 275/275-main-proj/b/generated/task.grpc.pb.cc"

CMakeFiles/my_client.dir/generated/task.grpc.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/my_client.dir/generated/task.grpc.pb.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/subramanyajagadeesh/Downloads/CMPE 275/275-main-proj/b/generated/task.grpc.pb.cc" > CMakeFiles/my_client.dir/generated/task.grpc.pb.cc.i

CMakeFiles/my_client.dir/generated/task.grpc.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/my_client.dir/generated/task.grpc.pb.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/subramanyajagadeesh/Downloads/CMPE 275/275-main-proj/b/generated/task.grpc.pb.cc" -o CMakeFiles/my_client.dir/generated/task.grpc.pb.cc.s

# Object files for target my_client
my_client_OBJECTS = \
"CMakeFiles/my_client.dir/client.cpp.o" \
"CMakeFiles/my_client.dir/generated/task.pb.cc.o" \
"CMakeFiles/my_client.dir/generated/task.grpc.pb.cc.o"

# External object files for target my_client
my_client_EXTERNAL_OBJECTS =

my_client: CMakeFiles/my_client.dir/client.cpp.o
my_client: CMakeFiles/my_client.dir/generated/task.pb.cc.o
my_client: CMakeFiles/my_client.dir/generated/task.grpc.pb.cc.o
my_client: CMakeFiles/my_client.dir/build.make
my_client: /usr/local/lib/libgrpc++_reflection.1.62.2.dylib
my_client: /usr/local/lib/libgrpc++.1.62.2.dylib
my_client: /usr/local/lib/libprotobuf.26.1.0.dylib
my_client: /usr/local/lib/libabsl_log_internal_check_op.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_leak_check.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_die_if_null.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_log_internal_conditions.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_log_internal_message.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_examine_stack.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_log_internal_format.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_log_internal_proto.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_log_internal_nullguard.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_log_internal_log_sink_set.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_log_sink.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_log_entry.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_log_initialize.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_log_globals.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_vlog_config_internal.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_log_internal_fnmatch.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_log_internal_globals.2401.0.0.dylib
my_client: /usr/local/lib/libgrpc.39.0.0.dylib
my_client: /usr/local/lib/libabsl_statusor.2401.0.0.dylib
my_client: /usr/local/lib/libupb_json_lib.39.0.0.dylib
my_client: /usr/local/lib/libupb_textformat_lib.39.0.0.dylib
my_client: /usr/local/lib/libupb_message_lib.39.0.0.dylib
my_client: /usr/local/lib/libupb_base_lib.39.0.0.dylib
my_client: /usr/local/lib/libupb_mem_lib.39.0.0.dylib
my_client: /usr/local/lib/libutf8_range_lib.39.0.0.dylib
my_client: /usr/local/lib/libre2.11.0.0.dylib
my_client: /Library/Developer/CommandLineTools/SDKs/MacOSX14.2.sdk/usr/lib/libz.tbd
my_client: /usr/local/lib/libcares.2.13.1.dylib
my_client: /usr/local/lib/libgpr.39.0.0.dylib
my_client: /usr/local/lib/libabsl_flags_internal.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_flags_reflection.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_raw_hash_set.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_hash.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_city.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_low_level_hash.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_hashtablez_sampler.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_flags_config.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_flags_program_name.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_flags_private_handle_accessor.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_flags_commandlineflag.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_flags_commandlineflag_internal.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_status.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_cord.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_cordz_info.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_cord_internal.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_cordz_functions.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_exponential_biased.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_cordz_handle.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_synchronization.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_graphcycles_internal.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_kernel_timeout_internal.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_time.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_civil_time.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_time_zone.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_crc_cord_state.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_crc32c.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_crc_internal.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_crc_cpu_detect.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_stacktrace.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_symbolize.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_malloc_internal.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_debugging_internal.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_demangle_internal.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_strerror.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_bad_variant_access.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_flags_marshalling.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_str_format_internal.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_random_distributions.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_random_seed_sequences.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_random_internal_pool_urbg.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_random_internal_randen.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_random_internal_randen_hwaes.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_random_internal_randen_hwaes_impl.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_random_internal_randen_slow.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_random_internal_platform.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_random_internal_seed_material.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_strings.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_strings_internal.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_string_view.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_base.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_spinlock_wait.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_int128.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_bad_optional_access.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_throw_delegate.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_raw_logging_internal.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_log_severity.2401.0.0.dylib
my_client: /usr/local/lib/libabsl_random_seed_gen_exception.2401.0.0.dylib
my_client: /usr/local/lib/libssl.dylib
my_client: /usr/local/lib/libcrypto.dylib
my_client: /usr/local/lib/libaddress_sorting.39.0.0.dylib
my_client: CMakeFiles/my_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/Users/subramanyajagadeesh/Downloads/CMPE 275/275-main-proj/b/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable my_client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/my_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/my_client.dir/build: my_client
.PHONY : CMakeFiles/my_client.dir/build

CMakeFiles/my_client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/my_client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/my_client.dir/clean

CMakeFiles/my_client.dir/depend: generated/task.grpc.pb.cc
CMakeFiles/my_client.dir/depend: generated/task.grpc.pb.h
CMakeFiles/my_client.dir/depend: generated/task.pb.cc
CMakeFiles/my_client.dir/depend: generated/task.pb.h
	cd "/Users/subramanyajagadeesh/Downloads/CMPE 275/275-main-proj/b" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/subramanyajagadeesh/Downloads/CMPE 275/275-main-proj" "/Users/subramanyajagadeesh/Downloads/CMPE 275/275-main-proj" "/Users/subramanyajagadeesh/Downloads/CMPE 275/275-main-proj/b" "/Users/subramanyajagadeesh/Downloads/CMPE 275/275-main-proj/b" "/Users/subramanyajagadeesh/Downloads/CMPE 275/275-main-proj/b/CMakeFiles/my_client.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/my_client.dir/depend
