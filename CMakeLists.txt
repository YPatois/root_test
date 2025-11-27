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

#link_directories(${ROOT_LIBRARY_DIRS})
ROOT_STANDARD_LIBRARY_PACKAGE(
        unTest
    HEADERS
        TTAB.h TTAC.h
    SOURCES
        TTAB.cxx TTAC.cxx
    DEPENDENCIES
        ${ROOT_LIBRARIES})

set_target_properties(unTest PROPERTIES PUBLIC_HEADER "TTAB.h;TTAC.h")

install(TARGETS unTest
    PUBLIC_HEADER DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})

install(FILES ${CMAKE_BINARY_DIR}/libunTest_rdict.pcm 
    ${CMAKE_BINARY_DIR}/libunTest.rootmap DESTINATION ${CMAKE_INSTALL_LIBDIR})
