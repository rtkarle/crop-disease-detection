# CropGuard AI - Complete Setup Guide

## 🌟 Features Overview

### Advanced Disease Detection System
- **10 Crops Supported**: Tomato, Potato, Apple, Corn, Grape, Bell Pepper, Orange, Strawberry, Cherry, Squash
- **38+ Disease Classes**: Complete PlantVillage dataset coverage
- **Enhanced Treatment Database**: Chemical & organic solutions with prices, purchase links
- **Cost Estimation**: Per-acre treatment costs and budget recommendations
- **Weather Risk Assessment**: Real-time disease risk based on weather conditions
- **Symptom-based Search**: Find diseases by describing symptoms
- **Multi-language Support**: English, Hindi, Marathi

### Complete Web Application
- **Disease Detection**: Upload image → Get diagnosis + treatment solutions
- **Disease Browser**: Explore diseases by crop or search by symptoms
- **Weather Integration**: Current weather + 5-day forecast
- **AI Chatbot**: Gemini-powered agricultural assistant
- **User Dashboard**: Scan history, statistics, crop health tracking
- **Admin Panel**: User management, system analytics
- **Responsive Design**: Works on desktop, tablet, mobile

## 🚀 Quick Start Commands

### Prerequisites
- **XAMPP** installed with MySQL running
- **Node.js** (v16+) and **npm**
- **Python** (3.8+) with **pip**

### 1. Start XAMPP
```bash
# Start XAMPP Control Panel
# Start Apache and MySQL services
```

### 2. Setup Backend
```bash
cd smart-crop-disease-detection/backend

# Install Python dependencies
pip install -r requirements.txt

# Setup database (creates tables automatically)
python seed_db.py

# Start Flask server
python app.py
```

### 3. Setup Frontend
```bash
cd smart-crop-disease-detection/frontend

# Install dependencies (if not done)
npm install

# Build for production
npm run build
```

### 4. Access Application
- **Main Application**: http://localhost:5000
- **API Endpoints**: http://localhost:5000/api/*

## 📋 System Requirements

### Database Configuration
- **Host**: localhost
- **Port**: 3306
- **User**: root
- **Password**: (empty)
- **Database**: cropguard (auto-created)

### API Keys (Optional)
- **Gemini AI**: For chatbot functionality
- **OpenWeather**: For weather data

## 🔧 Configuration Files

### Backend Environment (.env)
```env
MYSQL_HOST=localhost
MYSQL_PORT=3306
MYSQL_USER=root
MYSQL_PASSWORD=
MYSQL_DB=cropguard

GEMINI_API_KEY=your_gemini_api_key_here
OPENWEATHER_API_KEY=your_openweather_key_here
JWT_SECRET=cropguard-super-secret-jwt-key-2024
FLASK_ENV=development
FLASK_DEBUG=True
MODEL_PATH=models/plant_disease_model_pretrained.h5
```

## 🎯 Demo Accounts

### Admin Account
- **Email**: admin@cropguard.ai
- **Password**: admin123
- **Role**: Administrator

### Farmer Account
- **Email**: farmer@test.com
- **Password**: farmer123
- **Role**: Farmer

## 📱 Application Features

### 1. Disease Detection
- Upload leaf images (PNG, JPG, JPEG, WEBP)
- Select crop type for improved accuracy
- Add weather data and location
- Get comprehensive diagnosis with:
  - Disease identification with confidence score
  - Severity assessment
  - Complete treatment solutions
  - Cost estimates and purchase links
  - Prevention measures

### 2. Disease Browser
- **Browse by Crop**: Select crop → View all diseases
- **Search by Symptoms**: Describe symptoms → Find matching diseases
- **Detailed Information**: Complete disease profiles with treatments

### 3. Enhanced Treatment Database
- **Chemical Solutions**: Fungicides with brands, prices, purchase links
- **Organic Alternatives**: Bio-fungicides and home remedies
- **Cost Comparison**: Budget-wise recommendations
- **Purchase Integration**: Direct links to Amazon, Flipkart, AgriMarket

### 4. Weather Integration
- Current weather conditions
- 5-day weather forecast
- Disease risk assessment based on weather
- Location-based weather data

### 5. AI Chatbot
- Gemini AI-powered responses
- Agricultural expertise
- Multi-language support
- Context-aware conversations

### 6. User Dashboard
- Scan history and statistics
- Crop health tracking
- Disease trend analysis
- Quick access to recent scans

### 7. Admin Panel
- User management
- System analytics
- Scan monitoring
- Model performance metrics

## 🌐 API Endpoints

### Detection API
- `POST /api/detection/detect` - Disease detection
- `GET /api/detection/crops` - Supported crops
- `GET /api/detection/crops/{crop}/diseases` - Crop diseases
- `POST /api/detection/search/symptoms` - Symptom search
- `GET /api/detection/disease/{class}/info` - Disease details

