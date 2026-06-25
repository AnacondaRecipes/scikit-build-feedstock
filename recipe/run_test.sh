$PYTHON -m pip check

pytest -m "not fortran and not isolated" -k "not test_generator_selection and not test_sdist_with_symlinks and not test_cmake_args_keyword_osx_default and not test_issue352_isolated_environment_support" -v
