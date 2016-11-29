pkg_check_modules(_SYSTEMD QUIET libsystemd)

find_path(SYSTEMD_INCLUDE_DIR NAMES systemd/sd-daemon.h HINTS ${_SYSTEMD_INCLUDE_DIRS})
find_library(SYSTEMD_LIBRARY NAMES systemd HINTS ${_SYSTEMD_LIBRARY_DIRS})

include(FindPackageHandleStandardArgs)

find_package_handle_standard_args(SYSTEMD
    REQUIRED_VARS
        SYSTEMD_INCLUDE_DIR
        SYSTEMD_LIBRARY
)

mark_as_advanced(SYSTEMD_INCLUDE_DIR SYSTEMD_LIBRARY)
