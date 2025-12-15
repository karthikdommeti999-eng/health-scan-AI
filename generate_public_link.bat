@echo off
echo ===================================================
echo     HealthScan AI - PUBLIC WEBSITE GENERATOR
echo ===================================================
echo.
echo Step 1: insuring the servers are running...
:: We will start the build_and_serve in a separate window if not running, 
:: but to be safe, let's just assume the user might not have it running.
:: Actually, best is to just run the build/serve AND the tunnel here.

echo Building and Starting Server in background...
start cmd /k "build_and_serve.bat"

echo.
echo Step 2: Generating Public URL...
echo Waiting for server to initialize (10 seconds)...
timeout /t 10

echo.
echo ===================================================
echo YOUR WEBSITE IS LIVE AT THE URL BELOW:
echo ===================================================
echo.
echo NOTE: You might need to enter a IP address for security if using localtunnel sometimes.
echo.
call npm install -g localtunnel
npx localtunnel --port 8000
pause
