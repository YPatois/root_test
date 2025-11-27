cmake_minimum_required(VERSION 3.15...4.1)

project(unTest LANGUAGES CXX)

# Finding the ROOT package
#---ROOT libraries/modules needed by our classes
set(rootLibsToLink MathCore)

## [find_package]
find_package(ROOT CONFIG REQUIRED ${rootLibsToLink})
## [find_package]
include(${ROOT_USE_FILE})

include(GNUInstallDirs)
set(CMAKE_INSTALL_LIBDIR ${CMAKE_INSTALL_LIBDIR}/unTest)
set(CMAKE_INSTALL_INCLUDEDIR ${CMAKE_INSTALL_INCLUDEDIR}/unTest)
add_subdirectory(main)
