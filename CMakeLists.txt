cmake_minimum_required (VERSION 3.14.0...3.22.0)

# ---------------------------- Project Start ------------------------------------
include(cmake/ide.cmake)

# include(cmake/version.cmake)
# project (stellarlibs VERSION ${STELLARLIBS_VERSION} LANGUAGES CXX)

project (Stellar_Libs VERSION 1.0.0 LANGUAGES CXX)
message(STATUS "Building stellarlibs: ${STELLARLIBS_VERSION}")

# ------------------------- Set Language Standard -------------------------------
if(NOT CMAKE_CXX_STANDARD)
    set(CMAKE_CXX_STANDARD 14)
    set(CMAKE_CXX_STANDARD_REQUIRED ON)
elseif(CMAKE_CXX_STANDARD LESS 14)
    message(FATAL_ERROR "CMAKE_CXX_STANDARD should be 14 or higer")
endif() 

# ---------------------------- Create Library -----------------------------------
add_library(stellarlibs STATIC ${STELLARLIBS_ALL_HEADERS} ${STELLARLIBS_SOURCE_FILES})
add_library(stellar_libs::stellarlibs ALIAS stellarlibs)

target_compile_definitions(stellarlibs PUBLIC STELLARLIBS_COMPILED_LIB)

target_include_directories(stellarlibs PUBLIC "$<BUILD_INTERFACE:${CMAKE_CURRENT_LIST_DIR}/include>"
                                              "$<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>")

set_target_properties(stellarlibs PROPERTIES LINKER_LANGUAGE CXX VERSION ${STELLARLIBS_VERSION} SOVERSION ${STELLARLIBS_VERSION_MAJOR})

# -------------------------- Link Extra Libs Here -------------------------------
target_link_libraries(stellarlibs PUBLIC )

# --------------------------- Create Sandbox ------------------------------------
add_subdirectory("${CMAKE_CURRENT_SOURCE_DIR}/example")

#-------------------------------- Testing ---------------------------------------
# enable_testing()

# add_test(NAME WindowsTest COMMAND stellarlibs)
# set_tests_properties(
#     WindowsTest
#     PROPERTIES 
# )