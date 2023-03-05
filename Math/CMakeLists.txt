add_library(math )

target_sources(math
        PRIVATE
        LinearSystemSolver.cpp
        SVD.cpp
        PUBLIC
        ${CMAKE_CURRENT_LIST_DIR}/LinearSystemSolver.h
        ${CMAKE_CURRENT_LIST_DIR}/SVD.h
        )


target_link_libraries(math PRIVATE eigen spdlog::spdlog )

add_executable(testMath testMath.cpp)
target_link_libraries(testMath math)