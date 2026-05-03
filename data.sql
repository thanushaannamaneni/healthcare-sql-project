USE healthcare_db;

INSERT INTO patients (name, age, gender, phone) VALUES
('Ravi Kumar', 30, 'Male', '9876543210'),
('Anita Sharma', 25, 'Female', '9123456780'),
('Rahul Verma', 40, 'Male', '9988776655');

INSERT INTO doctors (name, specialization, experience) VALUES
('Dr. Mehta', 'Cardiology', 10),
('Dr. Rao', 'Dermatology', 8),
('Dr. Singh', 'Orthopedics', 12);

INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES
(1, 1, '2026-05-01', 'Completed'),
(2, 2, '2026-05-02', 'Completed'),
(1, 3, '2026-05-03', 'Pending'),
(3, 1, '2026-05-04', 'Completed');

INSERT INTO payments (appointment_id, amount, payment_date) VALUES
(1, 500.00, '2026-05-01'),
(2, 300.00, '2026-05-02'),
(4, 700.00, '2026-05-04');

INSERT INTO treatments (appointment_id, diagnosis, prescription) VALUES
(1, 'Heart checkup', 'Medication A'),
(2, 'Skin allergy', 'Ointment B'),
(4, 'Bone fracture', 'Rest + Calcium');
