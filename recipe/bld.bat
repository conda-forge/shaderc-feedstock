mkdir build
if errorlevel 1 exit 1
cd build
if errorlevel 1 exit 1
cmake -GNinja ^
  -DCMAKE_BUILD_TYPE=Release ^
  -DSHADERC_SKIP_TESTS=ON ^
  -DSHADERC_SKIP_EXAMPLES=ON ^
  -DSHADERC_ENABLE_SHARED_CRT=ON ^
  -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
  ..
if errorlevel 1 exit 1

ninja -j%CPU_COUNT%
if errorlevel 1 exit 1
ninja install
if errorlevel 1 exit 1
