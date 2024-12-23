create database Healthcare;
use Healthcare
CREATE TABLE Patients (
    PatientID INT auto_increment PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DOB DATE,
    Gender VARCHAR(10),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Address TEXT
)auto_increment=1;
CREATE TABLE Doctors (
    DoctorID INT auto_increment primary KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Specialization VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15)
)auto_increment=101;
CREATE TABLE AppointmentSlots (
    AppointmentSlotID INT PRIMARY KEY,
    DoctorID INT,
    Date DATE,
    StartTime TIME,
    EndTime TIME,
    Status VARCHAR(20),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

CREATE TABLE Appointments (
    AppointmentID INT auto_increment PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    AppointmentSlotID INT,
    AppointmentDate DATETIME,
    Status VARCHAR(20),
    Reason TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID),
    FOREIGN KEY (AppointmentSlotID) REFERENCES AppointmentSlots(AppointmentSlotID)
)auto_increment=201;

CREATE TABLE MedicalHistories (
    HistoryID INT auto_increment PRIMARY KEY,
    PatientID INT,
    Diagnosis VARCHAR(255),
    Treatment TEXT,
    DateOfVisit DATE,
    DoctorID INT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
)auto_increment=1001;

INSERT INTO Patients (FirstName, LastName, DOB, Gender, Email, PhoneNumber, Address) VALUES
('John', 'Doe', '1980-05-15', 'Male', 'john.doe@email.com', '555-1234', '123 Elm St, Springfield, IL'),
('Jane', 'Smith', '1992-09-25', 'Female', 'jane.smith@email.com', '555-5678', '456 Oak St, Springfield, IL'),
('Alice', 'Johnson', '1985-03-30', 'Female', 'alice.johnson@email.com', '555-8765', '789 Pine St, Springfield, IL'),
('Bob', 'Williams', '1978-11-10', 'Male', 'bob.williams@email.com', '555-4321', '101 Maple Ave, Springfield, IL'),
('Charlie', 'Brown', '2000-02-20', 'Male', 'charlie.brown@email.com', '555-1112', '102 Birch Ln, Springfield, IL'),
('Emily', 'Davis', '1995-07-05', 'Female', 'emily.davis@email.com', '555-2233', '203 Cedar Rd, Springfield, IL'),
('Michael', 'Miller', '1983-12-15', 'Male', 'michael.miller@email.com', '555-3344', '204 Pinewood Dr, Springfield, IL'),
('Sarah', 'Wilson', '1990-06-25', 'Female', 'sarah.wilson@email.com', '555-4455', '305 Birchwood Ave, Springfield, IL'),
('David', 'Moore', '1975-04-10', 'Male', 'david.moore@email.com', '555-5566', '406 Redwood Dr, Springfield, IL'),
('Olivia', 'Taylor', '1988-08-14', 'Female', 'olivia.taylor@email.com', '555-6677', '507 Ash Rd, Springfield, IL'),
('James', 'Anderson', '1998-01-01', 'Male', 'james.anderson@email.com', '555-7788', '608 Maplewood Ln, Springfield, IL'),
('Sophia', 'Thomas', '1982-10-30', 'Female', 'sophia.thomas@email.com', '555-8899', '709 Oakwood Blvd, Springfield, IL'),
('Lucas', 'Jackson', '2005-05-10', 'Male', 'lucas.jackson@email.com', '555-9900', '810 Willow Dr, Springfield, IL'),
('Mia', 'White', '1999-03-15', 'Female', 'mia.white@email.com', '555-1113', '911 Fir St, Springfield, IL'),
('Daniel', 'Harris', '1991-12-18', 'Male', 'daniel.harris@email.com', '555-2234', '123 Pinehill Ave, Springfield, IL'),
('Isabella', 'Clark', '1987-06-27', 'Female', 'isabella.clark@email.com', '555-3345', '234 Cedarwood Dr, Springfield, IL'),
('Matthew', 'Lewis', '1972-09-22', 'Male', 'matthew.lewis@email.com', '555-4456', '345 Birch Ln, Springfield, IL'),
('Charlotte', 'Young', '1993-11-12', 'Female', 'charlotte.young@email.com', '555-5567', '456 Redwood Ave, Springfield, IL'),
('Ethan', 'King', '2001-05-01', 'Male', 'ethan.king@email.com', '555-6678', '567 Maple St, Springfield, IL'),
('Amelia', 'Scott', '1997-02-17', 'Female', 'amelia.scott@email.com', '555-7789', '678 Ashwood Blvd, Springfield, IL'),
('Henry', 'Green', '1986-07-30', 'Male', 'henry.green@email.com', '555-8890', '789 Firwood Rd, Springfield, IL'),
('Avery', 'Adams', '1990-04-12', 'Female', 'avery.adams@email.com', '555-9901', '890 Pine Dr, Springfield, IL'),
('Sebastian', 'Nelson', '1994-10-09', 'Male', 'sebastian.nelson@email.com', '555-1114', '123 Maplewood Rd, Springfield, IL'),
('Zoe', 'Carter', '1996-08-24', 'Female', 'zoe.carter@email.com', '555-2235', '234 Cedar Ln, Springfield, IL'),
('Jack', 'Mitchell', '1980-01-29', 'Male', 'jack.mitchell@email.com', '555-3346', '345 Birchwood Blvd, Springfield, IL'),
('Grace', 'Perez', '1999-04-13', 'Female', 'grace.perez@email.com', '555-4457', '456 Redwood Dr, Springfield, IL'),
('Alexander', 'Roberts', '1984-12-05', 'Male', 'alexander.roberts@email.com', '555-5568', '567 Pinewood Ave, Springfield, IL'),
('Lily', 'Evans', '1992-10-17', 'Female', 'lily.evans@email.com', '555-6679', '678 Firwood Ln, Springfield, IL'),
('Jacob', 'Wright', '1989-02-03', 'Male', 'jacob.wright@email.com', '555-7780', '789 Cedar Rd, Springfield, IL'),
('Ella', 'Martinez', '2002-07-22', 'Female', 'ella.martinez@email.com', '555-8891', '890 Oakwood Ave, Springfield, IL'),
('Benjamin', 'Hernandez', '1981-11-14', 'Male', 'benjamin.hernandez@email.com', '555-9902', '123 Pine St, Springfield, IL');

