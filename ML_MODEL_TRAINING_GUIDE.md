# 🌾 ML Model Training Guide - 20 Crops

## 📋 Overview

यह guide आपको 20 different crops के लिए ML model train करने में मदद करेगा जिससे आपको accurate disease detection मिलेगा।

---

## 🎯 20 Supported Crops

1. **Tomato** 🍅 - 10 diseases
2. **Potato** 🥔 - 3 diseases
3. **Pepper** 🌶️ - 2 diseases
4. **Corn** 🌽 - 4 diseases
5. **Strawberry** 🍓 - 2 diseases
6. **Squash** 🥒 - 2 diseases
7. **Grape** 🍇 - 4 diseases
8. **Apple** 🍎 - 4 diseases
9. **Blueberry** 🫐 - 1 disease
10. **Cherry** 🍒 - 2 diseases
11. **Peach** 🍑 - 2 diseases
12. **Orange** 🍊 - 2 diseases
13. **Soybean** 🌱 - 2 diseases
14. **Sugarcane** 🌾 - 2 diseases
15. **Tobacco** 🚬 - 2 diseases
16. **Watermelon** 🍉 - 2 diseases
17. **Mango** 🥭 - 2 diseases
18. **Coconut** 🥥 - 2 diseases
19. **Rice** 🍚 - 2 diseases
20. **Wheat** 🌾 - 2 diseases

**Total: 50+ Disease Classes**

---

## 🚀 Quick Start - 3 Steps

### Step 1: Download Training Data
```bash
cd smart-crop-disease-detection/backend
python download_training_data.py
```

### Step 2: Download PlantVillage Dataset
```bash
# Option A: From GitHub
git clone https://github.com/spMohanty/PlantVillage-Dataset.git
cp -r PlantVillage-Dataset/raw/color/* data/train/

# Option B: From Kaggle
# Download from: https://www.kaggle.com/datasets/vipoooool/new-plant-diseases-dataset
# Extract to: data/train/
```

### Step 3: Train Model
```bash
python train_with_data.py
```

---

## 📥 Detailed Setup Instructions

### 1. **Create Directory Structure**

```bash
cd smart-crop-disease-detection/backend
python download_training_data.py
```

यह command निम्नलिखित structure बनाएगा:
```
data/
├── train/
│   ├── Tomato/
│   │   ├── Late_blight/
│   │   ├── Early_blight/
│   │   ├── Bacterial_spot/
│   │   └── ... (other diseases)
│   ├── Potato/
│   ├── Pepper/
│   └── ... (other crops)
└── test/
    └── ... (same structure)
```

### 2. **Download Training Data**

#### Option A: PlantVillage Dataset (Recommended)
```bash
# Download from GitHub
git clone https://github.com/spMohanty/PlantVillage-Dataset.git

# Copy to training directory
cp -r PlantVillage-Dataset/raw/color/* data/train/

# Or download ZIP
wget https://github.com/spMohanty/PlantVillage-Dataset/archive/master.zip
unzip master.zip
cp -r PlantVillage-Dataset-master/raw/color/* data/train/
```

#### Option B: Kaggle Dataset
```bash
# Install Kaggle CLI
pip install kaggle

# Download dataset
kaggle datasets download -d vipoooool/new-plant-diseases-dataset

# Extract
unzip new-plant-diseases-dataset.zip
cp -r New\ Plant\ Diseases\ Dataset\(Augmented\)/train/* data/train/
```

#### Option C: Use Test Images
```bash
# Download individual test images from test_images_links.md
# Place them in: data/train/{crop}/{disease}/
```

### 3. **Verify Data Structure**

```bash
# Check if data is organized correctly
ls -la data/train/Tomato/Late_blight/
# Should show: image1.jpg, image2.jpg, ...

# Count total images
find data/train -name "*.jpg" | wc -l
# Should show: 5000+ images
```

### 4. **Train Model**

```bash
python train_with_data.py
```

**Expected Output:**
```
🌾 CropGuard AI - Model Training with Real Data
================================================

📊 Dataset Statistics:
   • Total Images: 54,306
   • Total Classes: 50
   • Image Size: 224x224
   • Batch Size: 32
   • Epochs: 50

🚀 Starting Training...
Epoch 1/50
1000/1000 [==============================] - 120s 120ms/step - loss: 2.1234 - accuracy: 0.6543 - val_loss: 1.8765 - val_accuracy: 0.7234
...

✅ Training Complete!
📊 Final Results:
   ✅ Model: models/comprehensive_model.h5
   ✅ Classes: 50
   ✅ Accuracy: 92.34%
```

---

## 🎯 Training Configuration

### Model Architecture
```
Input (224x224x3)
    ↓
MobileNetV2 (Pre-trained on ImageNet)
    ↓
Global Average Pooling
    ↓
Dense(512) + ReLU + BatchNorm + Dropout(0.5)
    ↓
Dense(256) + ReLU + BatchNorm + Dropout(0.3)
    ↓
Dense(128) + ReLU + Dropout(0.2)
    ↓
Dense(50) + Softmax (Output)
```

### Training Parameters
- **Model**: MobileNetV2 (Transfer Learning)
- **Input Size**: 224x224 pixels
- **Batch Size**: 32
- **Epochs**: 50
- **Learning Rate**: 0.001 (with decay)
- **Optimizer**: Adam
- **Loss Function**: Categorical Crossentropy
- **Validation Split**: 20%
- **Data Augmentation**: Yes (rotation, zoom, shift, etc.)

### Expected Training Time
- **With GPU (NVIDIA)**: 2-4 hours
- **With GPU (Apple Silicon)**: 3-5 hours
- **With CPU**: 8-12 hours

---

## 📊 Test Images - Direct Links

