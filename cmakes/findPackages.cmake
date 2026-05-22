include(FetchContent)

if(BOOSTPOSIXREGEX)
    set(BOOST_REGEX_STANDALONE ON CACHE BOOL "" FORCE)
    FetchContent_Declare(
        BoostRegex
        GIT_REPOSITORY https://github.com/boostorg/regex.git
    )
    FetchContent_MakeAvailable(BoostRegex)
        
endif()
