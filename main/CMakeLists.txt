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

install(FILES ${CMAKE_BINARY_DIR}/main/libunTest_rdict.pcm 
    ${CMAKE_BINARY_DIR}/main/libunTest.rootmap DESTINATION
    ${CMAKE_INSTALL_LIBDIR})
