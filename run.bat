@echo off
:: Create a build directory
::mkdir build
cd build
::cmake .. 
::cmake --build . 
cd Debug
win32dx11.exe
pause