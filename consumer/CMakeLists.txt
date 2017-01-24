cmake_minimum_required (VERSION 2.8.11)
project (consumer)

SET(CMAKE_INSTALL_PREFIX "${CMAKE_SOURCE_DIR}/install/" CACHE PATH "installation prefix")

set(PRODUCER_INSTALL_PREFIX "${CMAKE_SOURCE_DIR}/../producer/install/" CACHE PATH "Generator install prefix")
include("${PRODUCER_INSTALL_PREFIX}/cmake/package_config.cmake")

add_definitions(-DCONFIGURATION_A=\"${CONFIGURATION_A}\")
add_definitions(-DCONFIGURATION_B=\"${CONFIGURATION_B}\")

add_executable(consumer main.cpp)

install(TARGETS consumer DESTINATION bin)
