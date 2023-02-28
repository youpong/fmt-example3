cmake_minimum_required(VERSION 3.22)

project(fmt-example3)

add_subdirectory(fmt-9.1.0)

add_executable(main main.cc)
target_link_libraries(main fmt::fmt)

target_compile_features(main PRIVATE cxx_std_20)

target_compile_options(main PRIVATE
  "-Wall;-Wextra;-Wpedantic"
)

