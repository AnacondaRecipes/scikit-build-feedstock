
:: Update PATH to ensure mingw compiler is not found
pushd %RECIPE_DIR%
call rmpath C:\\Program Files\\Git\\mingw64\\bin
call rmpath C:\\ProgramData\\Chocolatey\\bin
call rmpath C:\\Strawberry\\c\\bin
popd

%PYTHON% -m pip check

pytest -m "not fortran and not isolated" -k "not test_issue352_isolated_environment_support and not test_configure_with_cmake_args and not test_generator_selection and not test_make_with_install_target and not test_outside_project_root and not test_toolset and not test_make_without_configure_fails and not test_bdist_wheel_command" -v