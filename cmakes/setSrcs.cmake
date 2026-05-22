




set(LISPE_CXX # Same as Makefile SOURCE
    ${CMAKE_CURRENT_SOURCE_DIR}/src/lispe.cxx
    ${CMAKE_CURRENT_SOURCE_DIR}/src/jagget.cxx
    ${CMAKE_CURRENT_SOURCE_DIR}/src/eval.cxx
    ${CMAKE_CURRENT_SOURCE_DIR}/src/elements.cxx
    ${CMAKE_CURRENT_SOURCE_DIR}/src/tools.cxx
    ${CMAKE_CURRENT_SOURCE_DIR}/src/systems.cxx
    ${CMAKE_CURRENT_SOURCE_DIR}/src/maths.cxx
    ${CMAKE_CURRENT_SOURCE_DIR}/src/strings.cxx
    ${CMAKE_CURRENT_SOURCE_DIR}/src/randoms.cxx
    ${CMAKE_CURRENT_SOURCE_DIR}/src/rgx.cxx
    ${CMAKE_CURRENT_SOURCE_DIR}/src/sockets.cxx
    ${CMAKE_CURRENT_SOURCE_DIR}/src/composing.cxx
    ${CMAKE_CURRENT_SOURCE_DIR}/src/ontology.cxx
    ${CMAKE_CURRENT_SOURCE_DIR}/src/sets.cxx
    ${CMAKE_CURRENT_SOURCE_DIR}/src/lists.cxx
    ${CMAKE_CURRENT_SOURCE_DIR}/src/dictionaries.cxx
    ${CMAKE_CURRENT_SOURCE_DIR}/src/straight_eval.cxx
    ${CMAKE_CURRENT_SOURCE_DIR}/src/tensors.cxx
    ${CMAKE_CURRENT_SOURCE_DIR}/src/functions.cxx
    ${CMAKE_CURRENT_SOURCE_DIR}/src/unify.cxx
)

set(LISPE_MAIN
    ${CMAKE_CURRENT_SOURCE_DIR}/src/jag.cxx
    ${CMAKE_CURRENT_SOURCE_DIR}/src/main.cxx
    ${CMAKE_CURRENT_SOURCE_DIR}/src/lispeditor.cxx
    ${CMAKE_CURRENT_SOURCE_DIR}/src/clipboard.cxx
)

if(WIN32)
    list(APPEND LISPE_CXX
        ${CMAKE_CURRENT_SOURCE_DIR}/src/jagwin.cxx
    )

endif(WIN32)



set(LISPE_JAG
    ${CMAKE_CURRENT_SOURCE_DIR}/src/jagmain.cxx
    ${CMAKE_CURRENT_SOURCE_DIR}/src/jag.cxx
    ${CMAKE_CURRENT_SOURCE_DIR}/src/jagget.cxx
    ${CMAKE_CURRENT_SOURCE_DIR}/src/jagrgx.cxx
    ${CMAKE_CURRENT_SOURCE_DIR}/src/jagtools.cxx
    ${CMAKE_CURRENT_SOURCE_DIR}/src/clipboard.cxx
)

set(LISPE_TEST_EMJ
    ${CMAKE_CURRENT_SOURCE_DIR}/src/testemoji.cxx
)