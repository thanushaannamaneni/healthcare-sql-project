USE healthcare_db;

SELECT * FROM patients;
SELECT * FROM doctors;
SELECT * FROM appointments;

SELECT p.name AS patient, d.name AS doctor, a.appointment_date
FROM appointments a
JOIN patients p ON a.patient_id = p.patient_id
JOIN doctors d ON a.doctor_id = d.doctor_id;

SELECT doctor_id, COUNT(*) AS total_patients
FROM appointments
GROUP BY doctor_id
ORDER BY total_patients DESC
LIMIT 1;

SELECT SUM(amount) AS total_revenue
FROM payments;

SELECT patient_id, COUNT(*) AS visits
FROM appointments
GROUP BY patient_id
HAVING visits > 1;

CREATE INDEX idx_patient ON appointments(patient_id);
CREATE INDEX idx_doctor ON appointments(doctor_id);

SELECT 
    MONTH(payment_date) AS month,
    SUM(amount) AS revenue
FROM payments
GROUP BY MONTH(payment_date);

SELECT d.name
FROM doctors d
LEFT JOIN appointments a 
ON d.doctor_id = a.doctor_id
WHERE a.appointment_id IS NULL;

SELECT 
    patient_id,
    COUNT(*) AS visits,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS rank_position
FROM appointments
GROUP BY patient_id;
