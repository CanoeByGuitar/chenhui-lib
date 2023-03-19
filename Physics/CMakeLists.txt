add_library(physics "")

target_sources(physics
        PRIVATE
        MassSpringSim.cpp
        MPM/MpmSimulationBase.cpp
        MPM/MpmGrid.cpp
        MPM/MpmParticle.cpp
        MPM/ConstitutionModel.cpp
        MPM/MpmUtils.cpp
        PUBLIC
        ${CMAKE_CURRENT_LIST_DIR}/MassSpringSim.h
        ${CMAKE_CURRENT_LIST_DIR}/MPM/MpmSimulationBase.h
        ${CMAKE_CURRENT_LIST_DIR}/MPM/MpmGrid.h
        ${CMAKE_CURRENT_LIST_DIR}/MPM/MpmParticle.h
        ${CMAKE_CURRENT_LIST_DIR}/MPM/ConstitutionModel.h
        ${CMAKE_CURRENT_LIST_DIR}/MPM/MpmUtils.h
        )

if (APPLE)
    target_link_libraries(physics PRIVATE eigen  spdlog::spdlog partio)
ELSEIF (UNIX)
    find_package(TBB CONFIG REQUIRED)
    target_link_libraries(physics PRIVATE eigen TBB::tbb spdlog::spdlog partio)
ENDIF ()

