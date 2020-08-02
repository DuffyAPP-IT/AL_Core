cmake_minimum_required(VERSION 3.16)
project(AgentLive C)

set(CMAKE_C_STANDARD 99)

add_executable(AgentLive main.c iLibX.c iLibX.h)