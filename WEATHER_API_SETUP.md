# 🌤️ Weather API Setup Guide (मराठी)

## OpenWeather API Key कसे मिळवायचे

### Step 1: Website वर जा
🔗 **https://openweathermap.org/api**

### Step 2: Sign Up करा
1. वरच्या बाजूला "Sign Up" बटण क्लिक करा
2. Form भरा:
   - Username (तुमचे नाव)
   - Email (तुमचा email)
   - Password (strong password)
3. "I am 16 years old and over" checkbox टिक करा
4. "Create Account" क्लिक करा

### Step 3: Email Verify करा
1. तुमच्या email inbox मध्ये जा
2. OpenWeather चा email उघडा
3. "Verify your email" link वर क्लिक करा

### Step 4: API Key मिळवा
1. Login करा: https://home.openweathermap.org/
2. वरच्या menu मध्ये "API keys" tab क्लिक करा
3. तुम्हाला एक default key दिसेल (असे दिसेल: `a1b2c3d4e5f6g7h8i9j0k1l2m3n4o5p6`)
4. Key copy करा (copy icon वर क्लिक करा)

### Step 5: .env File मध्ये Add करा

**File Location**: `smart-crop-disease-detection/backend/.env`

या line मध्ये तुमची key paste करा:
```env
OPENWEATHER_API_KEY=तुमची_key_इथे_paste_करा
```

**Example**:
```env
OPENWEATHER_API_KEY=a1b2c3d4e5f6g7h8i9j0k1l2m3n4o5p6
```

### Step 6: Server Restart करा

Terminal मध्ये:
```bash
# Ctrl+C दाबा (server बंद करण्यासाठी)
python app.py
```

किंवा `start-backend.bat` double-click करा

---

## ✅ काम झाले का ते कसे तपासायचे

1. Browser मध्ये जा: **http://localhost:5000**
2. Login करा
3. **Weather** page वर जा
4. Location enter करा (उदा: "Pune" किंवा "Mumbai")
5. Real weather data दिसला तर API काम करत आहे! 🎉

---

## 💡 Important Notes

- **Free Plan**: 1000 API calls/day (पुरेसे आहे!)
- **Activation Time**: नवीन key ला 10-15 minutes लागतात activate होण्यासाठी
- **No Credit Card**: Free plan साठी credit card नको!

---

## 🆘 Problem असेल तर

1. Key activate झाली का ते तपासा (10-15 min wait करा)
2. Key correctly copy केली का ते तपासा (spaces नसावेत)
3. Server restart केला का ते तपासा
4. Browser console मध्ये errors तपासा (F12 दाबा)

---

## 📍 Current Status

**Gemini API**: ✅ Working (Chatbot active!)
**Weather API**: ⚠️ Mock mode (add key for real data)

तुम्ही weather API add केल्याशिवाय पण app वापरू शकता - demo weather data दाखवेल!
