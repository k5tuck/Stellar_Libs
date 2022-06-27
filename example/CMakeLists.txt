
cmake_minimum_required(3.14.0...3.22.0)
project(stellarlibsExample CXX)

# --------------- Pre-compiled Library -----------------------
add_executable(stellar_example app.cpp)
target_link_libraries(stellar_example PRIVATE stellarlibs::stellarlibs)

# ------------------ Header Only Library ---------------------
if(BUILD_HEADER_ONLY_EXAMPLE)
add_executable(header_only_stellar_example app.cpp)
target_link_libraries(header_only_stellar_example PRIVATE stellarlibs::stellarlibs_header_only)
endif()
