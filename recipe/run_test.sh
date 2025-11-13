$PYTHON -m pip check

pytest -m "not fortran and not isolated" -k "not test_outside_project_root_fails and not test_issue668_symbol_visibility and not test_issue352_isolated_environment_support and not test_configure_with_cmake_args and not test_generator_selection and not test_cmake_args_keyword_osx_default and not test_make_without_configure_fails and not test_bdist_wheel_command" -v