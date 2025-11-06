CREATE DATABASE hospital;
USE hospital;
-- 1
SELECT * FROM nagpur_hospital_medical_dummy ; 

-- 2 Display only Patient_Name, Age, and Gender
SELECT Patient_Name, Age, Gender FROM nagpur_hospital_medical_dummy;

-- 3 List all unique hospital names
SELECT DISTINCT Hospital_Name FROM nagpur_hospital_medical_dummy;

-- 4 Get all patients who are admitted
SELECT Patient_ID, Patient_Name, Admission_Status FROM nagpur_hospital_medical_dummy WHERE Admission_Status = 'Admitted';

-- 5 Display all records sorted by Bill_Amount (highest first)
SELECT Patient_ID, Patient_Name, Bill_Amount FROM nagpur_hospital_medical_dummy ORDER BY Bill_Amount DESC;

-- 6 Find average age of all patients
SELECT AVG(Age) AS Average_Age FROM nagpur_hospital_medical_dummy;

-- 7 Count patients per hospital
SELECT Hospital_Name, COUNT(*) AS Total_Patients FROM nagpur_hospital_medical_dummy GROUP BY Hospital_Name;

-- 8 Get total Bill_Amount per Disease
SELECT Disease, SUM(Bill_Amount) AS Total_Bill FROM nagpur_hospital_medical_dummy GROUP BY Disease;

-- 9 Get the youngest and oldest patient for each disease
SELECT Disease,
       MIN(Age) AS Youngest_Patient,
       MAX(Age) AS Oldest_Patient FROM nagpur_hospital_medical_dummy GROUP BY Disease;
-- 10 Find patients whose Bill_Amount is above the overall average
SELECT Patient_ID, Patient_Name, Bill_Amount FROM nagpur_hospital_medical_dummy WHERE Bill_Amount > (SELECT AVG(Bill_Amount) FROM nagpur_hospital_medical_dummy);
