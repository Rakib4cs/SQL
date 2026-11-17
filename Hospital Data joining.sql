create database HospitalIDB;
use HospitalIDB;

create table Patient(
Patient_id int identity(1,1) primary key,
Patient_name varchar(100) not null,
Patient_age int ,
Patient_gender varchar(10),
patient_contact varchar(100)
);
INSERT INTO Patient
(patient_name, patient_age, patient_gender, patient_contact)
VALUES
('Rakib', 22, 'Male', '01711111111'),
('Huzaifa', 21, 'Female', '01822222222'),
('Siam', 25, 'Male', '01933333333');


create table Doctor(
doctor_id int identity(1,1) primary key,
doctor_name varchar(100),
specialization varchar(100),
doctor_contact varchar(100)
);
insert into Doctor
(doctor_name, specialization, doctor_contact)
values
('Dr. Rahman', 'Cardiology', '01744444444'),
('Dr. Karim', 'Orthopedics', '01855555555');


create table Appointment(
appointment_id int identity(1,1) primary key,
patient_id int,
doctor_id int,
foreign key (patient_id) references Patient(patient_id),
foreign key (doctor_id) references Doctor(doctor_id),
appointment_date date,
appointment_status varchar(50)
);
insert into Appointment
(patient_id, doctor_id, appointment_date, appointment_status)
values
(1, 1, '2026-10-20', 'Completed'),
(2, 2, '2026-10-21', 'Completed'),
(3, 1, '2026-10-22', 'Scheduled');

create table Treatment(
treatment_id int identity(1,1) primary key,
appointment_id int,
treatment_description VARCHAR(255),
    treatment_cost DECIMAL(10,2),
    treatment_date DATE,
    foreign key (appointment_id) references Appointment(appointment_id)
);
insert into Treatment
(appointment_id, treatment_description, treatment_cost, treatment_date)
values
(1, 'Heart Checkup', 1500.00, '2026-10-20'),
(2, 'Bone X-Ray', 800.00, '2026-10-21'),
(3,'CBC',600.00,'2026-10-23');

select*from Patient
select*from Doctor
Select*from Appointment
Select*from Treatment

select
    Patient.patient_name,
    Doctor.doctor_name,
    Doctor.specialization,
    Appointment.appointment_date,
    Treatment.treatment_description,
    Treatment.treatment_cost,
    Treatment.treatment_date
from Treatment
inner join Appointment
    on Treatment.appointment_id = Appointment.appointment_id
inner join Patient
    on Appointment.patient_id = Patient.patient_id
inner join Doctor
    on Appointment.doctor_id = Doctor.doctor_id;

