-- Crear la base de datos
CREATE DATABASE ABC_company;

-- Seleccionar la base de datos que acabamos de crear
USE ABC_company;

-- Crear tabla de empleados
CREATE TABLE employees (
    employee_number INT PRIMARY KEY,
    age INT,
    gender VARCHAR(50),
    marital_status VARCHAR(50),
    over18 VARCHAR(50),
    date_of_birth INT
);

-- Crear tabla de atributos de empleados
CREATE TABLE employee_attributes (
    employee_number INT,
    job_involvement INT,
    departament VARCHAR (100),
    job_role VARCHAR (100),
    job_level INT,
    job_satisfaction INT,
    environment_satisfaction FLOAT,
    relationship_satisfaction INT,
    work_life_balance INT,
    years_at_company INT,
    years_in_current_role INT,
    years_since_last_promotion INT,
    years_with_current_manager INT,
    training_times_last_year INT,
    performance_rating INT,
    FOREIGN KEY (employee_number) REFERENCES employees(employee_number)
);

-- Crear tabla de viajes de negocio
CREATE TABLE business_travel (
    employee_number INT,
    business_travel_status VARCHAR(100),
    FOREIGN KEY (employee_number) REFERENCES employees(employee_number)
);

-- Crear tabla de tiempo extra (overtime)
CREATE TABLE overtime (
    employee_number INT,
    overtime_status VARCHAR(50),
    FOREIGN KEY (employee_number) REFERENCES employees(employee_number)
);

-- Crear tabla de salarios
CREATE TABLE salaries (
    employee_number INT,
    salary FLOAT,
    monthly_income FLOAT,
    monthly_rate FLOAT,
    percent_salary_hike INT,
    same_as_monthly_income FLOAT,
    FOREIGN KEY (employee_number) REFERENCES employees(employee_number)
);

-- Crear tabla de satisfacción de los empleados
CREATE TABLE employee_satisfaction (
    employee_number INT,
    environment_satisfaction FLOAT,
    job_satisfaction INT,
    relationship_satisfaction INT,
    work_life_balance INT,
    performance_rating INT,
    FOREIGN KEY (employee_number) REFERENCES employees(employee_number)
);
