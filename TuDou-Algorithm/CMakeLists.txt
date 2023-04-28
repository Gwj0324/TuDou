cmake_minimum_required(VERSION 3.14)

project(TuDou-Algorithm LANGUAGES CXX)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(QT NAMES Qt6 Qt5 REQUIRED COMPONENTS Core)
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Core)

add_library(TuDou-Algorithm SHARED
  TuDou-Algorithm_global.h
  TuDouAlgorithmManager.cpp
  TuDouAlgorithmManager.h
  AStarAlgorithm/astar.h
  AStarAlgorithm/point.h
  AStarAlgorithm/astar.cpp
  AStarAlgorithm/point.cpp
)
target_link_libraries(TuDou-Algorithm PRIVATE Qt${QT_VERSION_MAJOR}::Core)

target_compile_definitions(TuDou-Algorithm PRIVATE TUDOUALGORITHM_LIBRARY)