### Authentication API
- `POST /api/auth/register` - User registration
- `POST /api/auth/login` - User login
- `GET /api/auth/profile` - User profile

### Weather API
- `GET /api/weather/current` - Current weather
- `GET /api/weather/forecast` - Weather forecast

### Chatbot API
- `POST /api/chatbot/chat` - Chat with AI
- `GET /api/chatbot/quick-tips` - Quick tips

## 🔍 Supported Diseases

### Tomato (10 diseases)
- Late Blight, Early Blight, Bacterial Spot, Leaf Mold
- Septoria Leaf Spot, Spider Mites, Target Spot
- TYLCV, Mosaic Virus, Healthy

### Potato (3 diseases)
- Late Blight, Early Blight, Healthy

### Apple (4 diseases)
- Apple Scab, Black Rot, Cedar Apple Rust, Healthy

### Corn (4 diseases)
- Northern Leaf Blight, Common Rust, Gray Leaf Spot, Healthy

### Grape (4 diseases)
- Black Rot, Esca, Leaf Blight, Healthy

### Bell Pepper (2 diseases)
- Bacterial Spot, Healthy

### Orange (1 disease)
- Citrus Greening (HLB)

### Strawberry (2 diseases)
- Leaf Scorch, Healthy

### Cherry (2 diseases)
- Powdery Mildew, Healthy

### Squash (1 disease)
- Powdery Mildew

## 🛠️ Troubleshooting

### Common Issues

1. **Database Connection Error**
   - Ensure XAMPP MySQL is running
   - Check database credentials in .env file
   - Run `python seed_db.py` to create tables

2. **Model Loading Error**
   - Ensure model file exists: `backend/models/plant_disease_model_pretrained.h5`
   - Check MODEL_PATH in .env file

3. **Frontend Build Issues**
   - Delete `node_modules` and run `npm install`
   - Clear npm cache: `npm cache clean --force`

4. **API Key Issues**
   - Chatbot works with fallback responses if Gemini key is invalid
   - Weather shows mock data if OpenWeather key is missing

### Performance Optimization

1. **Database Indexing**
   - Indexes are automatically created on user_id, disease_class
   - Monitor query performance in admin panel

2. **Image Processing**
   - Images are resized to 224x224 for ML model
   - Original images stored in uploads folder

3. **Caching**
   - Disease data is cached in memory
   - Weather data cached for 10 minutes

## 📊 System Architecture

### Backend (Flask)
- **Framework**: Flask with SQLAlchemy ORM
- **Database**: MySQL with XAMPP
- **ML Model**: MobileNetV2 with PlantVillage dataset
- **Authentication**: JWT tokens
- **File Upload**: Secure image handling

### Frontend (React)
- **Framework**: React 18 with Vite
- **Styling**: Tailwind CSS
- **State Management**: Context API
- **Routing**: React Router
- **HTTP Client**: Axios

### Single Server Mode
- Flask serves both API and React build
- Production-ready deployment
- Simplified hosting requirements

## 🔐 Security Features

- JWT-based authentication
- Role-based access control (Admin/Farmer)
- Secure file upload validation
- SQL injection prevention
- XSS protection
- CORS configuration

## 📈 Monitoring & Analytics

### Admin Dashboard
- Total users and scans
- Disease detection trends
- Model accuracy metrics
- System performance stats

### User Analytics
- Personal scan history
- Crop health trends
- Disease frequency analysis
- Treatment cost tracking

## 🌍 Multi-language Support

### Supported Languages
- **English** (en) - Default
- **Hindi** (hi) - हिंदी
- **Marathi** (mr) - मराठी

### Adding New Languages
1. Add language to `frontend/src/i18n/index.js`
2. Create translation files
3. Update language selector

## 🚀 Deployment Options

### Local Development
- Use `python app.py` for backend
- Frontend built and served by Flask

### Production Deployment
- Use Gunicorn for Flask production server
- Configure reverse proxy (Nginx)
- Set up SSL certificates
- Use production database

### Docker Deployment
- Dockerfile included for containerization
- Docker Compose for multi-service setup
- Environment variable configuration

## 📞 Support & Documentation

### API Documentation
- Swagger/OpenAPI documentation available
- Postman collection for testing
- Example requests and responses

### Code Documentation
- Inline comments in critical functions
- README files in each module
- Type hints in Python code

### Community Support
- GitHub Issues for bug reports
- Feature requests welcome
- Contribution guidelines available

---

## 🎉 Success! Your CropGuard AI system is now ready!

Visit http://localhost:5000 to start using the complete smart crop disease detection system with advanced treatment recommendations, cost estimates, and purchase integration.