@echo off
echo Starting HealthScan AI...

:: Start Backend
start cmd /k "cd backend && call venv\Scripts\activate 2>nul || echo Venv not found, using global python... && pip install -r requirements.txt && uvicorn app.main:app --reload"

:: Start Frontend
start cmd /k "cd frontend && npm install && npm run dev"

echo Services started!
echo Frontend: http://localhost:5173
echo Backend: http://localhost:8000/docs
pause
