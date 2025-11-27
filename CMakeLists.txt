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

root_generate_dictionary(G__unTestDict TTAB.h TTAC.h LINKDEF unTestClassesLinkDef.h MODULE unTest)
add_library(unTest SHARED TTAB.cxx TTAC.cxx TTAB.h TTAC.h G__unTestDict.cxx)
target_include_directories(unTest PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}")
target_link_libraries(unTest PUBLIC ROOT::Core)

install(TARGETS RootLessSimpleExample)
