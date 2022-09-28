$PYTHON -m pip check

py.test -k "not test_fortran_compiler and not test_issue352_isolated_environment_support and not test_cmake_args_keyword_osx_default and not pep518 and not test_configure_with_cmake_args" -v