### Tomato
- **Late Blight**: https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Phytophthora_infestans_on_tomato_leaf.jpg/640px-Phytophthora_infestans_on_tomato_leaf.jpg
- **Early Blight**: https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Alternaria_solani_on_tomato.jpg/640px-Alternaria_solani_on_tomato.jpg
- **Healthy**: https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Tomato_je.jpg/640px-Tomato_je.jpg

### Potato
- **Late Blight**: https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Phytophthora_infestans_on_potato.jpg/640px-Phytophthora_infestans_on_potato.jpg
- **Early Blight**: https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Alternaria_solani_potato.jpg/640px-Alternaria_solani_potato.jpg
- **Healthy**: https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Potato_and_cross_section.jpg/640px-Potato_and_cross_section.jpg

### Corn
- **Common Rust**: https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Puccinia_sorghi_on_corn.jpg/640px-Puccinia_sorghi_on_corn.jpg
- **Northern Leaf Blight**: https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Exserohilum_turcicum.jpg/640px-Exserohilum_turcicum.jpg
- **Healthy**: https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Corn_cob.jpg/640px-Corn_cob.jpg

### Apple
- **Apple Scab**: https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Venturia_inaequalis.jpg/640px-Venturia_inaequalis.jpg
- **Black Rot**: https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Botryosphaeria_obtusa.jpg/640px-Botryosphaeria_obtusa.jpg
- **Healthy**: https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Red_Apple.jpg/640px-Red_Apple.jpg

### Grape
- **Black Rot**: https://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/Guignardia_bidwellii.jpg/640px-Guignardia_bidwellii.jpg
- **Powdery Mildew**: https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Uncinula_necator.jpg/640px-Uncinula_necator.jpg
- **Healthy**: https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Table_grapes.jpg/640px-Table_grapes.jpg

**👉 See test_images_links.md for all 20 crops!**

---

## 🔧 After Training

### 1. Update Configuration
```bash
# Edit config.py
MODEL_PATH = "models/comprehensive_model.h5"
```

### 2. Restart Server
```bash
python app.py
```

### 3. Test Detection
```bash
python test_detection.py
```

### 4. Access Web App
```
http://localhost:5000
```

---

## 📈 Monitoring Training

### Real-time Metrics
```
Epoch 1/50
1000/1000 [==============================] - 120s 120ms/step
loss: 2.1234 - accuracy: 0.6543 - val_loss: 1.8765 - val_accuracy: 0.7234
```

### Training Plots
After training, check: `models/training_history.png`

### Model Performance
- **Training Accuracy**: Should increase over epochs
- **Validation Accuracy**: Should stabilize around 85-95%
- **Loss**: Should decrease over epochs

---

## 🐛 Troubleshooting

### Issue: "No training images found"
**Solution**: 
```bash
# Check data directory
ls -la data/train/
# Should show crop folders

# Check if images exist
find data/train -name "*.jpg" | head -5
```

### Issue: "Out of Memory" Error
**Solution**:
```python
# Reduce batch size in train_with_data.py
BATCH_SIZE = 16  # Instead of 32
```

### Issue: "Model not improving"
**Solution**:
```python
# Increase training data
# Or adjust learning rate
learning_rate = 0.0001  # Lower value
```

### Issue: "Slow Training"
**Solution**:
```bash
# Use GPU
# Install CUDA and cuDNN
# Or reduce image size to 128x128
```

---

## 📊 Expected Results

### Accuracy by Crop
- **Tomato**: 92-95%
- **Potato**: 90-93%
- **Corn**: 88-91%
- **Apple**: 89-92%
- **Grape**: 87-90%
- **Others**: 85-90%

### Overall Accuracy
- **Expected**: 90%+
- **With more data**: 95%+

---

## 🎓 Advanced Options

### Fine-tune Base Model
```python
# Unfreeze last layers
base_model.trainable = True
for layer in base_model.layers[:-30]:
    layer.trainable = False
```

### Use Different Architecture
```python
# Try EfficientNet
base_model = keras.applications.EfficientNetB0(...)

# Or ResNet50
base_model = keras.applications.ResNet50(...)
```

### Data Augmentation
```python
# More aggressive augmentation
train_datagen = ImageDataGenerator(
    rotation_range=40,
    width_shift_range=0.3,
    height_shift_range=0.3,
    zoom_range=0.3,
    ...
)
```

---

## 📚 Resources

### Official Datasets
- **PlantVillage**: https://github.com/spMohanty/PlantVillage-Dataset
- **Kaggle**: https://www.kaggle.com/datasets/vipoooool/new-plant-diseases-dataset
- **ImageNet**: https://www.image-net.org/

### Research Papers
- **PlantVillage**: https://arxiv.org/abs/1604.04004
- **MobileNetV2**: https://arxiv.org/abs/1801.04381
- **Transfer Learning**: https://arxiv.org/abs/1411.1792

### Frameworks
- **TensorFlow**: https://www.tensorflow.org/
- **Keras**: https://keras.io/
- **PyTorch**: https://pytorch.org/

---

## ✅ Checklist

- [ ] Download training data
- [ ] Organize in correct directory structure
- [ ] Verify data (5000+ images)
- [ ] Run training script
- [ ] Monitor training progress
- [ ] Check final accuracy (90%+)
- [ ] Update config.py
- [ ] Restart server
- [ ] Test with web app
- [ ] Verify accurate predictions

---

## 🎉 Success!

Once training is complete:
1. ✅ Model saved: `models/comprehensive_model.h5`
2. ✅ Accuracy: 90%+
3. ✅ Ready for production
4. ✅ Accurate disease detection for 20 crops

**Your CropGuard AI system is now production-ready!** 🚀