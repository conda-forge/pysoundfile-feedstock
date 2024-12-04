:: We are currently building a noarch package, but pysoundfile contains a
:: install-time check for the OS and injects the sf_wchar_open function
:: conditionally. If this variable is not set, opening files on Windows doesn't work
:: Fix coming hopefully with https://github.com/bastibe/python-soundfile/pull/288
:: Original issue on conda-forge: https://github.com/conda-forge/libsndfile-feedstock/issues/14

echo on
set PYSOUNDFILE_PLATFORM=win32
%PYTHON% -m pip install . --no-deps -vv
