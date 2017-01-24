cmake_minimum_required (VERSION 2.8.11)
project (producer)

SET(CMAKE_INSTALL_PREFIX "${CMAKE_SOURCE_DIR}/install/" CACHE PATH "installation prefix")

set(CONFIGURATION_A "Some config" CACHE STRING "Configuration A")
set(CONFIGURATION_B "Some other config" CACHE STRING "Configuration B")
configure_file(package_config.cmake.in "${PROJECT_BINARY_DIR}/package_config.cmake" @ONLY)

add_definitions(-DCONFIGURATION_A=\"${CONFIGURATION_A}\")
add_definitions(-DCONFIGURATION_B=\"${CONFIGURATION_B}\")
add_executable(producer main.cpp)

install(TARGETS producer DESTINATION bin)
install(FILES ${PROJECT_BINARY_DIR}/package_config.cmake DESTINATION cmake)
