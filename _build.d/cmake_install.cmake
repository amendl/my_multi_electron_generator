# Install script for directory: /sps/nemo/scratch/amendl/AI/ExAegir

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/sps/nemo/scratch/amendl/AI/ExAegir/_install.d")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libexaegir.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libexaegir.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libexaegir.so"
         RPATH "/sps/nemo/sw/snsw/2023/opt/falaise-5.1.0/lib64:/sps/nemo/sw/snsw/2023/opt/bayeux-3.5.4/lib64:/sps/nemo/sw/BxCppDev/opt/boost-1.71.0/lib:/sps/nemo/sw/snsw/opt/camp-0.8.4/lib:/sps/nemo/sw/BxCppDev/opt/clhep-2.1.3.1/lib:/sps/nemo/sw/snsw/opt/root-6.16.00/lib/root:/sps/nemo/sw/snsw/opt/bxdecay0-1.1.0/lib64:/sps/nemo/sw/BxCppDev/opt/gsl-2.4/lib:/sps/nemo/sw/snsw/2023/opt/snrs-1.1/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE SHARED_LIBRARY FILES "/sps/nemo/scratch/amendl/AI/ExAegir/_build.d/libexaegir.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libexaegir.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libexaegir.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libexaegir.so"
         OLD_RPATH "/sps/nemo/sw/snsw/2023/opt/falaise-5.1.0/lib64:/sps/nemo/sw/snsw/2023/opt/bayeux-3.5.4/lib64:/sps/nemo/sw/BxCppDev/opt/boost-1.71.0/lib:/sps/nemo/sw/snsw/opt/camp-0.8.4/lib:/sps/nemo/sw/BxCppDev/opt/clhep-2.1.3.1/lib:/sps/nemo/sw/snsw/opt/root-6.16.00/lib/root:/sps/nemo/sw/snsw/opt/bxdecay0-1.1.0/lib64:/sps/nemo/sw/BxCppDev/opt/gsl-2.4/lib:/sps/nemo/sw/snsw/2023/opt/snrs-1.1/lib:"
         NEW_RPATH "/sps/nemo/sw/snsw/2023/opt/falaise-5.1.0/lib64:/sps/nemo/sw/snsw/2023/opt/bayeux-3.5.4/lib64:/sps/nemo/sw/BxCppDev/opt/boost-1.71.0/lib:/sps/nemo/sw/snsw/opt/camp-0.8.4/lib:/sps/nemo/sw/BxCppDev/opt/clhep-2.1.3.1/lib:/sps/nemo/sw/snsw/opt/root-6.16.00/lib/root:/sps/nemo/sw/snsw/opt/bxdecay0-1.1.0/lib64:/sps/nemo/sw/BxCppDev/opt/gsl-2.4/lib:/sps/nemo/sw/snsw/2023/opt/snrs-1.1/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libexaegir.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/runexaegir" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/runexaegir")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/runexaegir"
         RPATH "$ORIGIN/../lib64:/sps/nemo/sw/snsw/2023/opt/falaise-5.1.0/lib64:/sps/nemo/sw/snsw/2023/opt/bayeux-3.5.4/lib64:/sps/nemo/sw/BxCppDev/opt/boost-1.71.0/lib:/sps/nemo/sw/snsw/opt/camp-0.8.4/lib:/sps/nemo/sw/BxCppDev/opt/clhep-2.1.3.1/lib:/sps/nemo/sw/snsw/opt/root-6.16.00/lib/root:/sps/nemo/sw/snsw/opt/bxdecay0-1.1.0/lib64:/sps/nemo/sw/BxCppDev/opt/gsl-2.4/lib:/sps/nemo/sw/snsw/2023/opt/snrs-1.1/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/sps/nemo/scratch/amendl/AI/ExAegir/_build.d/runexaegir")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/runexaegir" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/runexaegir")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/runexaegir"
         OLD_RPATH "/sps/nemo/scratch/amendl/AI/ExAegir/_build.d:/sps/nemo/sw/snsw/2023/opt/falaise-5.1.0/lib64:/sps/nemo/sw/snsw/2023/opt/bayeux-3.5.4/lib64:/sps/nemo/sw/BxCppDev/opt/boost-1.71.0/lib:/sps/nemo/sw/snsw/opt/camp-0.8.4/lib:/sps/nemo/sw/BxCppDev/opt/clhep-2.1.3.1/lib:/sps/nemo/sw/snsw/opt/root-6.16.00/lib/root:/sps/nemo/sw/snsw/opt/bxdecay0-1.1.0/lib64:/sps/nemo/sw/BxCppDev/opt/gsl-2.4/lib:/sps/nemo/sw/snsw/2023/opt/snrs-1.1/lib:"
         NEW_RPATH "$ORIGIN/../lib64:/sps/nemo/sw/snsw/2023/opt/falaise-5.1.0/lib64:/sps/nemo/sw/snsw/2023/opt/bayeux-3.5.4/lib64:/sps/nemo/sw/BxCppDev/opt/boost-1.71.0/lib:/sps/nemo/sw/snsw/opt/camp-0.8.4/lib:/sps/nemo/sw/BxCppDev/opt/clhep-2.1.3.1/lib:/sps/nemo/sw/snsw/opt/root-6.16.00/lib/root:/sps/nemo/sw/snsw/opt/bxdecay0-1.1.0/lib64:/sps/nemo/sw/BxCppDev/opt/gsl-2.4/lib:/sps/nemo/sw/snsw/2023/opt/snrs-1.1/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/runexaegir")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/exaegir-1.0.0" TYPE DIRECTORY FILES "/sps/nemo/scratch/amendl/AI/ExAegir/resources/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES "/sps/nemo/scratch/amendl/AI/ExAegir/_build.d/exaegir-config")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/sps/nemo/scratch/amendl/AI/ExAegir/_build.d/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
