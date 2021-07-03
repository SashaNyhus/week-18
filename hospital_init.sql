CREATE TABLE animals (
    animal_id INT AUTO_INCREMENT, 
    firstName VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    type VARCHAR(255) NOT NULL,
    breed VARCHAR(255),
    age INT,
    admitted DATE,
    doctor_id INT NOT NULL,
    quantum BOOLEAN,
    alias VARCHAR(255),
);

CREATE TABLE doctors (
    doctor_id INT AUTO_INCREMENT,
    firstName VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    specialty VARCHAR(255),
    quantum_clearance BOOLEAN NOT NULL,
    quantum BOOLEAN,
    alias VARCHAR(255),
);

CREATE TABLE maladies (
    malady_id INT AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description TEXT,
);

CREATE TABLE quantum_powers (
    power_id INT AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    psionic BOOLEAN,
)

CREATE TABLE animal_maladies (
    animal_id INT NOT NULL,
    malady_id INT NOT NULL,
)

CREATE TABLE animal_powers (
    animal_id INT NOT NULL,
    power_id INT NOT NULL,
)

CREATE TABLE doctor_powers (
    doctor_id INT NOT NULL,
    power_id INT NOT NULL
)


