# --------------- Compiled Library -----------------------
add_executable(sl_sandbox app.cpp)
target_link_libraries(sl_sandbox PRIVATE stellar_libs::stellarlibs)
