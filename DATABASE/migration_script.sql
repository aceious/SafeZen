-- ----------------------------------------------------------------------------
-- PostgreSQL Migration
-- Schema safezen
-- ----------------------------------------------------------------------------

CREATE SCHEMA IF NOT EXISTS safezen;

-- ----------------------------------------------------------------------------
-- Table safezen.doctor_data
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS safezen.doctor_data (
  doctor_id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  profile_img TEXT NULL DEFAULT NULL,
  specialization VARCHAR(100) NULL DEFAULT NULL,
  qualification TEXT NULL DEFAULT NULL
);

-- ----------------------------------------------------------------------------
-- Table safezen.indtherapy
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS safezen.indtherapy (
  illness_id SERIAL PRIMARY KEY,
  illness_name VARCHAR(45) NULL DEFAULT NULL,
  illness_desc TEXT NULL DEFAULT NULL
);

-- ----------------------------------------------------------------------------
-- Table safezen.reltherapy
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS safezen.reltherapy (
  relillness_id SERIAL PRIMARY KEY,
  relillness_name VARCHAR(100) NOT NULL,
  relillness_desc TEXT NULL DEFAULT NULL
);

-- ----------------------------------------------------------------------------
-- Table safezen.user_data
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS safezen.user_data (
  "userId" SERIAL PRIMARY KEY,
  age INT NOT NULL,
  "noOfSessions" INT NULL DEFAULT NULL,
  "emailId" VARCHAR(55) NOT NULL,
  "Password" TEXT NOT NULL,
  "currappointmentId" INT NULL DEFAULT NULL,
  doctor_id INT NULL DEFAULT NULL,
  CONSTRAINT user_data_ibfk_2 FOREIGN KEY (doctor_id) REFERENCES safezen.doctor_data (doctor_id)
);

-- ----------------------------------------------------------------------------
-- Table safezen.indappointments
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS safezen.indappointments (
  appointmentid SERIAL PRIMARY KEY,
  description VARCHAR(500) NULL DEFAULT NULL,
  user_id INT NOT NULL,
  illness_id INT NOT NULL,
  date TEXT NULL DEFAULT NULL,
  "timeSlot" TEXT NULL DEFAULT NULL,
  CONSTRAINT indappointments_ibfk_1 FOREIGN KEY (illness_id) REFERENCES safezen.indtherapy (illness_id),
  CONSTRAINT indappointments_ibfk_2 FOREIGN KEY (user_id) REFERENCES safezen.user_data ("userId")
);

-- ----------------------------------------------------------------------------
-- Table safezen.relappointments
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS safezen.relappointments (
  appointmentid SERIAL PRIMARY KEY,
  description VARCHAR(500) NULL DEFAULT NULL,
  relillness_id INT NULL DEFAULT NULL,
  user_id INT NULL DEFAULT NULL,
  "timeSlot" TEXT NULL DEFAULT NULL,
  date TEXT NULL DEFAULT NULL,
  CONSTRAINT relappointments_ibfk_1 FOREIGN KEY (relillness_id) REFERENCES safezen.reltherapy (relillness_id),
  CONSTRAINT relappointments_ibfk_2 FOREIGN KEY (user_id) REFERENCES safezen.user_data ("userId")
);

-- ----------------------------------------------------------------------------
-- Circular Foreign Keys for user_data
-- Note: A single column cannot logically enforce an FK to TWO different tables 
-- simultaneously unless records exist in both. It is recommended to handle 
-- currappointmentId logically in application code, but the constraints are preserved below if needed.
-- ----------------------------------------------------------------------------
-- ALTER TABLE safezen.user_data ADD CONSTRAINT user_data_ibfk_1 FOREIGN KEY ("currappointmentId") REFERENCES safezen.indappointments (appointmentid);
-- ALTER TABLE safezen.user_data ADD CONSTRAINT user_data_ibfk_3 FOREIGN KEY ("currappointmentId") REFERENCES safezen.relappointments (appointmentid);
