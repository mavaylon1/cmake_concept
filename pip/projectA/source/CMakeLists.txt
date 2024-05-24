cmake_minimum_required(VERSION 3.0)
project(myproject)

add_executable(${PROJECT_NAME} hello.cpp)

add_custom_command(TARGET ${PROJECT_NAME}
                   POST_BUILD
                   COMMAND echo "pip install")
