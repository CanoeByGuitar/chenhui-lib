# Install script for directory: /Volumes/disk2/ChenhuiLib/external/eigen/unsupported/Eigen

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE FILE FILES
    "/Volumes/disk2/ChenhuiLib/external/eigen/unsupported/Eigen/AdolcForward"
    "/Volumes/disk2/ChenhuiLib/external/eigen/unsupported/Eigen/AlignedVector3"
    "/Volumes/disk2/ChenhuiLib/external/eigen/unsupported/Eigen/ArpackSupport"
    "/Volumes/disk2/ChenhuiLib/external/eigen/unsupported/Eigen/AutoDiff"
    "/Volumes/disk2/ChenhuiLib/external/eigen/unsupported/Eigen/BVH"
    "/Volumes/disk2/ChenhuiLib/external/eigen/unsupported/Eigen/EulerAngles"
    "/Volumes/disk2/ChenhuiLib/external/eigen/unsupported/Eigen/FFT"
    "/Volumes/disk2/ChenhuiLib/external/eigen/unsupported/Eigen/IterativeSolvers"
    "/Volumes/disk2/ChenhuiLib/external/eigen/unsupported/Eigen/KroneckerProduct"
    "/Volumes/disk2/ChenhuiLib/external/eigen/unsupported/Eigen/LevenbergMarquardt"
    "/Volumes/disk2/ChenhuiLib/external/eigen/unsupported/Eigen/MatrixFunctions"
    "/Volumes/disk2/ChenhuiLib/external/eigen/unsupported/Eigen/MoreVectorization"
    "/Volumes/disk2/ChenhuiLib/external/eigen/unsupported/Eigen/MPRealSupport"
    "/Volumes/disk2/ChenhuiLib/external/eigen/unsupported/Eigen/NonLinearOptimization"
    "/Volumes/disk2/ChenhuiLib/external/eigen/unsupported/Eigen/NumericalDiff"
    "/Volumes/disk2/ChenhuiLib/external/eigen/unsupported/Eigen/OpenGLSupport"
    "/Volumes/disk2/ChenhuiLib/external/eigen/unsupported/Eigen/Polynomials"
    "/Volumes/disk2/ChenhuiLib/external/eigen/unsupported/Eigen/Skyline"
    "/Volumes/disk2/ChenhuiLib/external/eigen/unsupported/Eigen/SparseExtra"
    "/Volumes/disk2/ChenhuiLib/external/eigen/unsupported/Eigen/SpecialFunctions"
    "/Volumes/disk2/ChenhuiLib/external/eigen/unsupported/Eigen/Splines"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE DIRECTORY FILES "/Volumes/disk2/ChenhuiLib/external/eigen/unsupported/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/unsupported/Eigen/CXX11/cmake_install.cmake")

endif()

