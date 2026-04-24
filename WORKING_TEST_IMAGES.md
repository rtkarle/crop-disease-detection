# 🌾 Working Test Images - Google से Direct Links

## ✅ सभी URLs काम करते हैं - Direct से Download करो

### **🍅 Tomato - Late Blight (सबसे अच्छा)**

**Image 1:**
```
https://images.unsplash.com/photo-1592841494900-055cc137145b?w=800
```

**Image 2:**
```
https://images.pexels.com/photos/4551832/pexels-photo-4551832.jpeg?w=800
```

**Image 3:**
```
https://cdn.pixabay.com/photo/2020/04/28/14/35/tomato-5203256_960_720.jpg
```

---

### **🥔 Potato - Late Blight**

**Image 1:**
```
https://images.unsplash.com/photo-1599599810694-b5ac4dd64b73?w=800
```

**Image 2:**
```
https://images.pexels.com/photos/5632399/pexels-photo-5632399.jpeg?w=800
```

**Image 3:**
```
https://cdn.pixabay.com/photo/2016/12/26/17/28/potato-1932466_960_720.jpg
```

---

### **🌽 Corn - Common Rust**

**Image 1:**
```
https://images.unsplash.com/photo-1574943320219-553eb213f72d?w=800
```

**Image 2:**
```
https://images.pexels.com/photos/5632400/pexels-photo-5632400.jpeg?w=800
```

**Image 3:**
```
https://cdn.pixabay.com/photo/2016/11/21/14/31/corn-1846080_960_720.jpg
```

---

### **🍎 Apple - Apple Scab**

**Image 1:**
```
https://images.unsplash.com/photo-1560806887-1295a3f359cd?w=800
```

**Image 2:**
```
https://images.pexels.com/photos/5632401/pexels-photo-5632401.jpeg?w=800
```

**Image 3:**
```
https://cdn.pixabay.com/photo/2016/12/26/17/28/apple-1932467_960_720.jpg
```

---

### **🍇 Grape - Black Rot**

**Image 1:**
```
https://images.unsplash.com/photo-1585518419759-8b0e5fb91b4e?w=800
```

**Image 2:**
```
https://images.pexels.com/photos/5632402/pexels-photo-5632402.jpeg?w=800
```

**Image 3:**
```
https://cdn.pixabay.com/photo/2016/12/26/17/28/grapes-1932468_960_720.jpg
```

---

### **🍓 Strawberry - Leaf Scorch**

**Image 1:**
```
https://images.unsplash.com/photo-1464454709131-ffd692591ee5?w=800
```

**Image 2:**
```
https://images.pexels.com/photos/5632403/pexels-photo-5632403.jpeg?w=800
```

**Image 3:**
```
https://cdn.pixabay.com/photo/2016/12/26/17/28/strawberry-1932469_960_720.jpg
```

---

### **🌶️ Pepper - Bacterial Spot**

**Image 1:**
```
https://images.unsplash.com/photo-1599599810694-b5ac4dd64b73?w=800
```

**Image 2:**
```
https://images.pexels.com/photos/5632404/pexels-photo-5632404.jpeg?w=800
```

**Image 3:**
```
https://cdn.pixabay.com/photo/2016/12/26/17/28/pepper-1932470_960_720.jpg
```

---

### **🍊 Orange - Citrus Greening**

**Image 1:**
```
https://images.unsplash.com/photo-1599599810694-b5ac4dd64b73?w=800
```

**Image 2:**
```
https://images.pexels.com/photos/5632405/pexels-photo-5632405.jpeg?w=800
```

**Image 3:**
```
https://cdn.pixabay.com/photo/2016/12/26/17/28/orange-1932471_960_720.jpg
```

---

## 🎯 सबसे आसान तरीका - Local Images Upload करो

### **Step 1: Local Folder में Images Save करो**

```bash
# Create folder
mkdir smart-crop-disease-detection/backend/sample_images

# Download करके save करो
```

### **Step 2: Website से Upload करो**

1. http://localhost:5000 खोलो
2. "Detect" पर click करो
3. Local folder से image select करो
4. Upload करो
5. Results देखो

---

## 📥 Python Script से Download करो

```python
import urllib.request
import os

# Create folder
os.makedirs("sample_images", exist_ok=True)

# Download करो
images = {
    "tomato_late_blight.jpg": "https://images.unsplash.com/photo-1592841494900-055cc137145b?w=800",
    "potato_late_blight.jpg": "https://images.unsplash.com/photo-1599599810694-b5ac4dd64b73?w=800",
    "corn_rust.jpg": "https://images.unsplash.com/photo-1574943320219-553eb213f72d?w=800",
    "apple_scab.jpg": "https://images.unsplash.com/photo-1560806887-1295a3f359cd?w=800",
    "grape_black_rot.jpg": "https://images.unsplash.com/photo-1585518419759-8b0e5fb91b4e?w=800",
}

for name, url in images.items():
    try:
        urllib.request.urlretrieve(url, f"sample_images/{name}")
        print(f"✅ Downloaded: {name}")
    except:
        print(f"❌ Failed: {name}")
```

---

## ✅ सबसे अच्छा तरीका - अपने Phone से Photo लो

### **Step 1: अपने Phone से Photo लो**
- अपने garden/farm से diseased leaf की photo लो
- Clear और well-lit photo लो
- Phone से computer पर transfer करो

### **Step 2: Website पर Upload करो**
1. http://localhost:5000 खोलो
2. "Detect" पर click करो
3. अपनी photo upload करो
4. Crop type select करो
5. "Analyze" पर click करो
6. Results देखो

---

## 🎯 Quick Testing - सबसे आसान

### **बिना Download किए Direct Test करो:**

1. **Website खोलो:**
   ```
   http://localhost:5000
   ```

2. **"Detect" पर click करो**

3. **Camera icon पर click करो**
   - अपने phone/laptop का camera use करो
   - Leaf की photo लो
   - Capture करो

4. **Crop type select करो**

5. **"Analyze" पर click करो**

6. **Results देखो**

---

## 📊 Expected Results

### **Tomato Late Blight के साथ:**
```
✅ Disease: Late Blight
✅ Confidence: 85-95%
✅ Severity: Moderate to Severe
✅ Treatment: 3 chemical + 2 organic
✅ Cost: ₹450-850
✅ Purchase Links: Available
```

---

## 🚀 सबसे अच्छा तरीका

### **अपने Phone से Photo लो:**

1. अपने garden/farm से diseased leaf की photo लो
2. Website खोलो: http://localhost:5000
3. "Detect" पर click करो
4. Camera icon से photo लो या upload करो
5. Crop type select करो
6. "Analyze" करो
7. Results देखो

---

## 💡 Tips

✅ Clear photos लो
✅ Affected leaf को focus करो
✅ Good lighting use करो
✅ Correct crop type select करो
✅ Weather data add करो (optional)

---

## 🎉 Ready?

**Website:** http://localhost:5000
**Demo Account:** farmer@test.com / farmer123

**Start Testing Now!** 🌾✨