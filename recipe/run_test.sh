$PYTHON -m pip check

# Marker skips:
#   isolated — downloads deps and builds isolated venvs (unsuitable for conda-build)
#
# -k skips (upstream tests that fail in conda CI):
#   test_generator_selection              — hardcodes VS 2017 / generator expectations
#   test_sdist_with_symlinks              — symlink handling in sdist tarballs
#   test_cmake_args_keyword_osx_default   — MACOSX_DEPLOYMENT_TARGET vs conda macOS SDK
#   test_issue352_isolated_environment_support — pip isolated-build env mocking
pytest -m "not isolated" -k "not test_generator_selection and not test_sdist_with_symlinks and not test_cmake_args_keyword_osx_default and not test_issue352_isolated_environment_support" -v
