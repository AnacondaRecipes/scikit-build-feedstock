$PYTHON -m pip check

py.test -k "not (test_fortran_compiler or test_issue352_isolated_environment_support or test_cmake_install_dir_keyword or test_generator_selection or pep518 or test_configure_with_cmake_args)" -v
