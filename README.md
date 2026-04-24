# 🌿 CropGuard AI — Smart Crop Disease Detection System

An advanced, fully functional web application for AI-powered crop disease detection built with **React + Flask + MongoDB + Gemini AI + CNN (MobileNetV2)**.

---

## ✨ Features

| Feature | Description |
|---|---|
| 🔬 **AI Disease Detection** | CNN model (MobileNetV2) trained on PlantVillage dataset — 38 disease classes, 14 crops |
| 📸 **Image Upload + Camera** | Drag & drop, file picker, or live webcam capture |
| 📊 **Confidence + Severity** | Confidence %, severity level (mild/moderate/severe), top-5 predictions |
| 💊 **Treatment Recommendations** | Organic methods, chemical treatments, schedules, product names |
| 🌤️ **Weather Risk Analysis** | Real-time weather + disease outbreak risk prediction |
| 🤖 **Gemini AI Chatbot** | AgriBot powered by Google Gemini — supports English, Hindi, Marathi |
| 🎙️ **Voice Input** | Speech-to-text in EN/HI/MR for chatbot |
| 📈 **Analytics Dashboard** | Charts, weekly trends, severity distribution, top diseases |
| 📋 **Scan History** | Full history with search, filter, pagination, delete |
| 🌐 **Multi-language** | English, हिंदी, मराठी — full UI translation |
| 👤 **User Auth** | JWT-based register/login, profile, farm details |
| 🛡️ **Admin Panel** | User management, platform analytics, ML model info |
| 📴 **Demo Mode** | Works without API keys or trained model (mock predictions) |

---

## 🚀 Quick Start

### Prerequisites
- Python 3.10+
- Node.js 18+
- MongoDB (local or Atlas)

### Step 1 — Configure API Keys

Edit `backend/.env`:
```env
MONGO_URI=mongodb://localhost:27017/cropdetect
GEMINI_API_KEY=your_key_here        # https://aistudio.google.com/app/apikey (FREE)
OPENWEATHER_API_KEY=your_key_here   # https://openweathermap.org/api (FREE)
JWT_SECRET=any-random-secret-string
```

### Step 2 — Install Backend Dependencies
```bash
cd backend
pip install -r requirements.txt
```

### Step 3 — Start MongoDB
```bash
# Local MongoDB
mongod --dbpath C:\data\db

# Or use MongoDB Atlas — update MONGO_URI in .env
```

### Step 4 — Seed Demo Accounts
```bash
cd backend
python seed_db.py
```

### Step 5 — Start Servers

**Option A — Double-click the bat files:**
- `start-backend.bat`
- `start-frontend.bat`

**Option B — Manual:**
```bash
# Terminal 1 — Backend
cd backend
python app.py

# Terminal 2 — Frontend
cd frontend
npm run dev
```

### Step 6 — Open Browser
```
http://localhost:5173
```

### Demo Login Credentials
| Role | Email | Password |
|---|---|---|
| Admin | admin@cropguard.ai | admin123 |
| Farmer | farmer@test.com | farmer123 |

---

## 🧠 ML Model

The app runs in **demo mode** (random predictions) without a trained model. To use a real model:

### Option A — Train from PlantVillage Dataset
```bash
# Download dataset
pip install datasets
python -c "
from datasets import load_dataset
ds = load_dataset('mohanty/PlantVillage', 'color')
ds.save_to_disk('./plantvillage_data')
"

# Train
cd backend
python models/train_model.py /path/to/train /path/to/val
```

### Option B — Use Pre-trained Model
Download a pre-trained PlantVillage MobileNetV2 model (`.h5`) and set:
```env
MODEL_PATH=models/plant_disease_model.h5
```

---

## 📁 Project Structure

