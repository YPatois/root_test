cmake_minimum_required(VERSION 3.15...4.1)

project(unTest LANGUAGES CXX)

# Finding the ROOT package
## [find_package]
find_package(ROOT CONFIG REQUIRED COMPONENTS MathMore)
## [find_package]

include(GNUInstallDirs)
set(CMAKE_INSTALL_LIBDIR ${CMAKE_INSTALL_LIBDIR}/unTest)
set(CMAKE_INSTALL_INCLUDEDIR ${CMAKE_INSTALL_INCLUDEDIR}/unTest)

#FILE(GLOB HFILES TT*.h)

root_generate_dictionary(G__unTestDict TTAB.h TTAC.h LINKDEF unTestClassesLinkDef.h MODULE unTest)
add_library(unTest SHARED TTAB.cxx TTAC.cxx G__unTestDict.cxx)
target_include_directories(unTest PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}")
set_target_properties(unTest PROPERTIES PUBLIC_HEADER "TTAB.h;TTAC.h")
target_link_libraries(unTest PUBLIC ROOT::Core)

install(TARGETS unTest
    PUBLIC_HEADER DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})
install(FILES ${CMAKE_BINARY_DIR}/libunTest_rdict.pcm  ${CMAKE_BINARY_DIR}/libunTest.rootmap DESTINATION ${CMAKE_INSTALL_LIBDIR})