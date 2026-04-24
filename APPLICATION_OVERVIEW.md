# 🌿 CropGuard AI - Smart Crop Disease Detection System

## 📋 Application Overview

**CropGuard AI** is a comprehensive web-based platform that leverages artificial intelligence to help farmers detect crop diseases, get treatment recommendations, and make informed farming decisions. The application combines machine learning, AI chatbots, weather analysis, and user management in a single integrated platform.

---

## 🎯 Key Features

### 1. 🔬 AI-Powered Disease Detection
- **Image Upload**: Drag & drop, file picker, or webcam capture
- **Disease Classification**: 38 disease classes across 14 crop types
- **Confidence Scoring**: Percentage confidence in predictions
- **Severity Assessment**: Mild, Moderate, or Severe classification
- **Treatment Recommendations**: Organic and chemical treatment options

### 2. 🤖 Intelligent Chatbot (AgriBot)
- **Powered by Google Gemini AI**: Real-time agricultural advice
- **Multi-language Support**: English, Hindi, Marathi
- **Voice Input**: Speech-to-text functionality
- **Context-Aware**: Understands previous scan results
- **Expert Knowledge**: Crop management, pest control, weather advice

### 3. 🌤️ Weather Risk Analysis
- **Real-time Weather Data**: Current conditions and 5-day forecast
- **Disease Risk Prediction**: Weather-based outbreak probability
- **Location-based**: Supports multiple cities and regions
- **Risk Scoring**: LOW/MEDIUM/HIGH risk categories

### 4. 📊 Analytics Dashboard
- **Scan Statistics**: Total scans, disease distribution
- **Trend Analysis**: Weekly/monthly patterns
- **Health Metrics**: Healthy vs diseased crop ratios
- **Interactive Charts**: Visual data representation

### 5. 📋 Scan History Management
- **Complete History**: All previous disease scans
- **Search & Filter**: By date, crop type, disease
- **Detailed Records**: Images, treatments, weather conditions
- **Export Options**: Data download capabilities

### 6. 👤 User Management System
- **JWT Authentication**: Secure login/registration
- **Role-based Access**: Farmer and Admin roles
- **Profile Management**: Personal and farm details
- **Multi-language Preferences**: UI language selection

### 7. 🛡️ Admin Panel
- **User Analytics**: Platform usage statistics
- **System Monitoring**: API health, database status
- **Content Management**: Disease database updates
- **Performance Metrics**: Response times, accuracy rates

---

## 🛠️ Technology Stack

### Frontend Technologies
| Technology | Purpose | Version |
|------------|---------|---------|
| **React 18** | UI Framework | Latest |
| **Vite** | Build Tool & Dev Server | Latest |
| **TailwindCSS** | Styling Framework | Latest |
| **React Router** | Client-side Routing | v6 |
| **Recharts** | Data Visualization | Latest |
| **Framer Motion** | Animations | Latest |
| **React Hot Toast** | Notifications | Latest |
| **Axios** | HTTP Client | Latest |
| **i18next** | Internationalization | Latest |

### Backend Technologies
| Technology | Purpose | Version |
|------------|---------|---------|
| **Python Flask** | Web Framework | Latest |
| **SQLAlchemy** | Database ORM | Latest |
| **Flask-JWT-Extended** | Authentication | Latest |
| **Flask-Bcrypt** | Password Hashing | Latest |
| **Flask-CORS** | Cross-Origin Requests | Latest |
| **PyMySQL** | MySQL Database Driver | Latest |

### Database & Storage
| Technology | Purpose |
|------------|---------|
| **MySQL** | Primary Database (via XAMPP) |
| **File System** | Image Storage |
| **Session Storage** | Chat History |

### AI & Machine Learning
| Technology | Purpose | Provider |
|------------|---------|----------|
| **Google Gemini 2.0 Flash** | Conversational AI | Google AI |
| **TensorFlow/Keras** | ML Model Framework | Google |
| **MobileNetV2** | CNN Architecture | Google |
| **PlantVillage Dataset** | Training Data | Penn State |

### External APIs
| API | Purpose | Provider |
|-----|---------|----------|
| **Google Gemini API** | AI Chatbot Responses | Google |
| **OpenWeatherMap API** | Weather Data | OpenWeather |
| **Web Speech API** | Voice Recognition | Browser |
| **MediaDevices API** | Camera Access | Browser |

---

## 🏗️ System Architecture