INSERT INTO Doctors (FirstName, LastName, Specialization, Email, PhoneNumber) VALUES
('John', 'Doe', 'Cardiologist', 'john.doe@healthcare.com', '555-1011'),
('Jane', 'Smith', 'Neurologist', 'jane.smith@healthcare.com', '555-1022'),
('Robert', 'Johnson', 'Pediatrician', 'robert.johnson@healthcare.com', '555-1033'),
('Emily', 'Williams', 'Dermatologist', 'emily.williams@healthcare.com', '555-1044'),
('Michael', 'Brown', 'Orthopedic', 'michael.brown@healthcare.com', '555-1055'),
('Sarah', 'Davis', 'Gynecologist', 'sarah.davis@healthcare.com', '555-1066'),
('David', 'Miller', 'Radiologist', 'david.miller@healthcare.com', '555-1077'),
('Olivia', 'Wilson', 'Psychiatrist', 'olivia.wilson@healthcare.com', '555-1088'),
('James', 'Moore', 'Surgeon', 'james.moore@healthcare.com', '555-1099'),
('Sophia', 'Taylor', 'Oncologist', 'sophia.taylor@healthcare.com', '555-1100'),
('William', 'Anderson', 'ENT Specialist', 'william.anderson@healthcare.com', '555-1111'),
('Charlotte', 'Thomas', 'Endocrinologist', 'charlotte.thomas@healthcare.com', '555-1122'),
('Lucas', 'Jackson', 'Gastroenterologist', 'lucas.jackson@healthcare.com', '555-1133'),
('Mia', 'White', 'Ophthalmologist', 'mia.white@healthcare.com', '555-1144'),
('Daniel', 'Harris', 'Urologist', 'daniel.harris@healthcare.com', '555-1155'),
('Isabella', 'Clark', 'Nephrologist', 'isabella.clark@healthcare.com', '555-1166'),
('Matthew', 'Lewis', 'Pulmonologist', 'matthew.lewis@healthcare.com', '555-1177'),
('Grace', 'Young', 'Rheumatologist', 'grace.young@healthcare.com', '555-1188'),
('Ethan', 'King', 'Vascular Surgeon', 'ethan.king@healthcare.com', '555-1199'),
('Amelia', 'Scott', 'Family Physician', 'amelia.scott@healthcare.com', '555-1200'),
('Henry', 'Green', 'Plastic Surgeon', 'henry.green@healthcare.com', '555-1211'),
('Avery', 'Adams', 'Podiatrist', 'avery.adams@healthcare.com', '555-1222'),
('Sebastian', 'Nelson', 'Hematologist', 'sebastian.nelson@healthcare.com', '555-1233'),
('Zoe', 'Carter', 'Infectious Disease Specialist', 'zoe.carter@healthcare.com', '555-1244'),
('Jack', 'Mitchell', 'Anesthesiologist', 'jack.mitchell@healthcare.com', '555-1255'),
('Lily', 'Evans', 'Geriatrician', 'lily.evans@healthcare.com', '555-1266'),
('Jacob', 'Wright', 'Chiropractor', 'jacob.wright@healthcare.com', '555-1277'),
('Ella', 'Martinez', 'Psychologist', 'ella.martinez@healthcare.com', '555-1288'),
('Benjamin', 'Hernandez', 'General Surgeon', 'benjamin.hernandez@healthcare.com', '555-1299');

