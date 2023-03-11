add_executable(myrenderer main.cpp Vec3.h Ray.h Camera.h Geometry.h Material.h)


#add_executable(vectest test/VecTest.cpp )
#add_executable(raycircle  test/RayCircleIntersect.cpp)
#add_executable(raytriangle  test/RayTriIntersect.cpp)
#add_executable(raypoly  test/RayPolygonIntersect.cpp)

file(GLOB SOURCES "./test/*.cpp")
foreach(SOURCE ${SOURCES})
    get_filename_component(FILENAME ${SOURCE} NAME)
    get_filename_component(FILENAME_WE ${SOURCE} NAME_WE)
    message("Filename without ext:" ${FILENAME_WE})
    add_executable(${FILENAME_WE} ./test/${FILENAME})
endforeach()
