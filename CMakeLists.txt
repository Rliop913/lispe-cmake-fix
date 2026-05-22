include(cmakes/SetAndOptions.cmake)

cmake_minimum_required(VERSION 3.12)
project(
  LispE
  VERSION 0.1
  LANGUAGES C CXX)

if(WIN32)
    # related to jagget.h:109 to 123 c++11 narrowing errors.
    if(CMAKE_CXX_COMPILER_ID STREQUAL "Clang")
        add_compile_definitions(WIN32) #WIN32 flag can be undefined on clang-cl based build environment
        if(CMAKE_CXX_COMPILER_FRONTEND_VARIANT STREQUAL "MSVC")
            # clang-cl
            add_compile_options(/clang:-Wno-c++11-narrowing)
        else()
            # clang++
            add_compile_options(-Wno-c++11-narrowing)
        endif()
    elseif(CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
        add_compile_options(-Wno-narrowing)
    elseif(CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
        add_compile_options(/wd4838)
    endif()
endif(WIN32)

include(cmakes/findPackages.cmake)
include(cmakes/includes.cmake)
include(cmakes/setSrcs.cmake)

if(POSIXREGEX)
    add_compile_definitions(POSIXREGEX)
endif(POSIXREGEX)

if(BOOSTPOSIXREGEX)
    add_compile_definitions(BOOSTPOSIXREGEX)

endif(BOOSTPOSIXREGEX)



if(LISPE_DYNAMIC)#library output related



endif(LISPE_DYNAMIC)



if(LISPE_EXECUTABLE)#executable build

add_executable(
    lispe
    ${LISPE_CXX}
    ${LISPE_MAIN}
)


target_include_directories(lispe PRIVATE ${LISPE_INCLUDES})

if(BOOSTPOSIXREGEX)
    target_link_libraries(lispe PRIVATE Boost::regex)
    target_compile_definitions(lispe PRIVATE BOOSTPOSIXREGEX)

endif(BOOSTPOSIXREGEX)

if(WIN32)
target_link_libraries(lispe PRIVATE 
ws2_32 #links winSocket
)
endif(WIN32)
if(UNIX)
target_compile_definitions(lispe PRIVATE UNIX)
endif(UNIX)

if(APPLE)
target_compile_definitions(lispe PRIVATE APPLE)
endif(APPLE)

if(LINUX)
    find_package(Threads REQUIRED)
    target_link_libraries(lispe PRIVATE Threads::Threads ${CMAKE_DL_LIBS})
endif(LINUX)

endif(LISPE_EXECUTABLE)

# add_executable(
    #     LISPE_REPL
    #     ${REPL_SRCS}
    # )
    


if(LISPE_TEST)#build lispe tests
    
endif(LISPE_TEST)




if(LISPE_INSTALL)
    
endif(LISPE_INSTALL)