INSERT INTO AppointmentSlots (AppointmentSlotID, DoctorID, Date, StartTime, EndTime, Status) VALUES
(1, 101, '2024-12-14', '08:00:00', '09:00:00', 'Available'),
(2, 101, '2024-12-15', '09:00:00', '10:00:00', 'Available'),
(3, 102, '2024-12-15', '08:30:00', '09:30:00', 'Available'),
(4, 102, '2024-12-15', '10:00:00', '11:00:00', 'Available'),
(5, 103, '2024-12-15', '08:00:00', '09:00:00', 'Booked'),
(6, 103, '2024-12-15', '09:00:00', '10:00:00', 'Available'),
(7, 104, '2024-12-15', '08:30:00', '09:30:00', 'Available'),
(8, 104, '2024-12-15', '09:30:00', '10:30:00', 'Available'),
(9, 105, '2024-12-15', '10:00:00', '11:00:00', 'Booked'),
(10, 105, '2024-12-15', '11:00:00', '12:00:00', 'Available'),
(11, 106, '2024-12-16', '08:00:00', '09:00:00', 'Available'),
(12, 106, '2024-12-16', '09:00:00', '10:00:00', 'Available'),
(13, 107, '2024-12-16', '10:00:00', '11:00:00', 'Available'),
(14, 107, '2024-12-16', '11:00:00', '12:00:00', 'Booked'),
(15, 108, '2024-12-16', '08:30:00', '09:30:00', 'Available'),
(16, 108, '2024-12-16', '09:30:00', '10:30:00', 'Available'),
(17, 109, '2024-12-16', '08:00:00', '09:00:00', 'Available'),
(18, 109, '2024-12-16', '09:00:00', '10:00:00', 'Booked'),
(19, 110, '2024-12-16', '10:00:00', '11:00:00', 'Available'),
(20, 110, '2024-12-16', '11:00:00', '12:00:00', 'Available'),
(21, 101, '2024-12-17', '08:00:00', '09:00:00', 'Available'),
(22, 101, '2024-12-17', '09:00:00', '10:00:00', 'Booked'),
(23, 102, '2024-12-17', '08:30:00', '09:30:00', 'Available'),
(24, 102, '2024-12-17', '09:30:00', '10:30:00', 'Available'),
(25, 103, '2024-12-17', '10:00:00', '11:00:00', 'Available'),
(26, 103, '2024-12-17', '11:00:00', '12:00:00', 'Booked'),
(27, 104, '2024-12-17', '08:00:00', '09:00:00', 'Available'),
(28, 104, '2024-12-17', '09:00:00', '10:00:00', 'Available'),
(29, 105, '2024-12-17', '10:00:00', '11:00:00', 'Available'),
(30, 105, '2024-12-17', '11:00:00', '12:00:00', 'Booked');

