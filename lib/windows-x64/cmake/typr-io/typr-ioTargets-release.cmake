#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "typr::typr_io" for configuration "Release"
set_property(TARGET typr::typr_io APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(typr::typr_io PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/typr_io.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/typr_io.dll"
  )

list(APPEND _cmake_import_check_targets typr::typr_io )
list(APPEND _cmake_import_check_files_for_typr::typr_io "${_IMPORT_PREFIX}/lib/typr_io.lib" "${_IMPORT_PREFIX}/bin/typr_io.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