### Frontend Architecture
```
React App (Port 5000 - served by Flask)
├── Components/
│   ├── Layout (Navbar + Sidebar)
│   ├── Forms (Upload, Login, Register)
│   └── Charts (Dashboard Analytics)
├── Pages/
│   ├── Detection (Image Upload + Results)
│   ├── Chatbot (AI Conversation)
│   ├── Dashboard (Analytics)
│   ├── Weather (Risk Analysis)
│   └── Admin (Management Panel)
├── Context/
│   ├── AuthContext (User State)
│   └── LanguageContext (i18n)
└── Utils/
    └── API Client (Axios Configuration)
```

### Backend Architecture
```
Flask Application (Port 5000)
├── Routes/
│   ├── /api/auth/* (Authentication)
│   ├── /api/detection/* (Disease Detection)
│   ├── /api/chatbot/* (AI Chatbot)
│   ├── /api/weather/* (Weather Data)
│   ├── /api/dashboard/* (Analytics)
│   └── /api/admin/* (Admin Panel)
├── Models/
│   ├── User (SQLAlchemy Model)
│   ├── Scan (Disease Records)
│   └── ML Model (CNN Inference)
├── Database/
│   └── MySQL (XAMPP)
└── Utils/
    └── Disease Database (Treatment Info)
```

---

## 🔌 API Endpoints

### Authentication APIs
| Method | Endpoint | Description |
|--------|----------|-------------|
| POST | `/api/auth/register` | User registration |
| POST | `/api/auth/login` | User login |
| GET | `/api/auth/profile` | Get user profile |
| PUT | `/api/auth/profile` | Update profile |

### Disease Detection APIs
| Method | Endpoint | Description |
|--------|----------|-------------|
| POST | `/api/detection/detect` | Upload image & detect disease |
| GET | `/api/detection/history` | Get scan history |
| DELETE | `/api/detection/scan/:id` | Delete scan record |

### Chatbot APIs
| Method | Endpoint | Description |
|--------|----------|-------------|
| POST | `/api/chatbot/chat` | Send message to AI |
| GET | `/api/chatbot/quick-tips` | Get farming tips |

### Weather APIs
| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/api/weather/current` | Current weather |
| GET | `/api/weather/forecast` | 5-day forecast |

### Dashboard APIs
| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/api/dashboard/overview` | User statistics |
| GET | `/api/dashboard/alerts` | Disease alerts |

