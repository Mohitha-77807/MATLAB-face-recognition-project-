# Face Recognition System in MATLAB

## 📌 Project Overview
This project is a **Face Recognition System** developed in MATLAB. It detects and recognizes individuals in a group photo based on a predefined database of facial images (known faces). The system uses the **Computer Vision Toolbox** and **Deep Learning Toolbox** for face detection, feature extraction, and recognition.

---

## 🧠 Features
1. **Face Detection:**
   - Detects all faces in a given test image using the Viola-Jones algorithm.
   
2. **Face Recognition:**
   - Compares detected faces with known faces stored in the database.
   - Recognizes and labels individuals based on similarity scores.
   - Marks unrecognized faces as "Unknown."

3. **Visualization:**
   - Displays the group photo with bounding boxes around detected faces.
   - Labels recognized individuals with their names and confidence scores.

4. **Modular Design:**
   - Functions are split into separate files for ease of understanding and maintenance.

5. **Deep Learning Integration:**
   - Uses pretrained **AlexNet** for feature extraction to improve recognition accuracy.

6. **Easy Database Management:**
   - Add or remove individuals from the database by updating the `data/known_faces` folder.

---


---

## 🚀 How to Use

### Step 1: Setup Environment
1. Install MATLAB (R2020a or later).
2. Ensure the following toolboxes are installed:
   - **Computer Vision Toolbox**
   - **Deep Learning Toolbox**

### Step 2: Prepare Data
1. Add images of known individuals in the `data/known_faces` folder.
   - Format: `personX.jpg` (e.g., `person1.jpg`, `person2.jpg`).
2. Place test images (group photos) in the `data/test_images` folder.

### Step 3: Run the System
1. Open MATLAB.
2. Navigate to the project folder.
3. Run `main.m`:

4. View results:
- Annotated group photo will be saved in the `results` folder as `annotated_group.jpg`.
- The image will also be displayed in MATLAB.

---

## 🛠 Configuration

### Parameters (in `main.m`)
- **Threshold:** Adjust similarity threshold for recognition (`params.threshold`). Default is `0.6`.
- **Model:** Change deep learning model (`params.modelName`). Default is `'alexnet'`.
- **Min Face Size:** Set minimum face size for detection (`params.minFaceSize`). Default is `[50 50]`.

---

## 📊 Sample Output

### Input:
A group photo (`data/test_images/group.jpg`) containing known and unknown individuals.

### Output:
Annotated image with bounding boxes, names, and confidence scores saved as `results/annotated_group.jpg`.

---

## 🔧 Troubleshooting

1. **No Faces Detected:**
- Ensure faces in the test image are clear and not obstructed.
- Adjust `params.minFaceSize` in `main.m`.

2. **Low Recognition Accuracy:**
- Use high-resolution images for known faces.
- Increase training data per individual.
- Experiment with different deep learning models (e.g., ResNet, GoogLeNet).

3. **Toolbox Errors:**
- Verify that both Computer Vision Toolbox and Deep Learning Toolbox are installed.

---

## 🎉 Bonus Features (Optional)
1. **GUI Integration:** Add a graphical user interface for uploading images and viewing results.
2. **Improved Models:** Replace AlexNet with ResNet or GoogLeNet for better feature extraction.
3. **Face Alignment:** Preprocess images to align faces before feature extraction.

---

## 👨‍💻 Author
Developed by `Mohitha`.

For questions or feedback, contact `Nagamohithakummari`.

---

Enjoy using this Face Recognition System! 😊

