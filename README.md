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

Thyroid Patient Dataset - Imam Reza Hospital, Larestan
Overview
This dataset contains medical records of thyroid patients who visited Imam Reza Hospital in Larestan. The dataset includes 400 samples, where 300 represent patients diagnosed with thyroid disease, and 100 represent healthy individuals. The data can be used for classification tasks in medical diagnosis and machine learning research.
Dataset Details
•	Total Samples: 400
•	Thyroid Patients: 300 (labeled as 1)
•	Healthy Individuals: 100 (labeled as 0)
•	Source: Imam Reza Hospital, Larestan
•	Purpose: Thyroid disease classification and prediction
Dataset Details
•	Total Samples: 400
•	Thyroid Patients: 300 (labeled as 1)
•	Healthy Individuals: 100 (labeled as 0)
•	Source: Imam Reza Hospital, Larestan
•	Purpose: Thyroid disease classification and prediction
Ethical Considerations
This dataset has been prepared with full adherence to ethical standards. No personally identifiable information (PII) of patients is included, ensuring complete privacy and confidentiality of individuals.
Features
The dataset contains multiple features related to thyroid function, including but not limited to:
•	Patient demographics (age, gender, etc.)
•	Thyroid function test results
•	Clinical symptoms and history
•	Label: 0 indicates a healthy individual, while 1 indicates a thyroid patient.
Usage
This dataset is suitable for:
•	Machine learning model training for thyroid disease detection
•	Medical research on thyroid disorders
•	Feature selection and optimization in clinical diagnosis
License
This dataset is provided for academic and research purposes. Proper citation is required when using it in any publication.
Citation
If you use this dataset, please cite:
Mohammadjavad Hosseinpoor, Thyroid Patient Dataset - Imam Reza Hospital, Larestan, 2022.
Contact
For more details or inquiries, contact Mohammadjavad Hosseinpoor at hosseinpoor.mohammadjavad@gmail.com.


