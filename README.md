# thyroid_classification
MATLAB implementation of thyroid disease classification using Particle Swarm Optimization (PSO) and Artificial Neural Network (ANN). The model optimizes neural network weights with PSO to enhance classification accuracy on thyroid patient data from Imam Reza Hospital, Larestan.
Thyroid Classification using PSO and Neural Network
Overview
This MATLAB project implements a thyroid classification system using a combination of Particle Swarm Optimization (PSO) and an Artificial Neural Network (ANN). The PSO algorithm optimizes the neural network's weights to improve classification accuracy.
Features
•	Loads thyroid dataset from an Excel file.
•	Preprocesses data (normalization and splitting into training/testing sets).
•	Uses a feedforward neural network for classification.
•	Optimizes ANN weights using PSO.
•	Evaluates model performance on test data.
Requirements
•	MATLAB (R2020a or later recommended)
•	Neural Network Toolbox
Installation
1.	Clone this repository: 
2.	git clone https://github.com/yourusername/thyroid-pso-ann.git
3.	Open MATLAB and navigate to the project directory.
4.	Ensure the dataset file Thyroid-dataset.csv is placed in the project directory.
Usage
1.	Run the MATLAB script: 
2.	run('thyroid_pso_ann.m')
3.	The script will: 
o	Load and preprocess the dataset.
o	Train the ANN using PSO.
o	Evaluate the model and print test accuracy.
File Structure
•	thyroid_pso_ann.m - Main MATLAB script for training and evaluation.
•	Thyroid-dataset.xlsx - Dataset file.
•	README.md - Project documentation.
Results
The final trained neural network's performance is evaluated using Mean Squared Error (MSE) on test data.
License
This project is licensed under the MIT License.
Author
•	Mohammadjavad Hosseinpoor
Acknowledgments
•	Inspired by AI and optimization research in medical diagnosis.
