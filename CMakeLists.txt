# Generated Cmake Pico project file

cmake_minimum_required(VERSION 3.13)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# Initialise pico_sdk from installed location
# (note this can come from environment, CMake cache etc)
set(PICO_SDK_PATH "//home/michael/pico/pico-sdk")

set(PICO_BOARD pico CACHE STRING "Board type")

# Pull in Raspberry Pi Pico SDK (must be before project)
include(pico_sdk_import.cmake)

if (PICO_SDK_VERSION_STRING VERSION_LESS "1.4.0")
  message(FATAL_ERROR "Raspberry Pi Pico SDK version 1.4.0 (or later) required. Your version is ${PICO_SDK_VERSION_STRING}")
endif()

project(pico_lcd_1.14 C CXX ASM)

# Initialise the Raspberry Pi Pico SDK
pico_sdk_init()

#Add compile subdirectory
add_subdirectory(lib/Config)
add_subdirectory(lib/Infrared)
add_subdirectory(lib/OLED)
add_subdirectory(lib/Icm20948)
add_subdirectory(lib/LCD)
add_subdirectory(lib/Fonts)
add_subdirectory(lib/GUI)
add_subdirectory(examples)



#Add header file directory
include_directories(examples)
include_directories(./lib/Config)
include_directories(./lib/GUI)
include_directories(./lib/Icm20948)
include_directories(./lib/LCD)
include_directories(./lib/Infrared)
include_directories(./lib/OLED)

# Add executable. Default name is the project name, version 0.1

add_executable(pico_lcd_1.14 pico_lcd_1.14.c )

pico_set_program_name(pico_lcd_1.14 "pico_lcd_1.14")
pico_set_program_version(pico_lcd_1.14 "0.1")

pico_enable_stdio_uart(pico_lcd_1.14 0)
pico_enable_stdio_usb(pico_lcd_1.14 1)

# Add the standard library to the build
target_link_libraries(pico_lcd_1.14
        pico_stdlib)

# Add the standard include files to the build
target_include_directories(pico_lcd_1.14 PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}
  ${CMAKE_CURRENT_LIST_DIR}/.. # for our common lwipopts or any other standard includes, if required
)

# Add any user requested libraries
target_link_libraries(pico_lcd_1.14
        hardware_spi
        examples
        LCD
        OLED
        Infrared
        Icm20948
        GUI
        Fonts
        Config
        pico_stdlib
        )

pico_add_extra_outputs(pico_lcd_1.14)

