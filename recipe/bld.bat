:: cmd

:: Isolate the build.
mkdir Build
cd Build
if errorlevel 1 exit 1

:: Generate the build files.
cmake .. -G"Ninja" %CMAKE_ARGS% ^
    -DEXPECTED_ENABLE_TESTS=OFF ^
    -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX% ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    -DCMAKE_BUILD_TYPE=Release


:: Build and install.
ninja install
if errorlevel 1 exit 1