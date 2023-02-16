add_library(math )

target_sources(math
        PRIVATE
        LinearSystemSolver.cpp
        PUBLIC
        ${CMAKE_CURRENT_LIST_DIR}/LinearSystemSolver.h
        )

target_link_libraries(math PRIVATE eigen spdlog::spdlog)
