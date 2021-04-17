# cmakewin32directx11

# License: MIT

# Created by: Lightnet

# Packages:
 * imgui 1.82
 * Directx SDK June 2010 (optional)
 * cmake 3.20
 * Visual Studio 2019 (compiler tool builder needed)
    * c/c++
    * cmake
    * directx sdk


# Window Bit: 32

# Information:
  Note this is run on win32 bit. To build directx 11 to used imgui to display user interface. There are two chose that is Directx version. One is the Directx SDK June 2010 and the other is Visual Studio 2019 with directx sdk.

# build:
 * install cmake
 * install visual studio 2019
    * c/c++
    * directx sdk
    * cmake
```cmake
set(ENABLE_DXSDK OFF) # Directx SDK june 2010
set(ENABLE_WINDXSDK ON) # Windows Kits 10
set(WINDOWKIT_VERSION 10) # folder
set(WINDOWKIT_VERSION_UPDATE 10.0.19041.0) #sub folders
set(WINDOW_BIT x86) # arm, arm64, x64, x86
# x86 = win 32 bit
# x64 = win 64 bit
```
  Those are basic settings in CMakeLists.txt

  The example is from https://github.com/ocornut/imgui/tree/master/examples/example_win32_directx11
```bat
:: Create a build directory
mkdir build 
cd build
:: cmake config CMakeLists.txt
cmake .. -A Win32
:: build binary app
cmake --build . 
```

# Notes:
 * cmake config is must in win 32 bit else it will error in the builds.

```cmake
ADD_DEFINITIONS(-DUNICODE)
ADD_DEFINITIONS(-D_UNICODE)

set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /SUBSYSTEM:CONSOLE")

add_executable(${PROJECT_NAME} 
  WIN32 # window 32 bit
  win32_directx11.cpp
)

target_link_libraries(${PROJECT_NAME} 
  d3d11
  #d3dx11
  #dxguid
)
```
# Links:
 * https://github.com/ocornut/imgui

# Credits:
 * https://stackoverflow.com/questions/22011610/how-do-i-set-unicode-as-character-set-in-the-all-build-and-zero-check-visual-stu
 * https://stackoverflow.com/questions/13977388/error-cannot-convert-const-wchar-t-13-to-lpcstr-aka-const-char-in-assi
 * https://stackoverflow.com/questions/33400777/error-lnk2019-unresolved-external-symbol-main-referenced-in-function-int-cde/50389913
 * https://github.com/ocornut/imgui
 * https://cmake.org/cmake/help/git-stage/variable/CMAKE_SYSTEM_PREFIX_PATH.html
