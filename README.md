# CS470 Parallel and Distributed Systems Final Project
## Stephen Ruhlen, Zachary Putz, Jaden Cioffi, Eli Moore

### Steps to build / run:
- run build.sh
- to run samples: ./build/bin/samples
- under the 'tools' control pane, select 'benchmarks' and 'barrel'
- benchmark runs automatically, 'R' to reset, 'P' to pause
- set 'substeps' and 'hertz' sliders to maximum
- open Linux Mint's built-in 'System Monitor' software and inspect 'Resources' -> CPU percentages during runtime
- switch between 'workers' slider set to different numbers (1 and 24 used for lab machine testing)
- *New Addition*: observe the fps counter in the bottom-left of the GUI during runtime
- *New Addition*: use ./build/bin/samples > <filename.txt> to redirect stdout fps values to file for capture
- *New Addition*: take the file generated from the above command and run python3 gen_graph.py <filename.txt> to view a graph of fps
-     Note: for best graphical results, Pause immediately, set hertz to 30, substeps at maximum, and workers below 5, then restart and play. This allows for a large enough dip in performance to be viewable


![Box2D Logo](https://box2d.org/images/logo.svg)

# Build Status
[![Build Status](https://github.com/erincatto/box2d/actions/workflows/build.yml/badge.svg)](https://github.com/erincatto/box2d/actions)

# Box2D 
Box2D is a 2D physics engine for games.

[![Box2D Version 3.0 Release Demo](https://img.youtube.com/vi/dAoM-xjOWtA/0.jpg)](https://www.youtube.com/watch?v=dAoM-xjOWtA)

## Features

### Collision
- Continuous collision detection
- Contact events and sensors
- Convex polygons, capsules, circles, rounded polygons, segments, and chains
- Multiple shapes per body
- Collision filtering
- Ray casts, shape casts, and overlap queries

### Physics
- Robust _Soft Step_ rigid body solver
- Continuous physics for fast translations and rotations
- Island based sleep
- Revolute, prismatic, distance, mouse joint, weld, and wheel joints
- Joint limits, motors, springs, and friction
- Joint and contact forces
- Body movement events and sleep notification

### System
- Data-oriented design
- Written in portable C17
- Extensive multithreading and SIMD

### Samples
- OpenGL with GLFW and enkiTS
- Graphical user interface with imgui
- Many samples to demonstrate features and performance

## Building
- Install [CMake](https://cmake.org/)
- Ensure CMake is in the user `PATH`
- Visual Studio: run `build.bat` from the command prompt
- Otherwise: run `build.sh` from a bash shell
- Results are in the build sub-folder
- On Windows you can open box2d.sln

## Building for Xcode
- Install [CMake](https://cmake.org)
- Add Cmake to the path in .zprofile (the default Terminal shell is zsh)
    - export PATH="/Applications/CMake.app/Contents/bin:$PATH"
- mkdir build
- cd build
- cmake -G Xcode ..
- open box2d.xcodeproj
- Select the samples scheme
- Edit the scheme to set a custom working directory to the box2d directory
- You can now build and run the samples

## Compatibility
The Box2D library and samples build and run on Windows, Linux, and Mac.

Box2D should be built on recent versions of clang and gcc. You will need the latest Visual Studio version for C11 atomics to compile (17.8.3+).

## Documentation
- [Manual](https://box2d.org/documentation/)
- [Migration Guide](https://github.com/erincatto/box2d/blob/main/docs/migration.md)

## Community
- [Discord](https://discord.gg/NKYgCBP)

## Contributing
Please do not submit pull requests. Instead, please file an issue for bugs or feature requests. For support, please visit the Discord server.

# Giving Feedback
Please file an issue or start a chat on discord.

## License
Box2D is developed by Erin Catto and uses the [MIT license](https://en.wikipedia.org/wiki/MIT_License).

## Sponsorship
Support development of Box2D through [Github Sponsors](https://github.com/sponsors/erincatto).

Please consider starring this repository and subscribing to my [YouTube channel](https://www.youtube.com/@erin_catto).

## Ports, wrappers, and bindings
- Beef bindings - https://github.com/EnokViking/Box2DBeef
- C++ bindings - https://github.com/HolyBlackCat/box2cpp
- WASM - https://github.com/Birch-san/box2d3-wasm
