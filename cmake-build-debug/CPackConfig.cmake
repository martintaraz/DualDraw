# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


set(CPACK_BUILD_SOURCE_DIRS "C:/Users/marti/CLionProjects/ftxuiCMAKE;C:/Users/marti/CLionProjects/ftxuiCMAKE/cmake-build-debug")
set(CPACK_CMAKE_GENERATOR "MinGW Makefiles")
set(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
set(CPACK_DEBIAN_PACKAGE_DEPENDS " ")
set(CPACK_DEBIAN_PACKAGE_HOMEPAGE_URL "https://github.com/ArthurSonzogni/FTXUI/")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "Arthur Sonzogni")
set(CPACK_DEBIAN_PACKAGE_VERSION "2.0.0")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_FILE "C:/Users/marti/AppData/Local/JetBrains/Toolbox/apps/CLion/ch-0/212.5457.51/bin/cmake/win/share/cmake-3.20/Templates/CPack.GenericDescription.txt")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_SUMMARY "dualDraw built using CMake")
set(CPACK_GENERATOR "DEB;NuGet;TGZ;ZIP")
set(CPACK_INSTALL_CMAKE_PROJECTS "C:/Users/marti/CLionProjects/ftxuiCMAKE/cmake-build-debug;dualDraw;ALL;/")
set(CPACK_INSTALL_PREFIX "C:/Program Files (x86)/ftxuiCMAKE")
set(CPACK_MODULE_PATH "")
set(CPACK_NSIS_DISPLAY_NAME "ftxui 2.0.0")
set(CPACK_NSIS_INSTALLER_ICON_CODE "")
set(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
set(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES64")
set(CPACK_NSIS_PACKAGE_NAME "ftxui 2.0.0")
set(CPACK_NSIS_UNINSTALL_NAME "Uninstall")
set(CPACK_OUTPUT_CONFIG_FILE "C:/Users/marti/CLionProjects/ftxuiCMAKE/cmake-build-debug/CPackConfig.cmake")
set(CPACK_PACKAGE_DEFAULT_LOCATION "/")
set(CPACK_PACKAGE_DESCRIPTION_FILE "C:/Users/marti/AppData/Local/JetBrains/Toolbox/apps/CLion/ch-0/212.5457.51/bin/cmake/win/share/cmake-3.20/Templates/CPack.GenericDescription.txt")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "A simple C++ Terminal UI library")
set(CPACK_PACKAGE_FILE_NAME "ftxui-2.0.0-win64")
set(CPACK_PACKAGE_HOMEPAGE_URL "https://github.com/ArthurSonzogni/FTXUI/")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "ftxui 2.0.0")
set(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "ftxui 2.0.0")
set(CPACK_PACKAGE_NAME "ftxui")
set(CPACK_PACKAGE_RELOCATABLE "true")
set(CPACK_PACKAGE_VENDOR "Arthur Sonzogni")
set(CPACK_PACKAGE_VERSION "2.0.0")
set(CPACK_PACKAGE_VERSION_MAJOR "2")
set(CPACK_PACKAGE_VERSION_MINOR "0")
set(CPACK_PACKAGE_VERSION_PATCH "0")
set(CPACK_RESOURCE_FILE_LICENSE "C:/Users/marti/CLionProjects/ftxuiCMAKE/cmake-build-debug/_deps/ftxui-src/LICENSE")
set(CPACK_RESOURCE_FILE_README "C:/Users/marti/AppData/Local/JetBrains/Toolbox/apps/CLion/ch-0/212.5457.51/bin/cmake/win/share/cmake-3.20/Templates/CPack.GenericDescription.txt")
set(CPACK_RESOURCE_FILE_WELCOME "C:/Users/marti/AppData/Local/JetBrains/Toolbox/apps/CLion/ch-0/212.5457.51/bin/cmake/win/share/cmake-3.20/Templates/CPack.GenericWelcome.txt")
set(CPACK_SET_DESTDIR "OFF")
set(CPACK_SOURCE_7Z "ON")
set(CPACK_SOURCE_GENERATOR "7Z;ZIP")
set(CPACK_SOURCE_OUTPUT_CONFIG_FILE "C:/Users/marti/CLionProjects/ftxuiCMAKE/cmake-build-debug/CPackSourceConfig.cmake")
set(CPACK_SOURCE_ZIP "ON")
set(CPACK_SYSTEM_NAME "win64")
set(CPACK_THREADS "1")
set(CPACK_TOPLEVEL_TAG "win64")
set(CPACK_WIX_SIZEOF_VOID_P "8")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "C:/Users/marti/CLionProjects/ftxuiCMAKE/cmake-build-debug/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
