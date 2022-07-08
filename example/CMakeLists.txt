# --------------- Pre-compiled Library -----------------------
# add_executable(sl_sandbox app.cpp)
# target_link_libraries(sl_sandbox PRIVATE stellar_libs::stellarlibs)

# stellarlibs needs to point to source files (ie. cpp files)

# ------------------ Header Only Library ---------------------
# if(BUILD_HEADER_ONLY_EXAMPLE)
add_executable(sl_header_only_sandbox app.cpp)
target_link_libraries(sl_header_only_sandbox PRIVATE stellar_libs::stellarlibs_header_only)
# endif()
