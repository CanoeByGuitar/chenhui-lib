set(CMAKE_Fortran_COMPILER "/Users/wangchenhui/brew-2.2.2/bin/gfortran")
set(CMAKE_Fortran_COMPILER_ARG1 "")
set(CMAKE_Fortran_COMPILER_ID "GNU")
set(CMAKE_Fortran_COMPILER_VERSION "11.3.0")
set(CMAKE_Fortran_COMPILER_WRAPPER "")
set(CMAKE_Fortran_PLATFORM_ID "")
set(CMAKE_Fortran_SIMULATE_ID "")
set(CMAKE_Fortran_SIMULATE_VERSION "")


set(CMAKE_Fortran_COMPILER_SYSROOT "/Library/Developer/CommandLineTools/SDKs/MacOSX11.sdk/usr")
set(CMAKE_COMPILER_SYSROOT "/Library/Developer/CommandLineTools/SDKs/MacOSX11.sdk/usr")

set(CMAKE_AR "/usr/bin/ar")
set(CMAKE_Fortran_COMPILER_AR "/Users/wangchenhui/brew-2.2.2/bin/gcc-ar-11")
set(CMAKE_RANLIB "/usr/bin/ranlib")
set(CMAKE_Fortran_COMPILER_RANLIB "/Users/wangchenhui/brew-2.2.2/bin/gcc-ranlib-11")
set(CMAKE_COMPILER_IS_GNUG77 1)
set(CMAKE_Fortran_COMPILER_LOADED 1)
set(CMAKE_Fortran_COMPILER_WORKS TRUE)
set(CMAKE_Fortran_ABI_COMPILED TRUE)
set(CMAKE_COMPILER_IS_MINGW )
set(CMAKE_COMPILER_IS_CYGWIN )
if(CMAKE_COMPILER_IS_CYGWIN)
  set(CYGWIN 1)
  set(UNIX 1)
endif()

set(CMAKE_Fortran_COMPILER_ENV_VAR "FC")

set(CMAKE_Fortran_COMPILER_SUPPORTS_F90 1)

if(CMAKE_COMPILER_IS_MINGW)
  set(MINGW 1)
endif()
set(CMAKE_Fortran_COMPILER_ID_RUN 1)
set(CMAKE_Fortran_SOURCE_FILE_EXTENSIONS f;F;fpp;FPP;f77;F77;f90;F90;for;For;FOR;f95;F95)
set(CMAKE_Fortran_IGNORE_EXTENSIONS h;H;o;O;obj;OBJ;def;DEF;rc;RC)
set(CMAKE_Fortran_LINKER_PREFERENCE 20)
if(UNIX)
  set(CMAKE_Fortran_OUTPUT_EXTENSION .o)
else()
  set(CMAKE_Fortran_OUTPUT_EXTENSION .obj)
endif()

# Save compiler ABI information.
set(CMAKE_Fortran_SIZEOF_DATA_PTR "8")
set(CMAKE_Fortran_COMPILER_ABI "")
set(CMAKE_Fortran_LIBRARY_ARCHITECTURE "")

if(CMAKE_Fortran_SIZEOF_DATA_PTR AND NOT CMAKE_SIZEOF_VOID_P)
  set(CMAKE_SIZEOF_VOID_P "${CMAKE_Fortran_SIZEOF_DATA_PTR}")
endif()

if(CMAKE_Fortran_COMPILER_ABI)
  set(CMAKE_INTERNAL_PLATFORM_ABI "${CMAKE_Fortran_COMPILER_ABI}")
endif()

if(CMAKE_Fortran_LIBRARY_ARCHITECTURE)
  set(CMAKE_LIBRARY_ARCHITECTURE "")
endif()


set(CMAKE_Fortran_SYSROOT_FLAG "-isysroot")
set(CMAKE_Fortran_OSX_DEPLOYMENT_TARGET_FLAG "-mmacosx-version-min=")

set(CMAKE_Fortran_IMPLICIT_INCLUDE_DIRECTORIES "/Users/wangchenhui/brew-2.2.2/Cellar/gcc/11.3.0_2/lib/gcc/11/gcc/x86_64-apple-darwin20/11/finclude;/Users/wangchenhui/brew-2.2.2/Cellar/gcc/11.3.0_2/lib/gcc/11/gcc/x86_64-apple-darwin20/11/include;/Users/wangchenhui/brew-2.2.2/Cellar/gcc/11.3.0_2/lib/gcc/11/gcc/x86_64-apple-darwin20/11/include-fixed;/Library/Developer/CommandLineTools/SDKs/MacOSX12.1.sdk/usr/include")
set(CMAKE_Fortran_IMPLICIT_LINK_LIBRARIES "gfortran;emutls_w;gcc;quadmath;m;emutls_w;gcc")
set(CMAKE_Fortran_IMPLICIT_LINK_DIRECTORIES "/Users/wangchenhui/brew-2.2.2/Cellar/gcc/11.3.0_2/lib/gcc/11/gcc/x86_64-apple-darwin20/11;/Users/wangchenhui/brew-2.2.2/Cellar/gcc/11.3.0_2/lib/gcc/11/gcc;/Users/wangchenhui/brew-2.2.2/Cellar/gcc/11.3.0_2/lib/gcc/11;/Library/Developer/CommandLineTools/SDKs/MacOSX12.1.sdk/usr/lib")
set(CMAKE_Fortran_IMPLICIT_LINK_FRAMEWORK_DIRECTORIES "/Library/Developer/CommandLineTools/SDKs/MacOSX12.1.sdk/System/Library/Frameworks")
