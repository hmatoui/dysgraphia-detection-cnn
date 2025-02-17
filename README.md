# Dysgraphia Detection Using AI and Deep Learning

This study presents a machine learning framework for the early detection of dysgraphia, a neurodevelopmental disorder characterized by impaired handwriting abilities, in children aged 8–15 years. Leveraging convolutional neural networks (CNNs), we developed a diagnostic tool to analyze digitized handwriting samples acquired through a WACOM Intuos Pro Large Tablet. The dataset comprised kinematic and spatial data from 120 participants (63 neurotypical, 57 dysgraphic), with model performance enhanced through data augmentation. Results demonstrate a classification accuracy of 89% using augmented multimodal features, highlighting the efficacy of integrating static (e.g., pressure, tilt) and dynamic (e.g., velocity, stroke discontinuity) parameters for robust dysgraphia identification.

## Overview

An experiment was conducted on a dataset of 120 school-aged children, including:

- **63 children** with normal development.
- **57 children** diagnosed with dysgraphia.

Handwriting data were collected using a **WACOM Intuos Pro Large Tablet** operating at a sampling frequency of 125 Hz. This device captured both static and dynamic metrics of handwriting, including:

- **Spatial coordinates (x, y)**
- **Pen pressure**
- **Azimuth and altitude angles**
- **On-surface and in-air movements**

The dataset was made publicly available by the original authors in their GitHub repository [Dysgraphia-detection-through-machine-learning]([GitHub - peet292929/Dysgraphia-detection-through-machine-learning: Dysgraphia detection through machine learning](https://github.com/peet292929/Dysgraphia-detection-through-machine-learning)).

## Data Preparation

1. **Data Collection**:
   
   - Tasks involved writing letters, words, pseudo-words, and sentences in varying complexity.
   - Movements were recorded for both **on-surface (contact)** and **in-air (non-contact)** writing.

2. **Preprocessing**:
   
   - Data from XML files were parsed to extract x, y coordinates, pressure, and other metrics.
   - Coordinates were transformed into grayscale images representing handwriting patterns.

3. **Feature Engineering**:
   
   - Three categories of features were considered:
     - **With contact**: Features when the pen touches the surface.
     - **Without contact**: Features when the pen is in the air.
     - **Combined features**: A combination of on-surface and in-air features.

### Deep Learning Approach

A **Convolutional Neural Network (CNN)** was designed with three convolutional layers followed by ReLU activations and max pooling. The final fully connected layer with a sigmoid activation function classified handwriting samples as either dysgraphic or non-dysgraphic.

### Hyperparameter Tuning

To optimize the model, a **nested cross-validation** technique was employed. This method ensures robust evaluation of hyperparameters by using an inner loop for hyperparameter tuning and an outer loop for model validation.

### Data Augmentation

Techniques such as scaling, rotation, and shearing were applied to increase dataset diversity, which significantly enhanced model performance.

### Model Training and Evaluation

- **Stratified Cross-Validation**: Used to maintain balanced class proportions in training and validation splits.
- **Metrics Evaluated**:
  - Accuracy
  - Sensitivity (Recall)
  - Specificity

## Results

The CNN achieved the following results:

| Feature Set              | Accuracy | Sensitivity | Specificity |
| ------------------------ | -------- | ----------- | ----------- |
| With Contact (Raw)       | 69%      | 45%         | 71%         |
| With Contact (Aug.)      | 89%      | 51%         | 78%         |
| Without Contact (Raw)    | 80%      | 40%         | 63%         |
| Without Contact (Aug.)   | 69%      | 45%         | 71%         |
| Combined Features (Raw)  | 50%      | 60%         | 66%         |
| Combined Features (Aug.) | 80%      | 62%         | 72%         |

The best results were achieved using the augmented dataset with combined features, demonstrating that integrating contact and non-contact metrics enhances dysgraphia detection.

## Getting Started

[Project Setup](./docs/setup.md)