INSERT INTO Appointments (PatientID, DoctorID, AppointmentSlotID, AppointmentDate, Status, Reason) VALUES
(1, 101, 1, '2024-12-15 08:00:00', 'Booked', 'Annual checkup'),
(2, 101, 2, '2024-12-15 09:00:00', 'Available', 'Routine checkup'),
(3, 102, 3, '2024-12-15 08:30:00', 'Booked', 'Migraine treatment'),
(4, 102, 4, '2024-12-15 10:00:00', 'Available', 'Neurological evaluation'),
(5, 103, 5, '2024-12-15 08:00:00', 'Cancelled', 'Pediatric checkup'),
(6, 103, 6, '2024-12-15 09:00:00', 'Booked', 'Vaccination'),
(7, 104, 7, '2024-12-15 08:30:00', 'Available', 'Skin rash treatment'),
(8, 104, 8, '2024-12-15 09:30:00', 'Booked', 'Eczema consultation'),
(9, 105, 9, '2024-12-15 10:00:00', 'Booked', 'Fracture checkup'),
(10, 105, 10, '2024-12-15 11:00:00', 'Available', 'Arthritis evaluation'),
(11, 106, 11, '2024-12-16 08:00:00', 'Booked', 'Chest pain evaluation'),
(12, 106, 12, '2024-12-16 09:00:00', 'Available', 'Lung infection treatment'),
(13, 107, 13, '2024-12-16 10:00:00', 'Booked', 'Mental health assessment'),
(14, 107, 14, '2024-12-16 11:00:00', 'Available', 'Depression consultation'),
(15, 108, 15, '2024-12-16 08:30:00', 'Booked', 'Thyroid test'),
(16, 108, 16, '2024-12-16 09:30:00', 'Available', 'Hormone imbalance check'),
(17, 109, 17, '2024-12-16 08:00:00', 'Booked', 'Hearing test'),
(18, 109, 18, '2024-12-16 09:00:00', 'Cancelled', 'Ear infection treatment'),
(19, 110, 19, '2024-12-16 10:00:00', 'Booked', 'Post-surgery follow-up'),
(20, 110, 20, '2024-12-16 11:00:00', 'Available', 'Routine checkup'),
(21, 101, 21, '2024-12-17 08:00:00', 'Available', 'Routine checkup'),
(22, 101, 22, '2024-12-17 09:00:00', 'Booked', 'Blood pressure check'),
(23, 102, 23, '2024-12-17 08:30:00', 'Available', 'Memory loss assessment'),
(24, 102, 24, '2024-12-17 09:30:00', 'Booked', 'Headache consultation'),
(25, 103, 25, '2024-12-17 10:00:00', 'Booked', 'Fever checkup'),
(26, 103, 26, '2024-12-17 11:00:00', 'Cancelled', 'Vaccination'),
(27, 104, 27, '2024-12-17 08:00:00', 'Available', 'Acne treatment'),
(28, 104, 28, '2024-12-17 09:00:00', 'Booked', 'Skin cancer screening'),
(29, 105, 29, '2024-12-17 10:00:00', 'Available', 'Knee pain consultation'),
(30, 105, 30, '2024-12-17 11:00:00', 'Booked', 'Post-surgery rehabilitation');

