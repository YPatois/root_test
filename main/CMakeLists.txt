if(USE_GLOB)
    file(GLOB HFILES TT*.h)
    file(GLOB SRCFILES TT*.cxx)
else()
    # Explicitly list the header and source files
    set(HFILES
        "TTAB.h"
        "TTAC.h"
    )
    set(SRCFILES
        "TTAB.cxx"
        "TTAC.cxx"
    )
endif()

ROOT_STANDARD_LIBRARY_PACKAGE(
        unTest
    HEADERS
        ${HFILES}
    SOURCES
        ${SRCFILES}
    DEPENDENCIES
        ${ROOT_LIBRARIES})

set_target_properties(unTest PROPERTIES PUBLIC_HEADER "${HFILES}")
install(TARGETS unTest
    PUBLIC_HEADER DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})

install(FILES ${CMAKE_BINARY_DIR}/main/libunTest_rdict.pcm 
    ${CMAKE_BINARY_DIR}/main/libunTest.rootmap DESTINATION
    ${CMAKE_INSTALL_LIBDIR})
