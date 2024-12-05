
:: Update PATH to ensure mingw compiler is not found
pushd %RECIPE_DIR%
call rmpath C:\\Program Files\\Git\\mingw64\\bin
call rmpath C:\\ProgramData\\Chocolatey\\bin
call rmpath C:\\Strawberry\\c\\bin
popd

%PYTHON% -m pip check

py.test -k "not (test_source_distribution or test_fortran_compiler or test_issue352_isolated_environment_support or test_cmake_install_dir_keyword or test_generator_selection or pep518 or test_configure_with_cmake_args or test_make_with_install_target)" -v
