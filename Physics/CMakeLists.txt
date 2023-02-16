add_library(physics "")

target_sources(physics
        PRIVATE
        MassSpringSim.cpp
        PUBLIC
        ${CMAKE_CURRENT_LIST_DIR}/MassSpringSim.h
)

target_link_libraries(physics PRIVATE eigen)