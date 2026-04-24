# 🌿 CropGuard AI — Setup Guide (MySQL / XAMPP)

## Prerequisites
- Python 3.10+
- Node.js 18+
- XAMPP (MySQL) — already installed ✅

---

## Step 1: Start XAMPP MySQL

1. XAMPP Control Panel उघडा
2. **MySQL → Start** क्लिक करा
3. **Apache → Start** (phpMyAdmin साठी)

---

## Step 2: Database तयार करा

1. Browser मध्ये उघडा: **http://localhost/phpmyadmin**
2. "New" क्लिक करा
3. Database name: **`cropguard`**
4. Collation: **`utf8mb4_unicode_ci`**
5. "Create" क्लिक करा

> Tables आपोआप तयार होतात जेव्हा backend start होतो!

---

## Step 3: API Keys Configure करा

`backend/.env` file edit करा:
```env
MYSQL_HOST=localhost
MYSQL_PORT=3306
MYSQL_USER=root
MYSQL_PASSWORD=          # XAMPP default: empty
MYSQL_DB=cropguard

GEMINI_API_KEY=your_key_here        # https://aistudio.google.com/app/apikey
OPENWEATHER_API_KEY=your_key_here   # https://openweathermap.org/api
JWT_SECRET=any-random-secret
```

---

## Step 4: Backend Dependencies Install करा

```bash
cd backend
pip install -r requirements.txt
```

---

## Step 5: App Start करा

### Option A — Double-click (सोपे):
- `start-backend.bat` → Flask :5000 वर start होतो
- `start-frontend.bat` → React :5173 वर start होतो

### Option B — Manual:
```bash
# Terminal 1 — Backend
cd backend
python seed_db.py    # demo accounts तयार करतो
python app.py        # Flask start

# Terminal 2 — Frontend
cd frontend
npm run dev
```

---

## Step 6: Browser मध्ये उघडा

```
http://localhost:5173
```

### Demo Login:
| Role | Email | Password |
|---|---|---|
| Admin | admin@cropguard.ai | admin123 |
| Farmer | farmer@test.com | farmer123 |

---

## phpMyAdmin मध्ये Tables पाहा

`http://localhost/phpmyadmin` → `cropguard` database → Tables:
- **users** — सर्व users
- **scans** — सर्व disease scans

---

## Feature Status

| Feature | Status | Requires |
|---|---|---|
| Disease Detection | ✅ Demo mode | Real model for accuracy |
| Gemini AI Chatbot | ✅ Fallback | GEMINI_API_KEY |
| Weather Risk | ✅ Mock data | OPENWEATHER_API_KEY |
| User Auth (JWT) | ✅ Full | MySQL running |
| Dashboard & Analytics | ✅ Full | MySQL running |
| Scan History | ✅ Full | MySQL running |
| Admin Panel | ✅ Full | MySQL + Admin account |
| Multi-language (EN/HI/MR) | ✅ Full | Nothing |
| Camera + Voice | ✅ Full | Browser permission |
