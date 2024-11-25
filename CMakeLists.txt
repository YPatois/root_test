cmake_minimum_required (VERSION 3.21 FATAL_ERROR)
project (unTest VERSION 4.0.0)

# CMakeLists.txt in main
FIND_PACKAGE( ROOT REQUIRED COMPONENTS MathMore )
FIND_PACKAGE( GSL REQUIRED )


include(GNUInstallDirs)
set(CMAKE_INSTALL_LIBDIR ${CMAKE_INSTALL_LIBDIR}/unTest)

include(${ROOT_USE_FILE})


FILE(GLOB SRCFILES *.cxx)
FILE(GLOB HFILES TT*.h)

# That line is needed for obscure ROOT reasons (but shouldn't)
SET (CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})

add_library(unTest SHARED ${SRCFILES})
set_target_properties(unTest PROPERTIES PUBLIC_HEADER "${HFILES}")
target_link_libraries(unTest ${ROOT_LIBRARIES} GSL::gsl GSL::gslcblas)

target_include_directories(unTest PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
ROOT_GENERATE_DICTIONARY(unTestDict ${HFILES} LINKDEF unTestClassesLinkDef.h MODULE unTest)

install(TARGETS unTest
    PUBLIC_HEADER DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/${CMAKE_PROJECT_NAME})
