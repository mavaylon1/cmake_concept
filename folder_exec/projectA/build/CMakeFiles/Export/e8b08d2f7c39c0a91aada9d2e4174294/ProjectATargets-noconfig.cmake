#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ProjectA::PipSim" for configuration ""
set_property(TARGET ProjectA::PipSim APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(ProjectA::PipSim PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "/usr/local/bin/PipSim"
  )

list(APPEND _cmake_import_check_targets ProjectA::PipSim )
list(APPEND _cmake_import_check_files_for_ProjectA::PipSim "/usr/local/bin/PipSim" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
