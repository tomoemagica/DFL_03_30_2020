@echo off
call _internal\setenv.bat

"%PYTHON_EXECUTABLE%" "%DFL_ROOT%\main.py" extract ^
    --input-dir "%WORKSPACE%\data_src" ^
    --output-dir "%WORKSPACE%\data_src\aligned" ^
    --detector s3fd ^
    --output-debug ^
    --force-gpu-idxs 0

rem del "%WORKSPACE%\data_src\*.png" /q

pause