# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/luk3/esp/esp-idf/components/bootloader/subproject"
  "/home/luk3/esp/blink/build/bootloader"
  "/home/luk3/esp/blink/build/bootloader-prefix"
  "/home/luk3/esp/blink/build/bootloader-prefix/tmp"
  "/home/luk3/esp/blink/build/bootloader-prefix/src/bootloader-stamp"
  "/home/luk3/esp/blink/build/bootloader-prefix/src"
  "/home/luk3/esp/blink/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/luk3/esp/blink/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/luk3/esp/blink/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
