@echo off
echo ========================================
echo   CropGuard AI - Single Server Mode
echo   Flask serves React + API on :5000
echo ========================================
echo.
echo [!] Make sure XAMPP MySQL is running!
echo.
cd backend

echo [1] Installing dependencies...
pip install -r requirements.txt
echo.

echo [2] Seeding demo accounts...
python seed_db.py
echo.

echo [3] Starting server on http://localhost:5000
echo     Browser मध्ये जा: http://localhost:5000
echo.
python app.py

echo.
echo Server stopped. Press any key to exit...
pause
