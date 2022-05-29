#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ftxui::screen" for configuration "Debug"
set_property(TARGET ftxui::screen APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ftxui::screen PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/ftxui-screen.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS ftxui::screen )
list(APPEND _IMPORT_CHECK_FILES_FOR_ftxui::screen "${_IMPORT_PREFIX}/lib/ftxui-screen.a" )

# Import target "ftxui::dom" for configuration "Debug"
set_property(TARGET ftxui::dom APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ftxui::dom PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/ftxui-dom.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS ftxui::dom )
list(APPEND _IMPORT_CHECK_FILES_FOR_ftxui::dom "${_IMPORT_PREFIX}/lib/ftxui-dom.a" )

# Import target "ftxui::component" for configuration "Debug"
set_property(TARGET ftxui::component APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ftxui::component PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/ftxui-component.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS ftxui::component )
list(APPEND _IMPORT_CHECK_FILES_FOR_ftxui::component "${_IMPORT_PREFIX}/lib/ftxui-component.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
