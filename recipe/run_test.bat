
:: Update PATH to ensure mingw compiler is not found
pushd %RECIPE_DIR%
call rmpath C:\\Program Files\\Git\\mingw64\\bin
call rmpath C:\\ProgramData\\Chocolatey\\bin
call rmpath C:\\Strawberry\\c\\bin
popd

%PYTHON% -m pip check

pytest -m "not fortran and not isolated" -k "not test_generator_selection and not test_sdist_with_symlinks and not test_cmake_args_keyword_osx_default and not test_issue352_isolated_environment_support and not test_make_with_install_target and not test_toolset" -v
