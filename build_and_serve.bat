@echo off
echo Building Frontend...
cd frontend
call npm install
call npm run build
if %errorlevel% neq 0 exit /b %errorlevel%
cd ..

echo Moving build files to backend...
if not exist backend\static mkdir backend\static
xcopy /E /I /Y frontend\dist\* backend\static\

echo Starting Production Server...
cd backend
echo Open http://localhost:8000 to see your unified app.
call venv\Scripts\activate
uvicorn app.main:app --host 0.0.0.0 --port 8000
pause
