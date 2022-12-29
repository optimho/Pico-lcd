# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/michael/pico/pico-sdk/tools/pioasm"
  "/home/michael/Project/pico_lcd_1.14/build/pioasm"
  "/home/michael/Project/pico_lcd_1.14/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm"
  "/home/michael/Project/pico_lcd_1.14/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/tmp"
  "/home/michael/Project/pico_lcd_1.14/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/src/PioasmBuild-stamp"
  "/home/michael/Project/pico_lcd_1.14/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/src"
  "/home/michael/Project/pico_lcd_1.14/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/src/PioasmBuild-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/michael/Project/pico_lcd_1.14/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/src/PioasmBuild-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/michael/Project/pico_lcd_1.14/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/src/PioasmBuild-stamp${cfgdir}") # cfgdir has leading slash
endif()
