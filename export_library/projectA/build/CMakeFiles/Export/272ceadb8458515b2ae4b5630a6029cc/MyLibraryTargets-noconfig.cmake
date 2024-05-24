#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "MyLibrary::MyLibrary" for configuration ""
set_property(TARGET MyLibrary::MyLibrary APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(MyLibrary::MyLibrary PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libMyLibrary.1.0.0.dylib"
  IMPORTED_SONAME_NOCONFIG "@rpath/libMyLibrary.1.dylib"
  )

list(APPEND _cmake_import_check_targets MyLibrary::MyLibrary )
list(APPEND _cmake_import_check_files_for_MyLibrary::MyLibrary "${_IMPORT_PREFIX}/lib/libMyLibrary.1.0.0.dylib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