```
smart-crop-disease-detection/
├── backend/
│   ├── app.py                  # Flask app factory
│   ├── config.py               # Config + 38 disease classes
│   ├── seed_db.py              # Demo account seeder
│   ├── .env                    # API keys (edit this!)
│   ├── requirements.txt
│   ├── models/
│   │   ├── disease_model.py    # CNN inference engine
│   │   └── train_model.py      # MobileNetV2 training script
│   ├── routes/
│   │   ├── auth.py             # Register / Login / Profile
│   │   ├── detection.py        # Disease detection API
│   │   ├── weather.py          # OpenWeather integration
│   │   ├── chatbot.py          # Gemini AI chatbot
│   │   ├── dashboard.py        # User dashboard stats
│   │   └── admin.py            # Admin panel APIs
│   ├── database/
│   │   └── models.py           # MongoDB collections + helpers
│   └── utils/
│       └── disease_data.py     # Disease DB with treatments
│
└── frontend/
    └── src/
        ├── App.jsx             # Router + protected routes
        ├── main.jsx
        ├── index.css           # Tailwind + custom styles
        ├── i18n/index.js       # EN / HI / MR translations
        ├── utils/api.js        # Axios API client
        ├── context/
        │   ├── AuthContext.jsx
        │   └── LanguageContext.jsx
        ├── components/
        │   ├── Layout.jsx
        │   ├── Navbar.jsx
        │   ├── Sidebar.jsx
        │   └── DemoBanner.jsx
        └── pages/
            ├── HomePage.jsx
            ├── DetectPage.jsx      # Image upload + webcam + form
            ├── ResultPage.jsx      # Full result + treatment tabs
            ├── DashboardPage.jsx   # Charts + stats + alerts
            ├── HistoryPage.jsx     # Scan history + filters
            ├── WeatherPage.jsx     # Weather + disease risk
            ├── ChatbotPage.jsx     # Gemini AI chat + voice
            ├── ProfilePage.jsx     # Profile + security + prefs
            ├── AdminPage.jsx       # Admin dashboard
            ├── LoginPage.jsx
            ├── RegisterPage.jsx
            └── NotFoundPage.jsx
```

---

## 🌾 Supported Crops & Diseases (38 Classes)

| Crop | Diseases |
|---|---|
| Tomato | Bacterial Spot, Early Blight, Late Blight, Leaf Mold, Septoria Leaf Spot, Spider Mites, Target Spot, TYLCV, Mosaic Virus, Healthy |
| Potato | Early Blight, Late Blight, Healthy |
| Corn (Maize) | Gray Leaf Spot, Common Rust, Northern Leaf Blight, Healthy |
| Apple | Apple Scab, Black Rot, Cedar Apple Rust, Healthy |
| Grape | Black Rot, Esca (Black Measles), Leaf Blight, Healthy |
| Peach | Bacterial Spot, Healthy |
| Pepper (Bell) | Bacterial Spot, Healthy |
| Strawberry | Leaf Scorch, Healthy |
| Orange | Citrus Greening (HLB) |
| Cherry | Powdery Mildew, Healthy |
| Blueberry | Healthy |
| Raspberry | Healthy |
| Soybean | Healthy |
| Squash | Powdery Mildew |

---

## 🔧 Tech Stack

| Layer | Technology |
|---|---|
| Frontend | React 18, Vite, TailwindCSS, Recharts, Framer Motion |
| Backend | Python Flask, Flask-JWT-Extended, Flask-Bcrypt |
| Database | MongoDB (PyMongo) |
| ML Model | TensorFlow/Keras, MobileNetV2, PlantVillage dataset |
| AI Chatbot | Google Gemini 2.0 Flash (google-genai SDK) |
| Weather | OpenWeatherMap API |
| Auth | JWT tokens, bcrypt password hashing |

---

## 📝 API Endpoints

| Method | Endpoint | Description |
|---|---|---|
| POST | `/api/auth/register` | Register new user |
| POST | `/api/auth/login` | Login |
| GET | `/api/auth/profile` | Get profile |
| PUT | `/api/auth/profile` | Update profile |
| POST | `/api/detection/detect` | Detect disease (multipart) |
| GET | `/api/detection/history` | Scan history |
| DELETE | `/api/detection/scan/:id` | Delete scan |
| GET | `/api/weather/current` | Current weather |
| GET | `/api/weather/forecast` | 5-day forecast |
| POST | `/api/chatbot/chat` | Chat with AgriBot |
| GET | `/api/dashboard/overview` | Dashboard stats |
| GET | `/api/dashboard/alerts` | Disease alerts |
| GET | `/api/admin/stats` | Admin stats |
| GET | `/api/admin/users` | All users |
| GET | `/api/admin/analytics` | Platform analytics |
| GET | `/api/health` | Health check |

---

## 🌐 Multi-language Support

The app fully supports:
- 🇬🇧 **English** — default
- 🇮🇳 **हिंदी (Hindi)**
- 🇮🇳 **मराठी (Marathi)**

Switch language from the navbar globe icon or Profile → Preferences.
The Gemini chatbot also responds in the selected language.

---

## 📄 License

MIT License — free to use, modify, and distribute.