### Admin APIs
| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/api/admin/stats` | Platform statistics |
| GET | `/api/admin/users` | All users list |
| GET | `/api/admin/analytics` | System analytics |

---

## 🧠 Machine Learning Model

### Model Architecture
- **Base Model**: MobileNetV2 (Pre-trained on ImageNet)
- **Custom Layers**: Dense layers for 38-class classification
- **Input Size**: 224x224x3 RGB images
- **Output**: Softmax probabilities for each disease class

### Training Dataset
- **Source**: PlantVillage Dataset
- **Classes**: 38 disease categories
- **Crops**: 14 different crop types
- **Images**: 50,000+ labeled images

### Supported Crops & Diseases
| Crop | Diseases Supported |
|------|-------------------|
| **Tomato** | Bacterial Spot, Early Blight, Late Blight, Leaf Mold, Septoria Leaf Spot, Spider Mites, Target Spot, TYLCV, Mosaic Virus, Healthy |
| **Potato** | Early Blight, Late Blight, Healthy |
| **Corn** | Gray Leaf Spot, Common Rust, Northern Leaf Blight, Healthy |
| **Apple** | Apple Scab, Black Rot, Cedar Apple Rust, Healthy |
| **Grape** | Black Rot, Esca, Leaf Blight, Healthy |
| **Others** | Peach, Pepper, Strawberry, Orange, Cherry, Blueberry, Raspberry, Soybean, Squash |

---

## 🌐 Multi-language Support

### Supported Languages
- 🇬🇧 **English** (Default)
- 🇮🇳 **हिंदी (Hindi)**
- 🇮🇳 **मराठी (Marathi)**

### Implementation
- **Frontend**: i18next library with JSON translation files
- **Chatbot**: Gemini AI responds in selected language
- **Voice Input**: Browser Speech API supports multiple languages
- **Dynamic Switching**: Real-time language change without reload

---

## 🔐 Security Features

### Authentication & Authorization
- **JWT Tokens**: Secure stateless authentication
- **Password Hashing**: Bcrypt with salt
- **Role-based Access**: Farmer vs Admin permissions
- **Session Management**: Automatic token refresh

### Data Protection
- **Input Validation**: Server-side validation for all inputs
- **File Upload Security**: Type and size restrictions
- **SQL Injection Prevention**: SQLAlchemy ORM protection
- **CORS Configuration**: Controlled cross-origin access

---

## 📱 User Interface Features

### Responsive Design
- **Mobile-first**: Optimized for smartphones
- **Tablet Support**: Adapted layouts for tablets
- **Desktop Experience**: Full-featured desktop interface

### Accessibility
- **Keyboard Navigation**: Full keyboard support
- **Screen Reader**: ARIA labels and semantic HTML
- **Color Contrast**: WCAG compliant color schemes
- **Voice Input**: Alternative input method

### User Experience
- **Drag & Drop**: Intuitive file uploads
- **Real-time Feedback**: Instant loading states
- **Progressive Enhancement**: Works without JavaScript
- **Offline Indicators**: Connection status display

---

## 🚀 Deployment Architecture

### Single Server Mode
```
Flask Server (Port 5000)
├── Serves React Build (Static Files)
├── Handles API Requests (/api/*)
├── Manages File Uploads (/uploads/*)
└── Database Connections (MySQL)
```

### Development vs Production
| Feature | Development | Production |
|---------|-------------|------------|
| **Server** | Flask Dev Server | Gunicorn/uWSGI |
| **Database** | Local MySQL (XAMPP) | Cloud MySQL |
| **File Storage** | Local Filesystem | Cloud Storage |
| **Caching** | None | Redis/Memcached |
| **Load Balancing** | Single Instance | Multiple Instances |

---

## 📊 Performance Metrics

### Response Times
- **Disease Detection**: < 3 seconds
- **Chatbot Response**: < 2 seconds
- **Weather Data**: < 1 second
- **Dashboard Load**: < 1 second

### Scalability
- **Concurrent Users**: 100+ (single server)
- **Image Processing**: 10 images/minute
- **Database**: 10,000+ records
- **API Rate Limits**: 1000 requests/hour per user

---

## 🔧 Configuration & Setup

### Environment Variables
```env
# Database Configuration
MYSQL_HOST=localhost
MYSQL_PORT=3306
MYSQL_USER=root
MYSQL_PASSWORD=
MYSQL_DB=cropguard

# API Keys
GEMINI_API_KEY=your_gemini_api_key
OPENWEATHER_API_KEY=your_weather_api_key

# Security
JWT_SECRET=your_jwt_secret_key

# Application
FLASK_ENV=development
FLASK_DEBUG=True
MODEL_PATH=models/plant_disease_model.h5
```

### Dependencies
```bash
# Backend Dependencies
Flask==2.3.3
SQLAlchemy==2.0.21
PyMySQL==1.1.0
google-genai==0.3.0
requests==2.31.0
Pillow==10.0.1
numpy==1.24.3

# Frontend Dependencies
react@18.2.0
vite@4.4.5
tailwindcss@3.3.0
axios@1.5.0
recharts@2.8.0
```

---

## 🎯 Future Enhancements

### Planned Features
- **Mobile App**: React Native version
- **IoT Integration**: Sensor data integration
- **Blockchain**: Supply chain tracking
- **AR/VR**: Augmented reality disease detection
- **Drone Integration**: Aerial crop monitoring

### Technical Improvements
- **Model Accuracy**: Advanced CNN architectures
- **Real-time Processing**: WebSocket connections
- **Cloud Deployment**: AWS/Azure hosting
- **Microservices**: Service-oriented architecture
- **API Gateway**: Centralized API management

---

## 📞 Support & Documentation

### Getting Started
1. **Installation Guide**: `SETUP.md`
2. **API Documentation**: `API_DOCS.md`
3. **User Manual**: `USER_GUIDE.md`
4. **Developer Guide**: `DEVELOPER.md`

### Troubleshooting
- **Common Issues**: Database connection, API keys
- **Error Codes**: HTTP status codes and meanings
- **Performance**: Optimization tips
- **Security**: Best practices guide

---

## 📄 License & Credits

### License
**MIT License** - Free to use, modify, and distribute

### Credits
- **PlantVillage Dataset**: Penn State University
- **Google Gemini AI**: Google AI Platform
- **OpenWeather API**: OpenWeatherMap
- **UI Components**: Tailwind CSS Community
- **Icons**: Heroicons, Lucide React

---

**CropGuard AI** represents a comprehensive solution for modern agriculture, combining cutting-edge AI technology with practical farming needs to help farmers make informed decisions and improve crop health management.