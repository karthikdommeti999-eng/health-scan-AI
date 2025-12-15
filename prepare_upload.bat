@echo off
echo Preparing files for GitHub upload...
echo This will create a 'upload_to_github' folder.

set TARGET=upload_to_github
if exist %TARGET% rd /s /q %TARGET%
mkdir %TARGET%

echo Copying Backend...
xcopy backend %TARGET%\backend\ /E /I /Y /Exclude:exclude_list.txt

echo Copying Frontend...
xcopy frontend %TARGET%\frontend\ /E /I /Y /Exclude:exclude_list.txt

echo Copying Config Files...
copy render.yaml %TARGET%\
copy README.md %TARGET%\

echo.
echo =======================================================
echo DONE! 
echo A new folder 'upload_to_github' has been created.
echo.
echo INSTRUCTIONS:
echo 1. Go to github.com and create a repository.
echo 2. Click 'Upload files'.
echo 3. Drag and drop ALL files from 'upload_to_github' into the browser.
echo 4. Click 'Commit changes'.
echo 5. Go to render.com and connect this repository.
echo =======================================================
pause
