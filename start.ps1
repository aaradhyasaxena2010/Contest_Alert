# Contest Alert - Windows Startup Script
Write-Host "🚀 Launching Contest Alert servers..." -ForegroundColor Cyan

# Start Backend in a new PowerShell window
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd '$PSScriptRoot\backend'; Write-Host '--- Contest Alert Backend (Port 5001) ---' -ForegroundColor Green; npm start"

# Start Frontend in a new PowerShell window
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd '$PSScriptRoot\frontend'; Write-Host '--- Contest Alert Frontend (Port 3000) ---' -ForegroundColor Green; npm start"

Write-Host "✅ Both servers are starting in separate windows:" -ForegroundColor Green
Write-Host "   - Backend:  http://localhost:5001" -ForegroundColor Yellow
Write-Host "   - Frontend: http://localhost:3000" -ForegroundColor Yellow
