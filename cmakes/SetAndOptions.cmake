set(CMAKE_POSITION_INDEPENDENT_CODE ON)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(cmake_cxx_flags -std=c++20)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
#Use cxx20

find_program(CCACHE_PROG ccache)#set ccache
if(CCACHE_PROG)
    set(CCACHE_TMPDIR "${CMAKE_BINARY_DIR}/.ccache-tmp")
    file(MAKE_DIRECTORY "${CCACHE_TMPDIR}")
    set(
        CCACHE_LAUNCHER
        ${CMAKE_COMMAND}
        -E
        env
        "CCACHE_TEMPDIR=${CCACHE_TMPDIR}"
        ${CCACHE_PROG}
    )
    set(CMAKE_C_COMPILER_LAUNCHER ${CCACHE_LAUNCHER})
    set(CMAKE_CXX_COMPILER_LAUNCHER ${CCACHE_LAUNCHER})
endif()

option(LISPE_DYNAMIC "Build LispE With Dynamic Library" OFF)
option(LISPE_TEST "Build LispE Tests" ON)
option(LISPE_INSTALL "Install LispE" ON)
option(LISPE_EXECUTABLE "Build LispE Executable Files" ON)
option(POSIXREGEX "Enable standard regex" ON)
option(BOOSTPOSIXREGEX "Enable Boost regex" ON)
