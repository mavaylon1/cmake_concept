#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "peaks::peaks" for configuration ""
set_property(TARGET peaks::peaks APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(peaks::peaks PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libpeaks.dylib"
  IMPORTED_SONAME_NOCONFIG "@rpath/libpeaks.dylib"
  )

list(APPEND _cmake_import_check_targets peaks::peaks )
list(APPEND _cmake_import_check_files_for_peaks::peaks "${_IMPORT_PREFIX}/lib/libpeaks.dylib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
