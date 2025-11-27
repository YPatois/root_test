cmake_minimum_required(VERSION 3.15...4.1)

project(RootLessSimpleExample LANGUAGES CXX)

# Finding the ROOT package
## [find_package]
find_package(ROOT 6.16 CONFIG REQUIRED)
## [find_package]

include(GNUInstallDirs)
set(CMAKE_INSTALL_LIBDIR ${CMAKE_INSTALL_LIBDIR}/RootLessSimpleExample)

# Adding an executable program and linking to needed ROOT libraries
## [add_and_link]
add_executable(RootLessSimpleExample LessSimpleExample.cxx)
target_link_libraries(RootLessSimpleExample PUBLIC ROOT::Physics)
## [add_and_link]

install(TARGETS RootLessSimpleExample)
