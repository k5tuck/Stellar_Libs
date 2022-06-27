cmake_minimum_required (VERSION 3.14.0...3.22.0)

# ---------------------------- Project Start ---------------------------------------
include(cmake/version.cmake)
include(cmake/ide.cmake)

project (stellarlibs VERSION ${STELLARLIBS_VERSION} LANGUAGES CXX)
message(STATUS "Building stellarlibs: ${STELLARLIBS_VERSION}")

# ------------------------- Set Language Standard -----------------------------------
if(NOT CMAKE_CXX_STANDARD)
    set(CMAKE_CXX_STANDARD 14)
    set(CMAKE_CXX_STANDARD_REQUIRED ON)
elseif(CMAKE_CXX_STANDARD LESS 14)
    message(FATAL_ERROR "CMAKE_CXX_STANDARD should be 14 or higer")
endif() 

# ------------------------- Compiled Version --------------------------
add_library(stellarlibs STATIC ${STELLARLIBS_ALL_HEADERS}) # Add Source Files
add_library(stellarlibs::stellarlibs ALIAS stellarlibs)

#target_compile_definitions(stellarlibs PUBLIC STELLARLIBS_COMPILED_LIB)
target_include_directories(stellarlibs PUBLIC "$<BUILD_INTERFACE:${CMAKE_CURRENT_LIST_DIR}/include>"
                                         "$<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>")

# ------ Link Extra Libs Here -------
# target_link_libraries(stellarlibs PUBLIC )
# -----------------------------------

set_target_properties(stellarlibs PROPERTIES VERSION ${STELLARLIBS_VERSION} SOVERSION ${STELLARLIBS_VERSION_MAJOR})

# ------------------------- Header Only Version --------------------------
add_library(stellarlibs_header_only INTERFACE)
add_library(stellarlibs::stellarlibs_header_only ALIAS stellarlibs_header_only)

target_include_directories(stellarlibs_header_only INTERFACE "$<BUILD_INTERFACE:${CMAKE_CURRENT_LIST_DIR}/include>"
                                                        "$<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>")

# ------ Link Extra Libs Here -------
# target_link_libraries(stellarlibs_header_only INTERFACE )
# -----------------------------------