INSERT INTO MedicalHistories (PatientID, Diagnosis, Treatment, DateOfVisit, DoctorID) VALUES
(1, 'Hypertension', 'Prescribed beta-blockers', '2024-11-10', 101),
(2, 'Migraine', 'Prescribed pain relief medication', '2024-11-12', 102),
(3, 'Common Cold', 'Rest, hydration, and over-the-counter medication', '2024-11-15', 103),
(4, 'Skin Rash', 'Topical steroids', '2024-11-18', 104),
(5, 'Fractured Leg', 'Plaster cast and pain relief', '2024-11-20', 105),
(6, 'Asthma', 'Inhalers and regular check-ups', '2024-11-22', 106),
(7, 'Seasonal Allergies', 'Antihistamines and nasal spray', '2024-11-23', 107),
(8, 'Arthritis', 'Anti-inflammatory medications', '2024-11-25', 108),
(9, 'Gastroenteritis', 'Hydration and oral rehydration therapy', '2024-11-26', 109),
(10, 'Diabetes Type 2', 'Insulin therapy and dietary changes', '2024-11-28', 110),
(11, 'High Cholesterol', 'Statins and dietary modifications', '2024-12-01', 101),
(12, 'Bronchitis', 'Antibiotics and chest therapy', '2024-12-02', 102),
(13, 'Back Pain', 'Physical therapy and pain relievers', '2024-12-05', 103),
(14, 'Ear Infection', 'Antibiotic ear drops', '2024-12-07', 104),
(15, 'Sinusitis', 'Decongestants and nasal irrigation', '2024-12-08', 105),
(16, 'Depression', 'Psychotherapy and antidepressants', '2024-12-10', 106),
(17, 'Tonsillitis', 'Pain relievers and rest', '2024-12-12', 107),
(18, 'Osteoporosis', 'Calcium supplements and exercise', '2024-12-13', 108),
(19, 'Pneumonia', 'Antibiotics and rest', '2024-12-14', 109),
(20, 'Gout', 'Anti-inflammatory medication and diet control', '2024-12-15', 110),
(21, 'Stomach Ulcers', 'Antacids and proton pump inhibitors', '2024-12-16', 101),
(22, 'Anemia', 'Iron supplements and dietary changes', '2024-12-17', 102),
(23, 'Chronic Fatigue Syndrome', 'Cognitive behavioral therapy and pacing', '2024-12-18', 103),
(24, 'Urinary Tract Infection', 'Antibiotics and pain relievers', '2024-12-19', 104),
(25, 'Sleep Apnea', 'CPAP therapy and lifestyle changes', '2024-12-20', 105),
(26, 'Heartburn', 'Antacids and dietary changes', '2024-12-21', 106),
(27, 'Lung Cancer', 'Chemotherapy and radiotherapy', '2024-12-22', 107),
(28, 'Kidney Stones', 'Pain relief and hydration', '2024-12-23', 108),
(29, 'Celiac Disease', 'Gluten-free diet and vitamin supplements', '2024-12-24', 109),
(30, 'Thyroid Disorder', 'Thyroid hormone replacement therapy', '2024-12-25', 110);

UPDATE Patients 
SET PhoneNumber = '555-1311', Address = '124 Greenway Blvd, Springfield, IL' 
WHERE FirstName = 'Sam' AND LastName = 'Green';

SELECT * 
FROM AppointmentSlots 
WHERE DoctorID = (SELECT DoctorID FROM Doctors WHERE FirstName = 'Emily' AND LastName = 'Williams') 
AND Date = '2024-12-16' 
AND Status = 'Available';

SELECT a.AppointmentID, d.FirstName AS DoctorFirstName, d.LastName AS DoctorLastName, 
       a.AppointmentDate, a.Status, a.Reason 
FROM Appointments a
JOIN Doctors d ON a.DoctorID = d.DoctorID
WHERE a.PatientID = 3;

UPDATE Appointments 
SET Status = 'Cancelled' 
WHERE AppointmentID = 5;

SELECT COUNT(*) FROM Appointments WHERE DoctorID = 101;

SELECT mh.Diagnosis, COUNT(DISTINCT mh.PatientID) AS PatientCount
FROM MedicalHistories mh
GROUP BY mh.Diagnosis;

INSERT INTO AppointmentSlots (AppointmentSlotID, DoctorID, Date, StartTime, EndTime, Status) 
VALUES (31, 106, '2024-12-18', '08:00:00', '09:00:00', 'Available');

SELECT FirstName, LastName
FROM Patients
WHERE PatientID IN (
    SELECT PatientID
    FROM MedicalHistories
    WHERE DoctorID = 101 AND Diagnosis = 'Hypertension'
);

DELIMITER //
CREATE TRIGGER CancelNoShowAppointments
AFTER UPDATE ON Appointments
FOR EACH ROW
BEGIN
    IF NEW.Status = 'Booked' AND TIMESTAMPDIFF(HOUR, NEW.AppointmentDate, NOW()) > 48 AND NOT EXISTS (SELECT 1 FROM MedicalHistories WHERE PatientID = NEW.PatientID AND DoctorID = NEW.DoctorID) THEN
        UPDATE Appointments
        SET Status = 'Cancelled'
        WHERE AppointmentID = NEW.AppointmentID;
    END IF;
END;
//
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE GetMedicalHistory(IN p_PatientID INT)
BEGIN
    SELECT mh.HistoryID, mh.Diagnosis, mh.Treatment, mh.DateOfVisit, d.FirstName AS DoctorFirstName, d.LastName AS DoctorLastName
    FROM MedicalHistories mh
    JOIN Doctors d ON mh.DoctorID = d.DoctorID
    WHERE mh.PatientID = p_PatientID;
END $$
DELIMITER ;
CALL GetMedicalHistory(1);





