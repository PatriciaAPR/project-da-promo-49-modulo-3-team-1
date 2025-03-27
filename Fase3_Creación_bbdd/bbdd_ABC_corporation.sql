-- Crear el esquema sin espacios en el nombre
CREATE SCHEMA IF NOT EXISTS `ABC_Corporation` DEFAULT CHARACTER SET utf8;
USE `ABC_Corporation`;

-- -----------------------------------------------------
-- Tabla: DATOS_BÁSICOS
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DATOS_BÁSICOS` (
  `employee_number` INT NOT NULL,
  `age` INT NULL,
  `birth_year`INT NULL,
  `gender` INT NULL,
  `education_level` INT NULL,
  `education_field` VARCHAR(45) NULL,
  `marital_status` VARCHAR(45) NULL,
  `distance_from_home_km` FLOAT NULL,
  PRIMARY KEY (`employee_number`)
) COMMENT = 'En esta tabla se recogen los datos personales relativos a:
Edad del trabajador, Género, Educación, Estado civil, Distancia a su domicilio.';

-- -----------------------------------------------------
-- Tabla: DATOS_EN_EMPRESA
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DATOS_EN_EMPRESA` (
  `employee_number` INT NOT NULL,
  `years_at_company` INT NULL,
  `total_years_worked` INT NULL,
  `job_role` VARCHAR(100) NULL,
  `job_level` INT NULL,
  `salary` FLOAT  NULL,
  `percent_salary_hike` INT NULL,
  `annual_salary` FLOAT NULL,
  `remote_work` BOOLEAN NULL,
  `standard_work_hours`VARCHAR(100) NULL,
  `business_travel_frequency` VARCHAR(50) NULL,
  `overtime_hours` ENUM ('yes', 'no', 'none') NULL,
  `stock_option_level` INT NULL,
  `years_since_last_promotion` INT NULL,
  `years_with_current_manager`INT NULL,
  `training_sessions_last_year` INT NULL,
  `performance_rating` INT NULL,
  `employee_turnover` BOOLEAN NULL,
  
  PRIMARY KEY (`employee_number`),
  FOREIGN KEY (`employee_number`) REFERENCES `DATOS_BÁSICOS`(`employee_number`)
) COMMENT = 'Datos sobre la vida laboral en la empresa, incluyendo salario, promociones y formación.';

-- -----------------------------------------------------
-- Tabla: NIVELES_SATISFACCION_EMPLEADO
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `NIVELES_SATISFACCION_EMPLEADO` (
  `employee_number` INT NOT NULL,
  `job_satisfaction_level`INT NOT NULL,
  `environmental_satisfaction_level`INT NOT NULL,
  `relationship_satisfaction_level`INT NOT NULL,
  `work_life_balance`INT NOT NULL,
  
  PRIMARY KEY (`employee_number`),
  FOREIGN KEY (`employee_number`) REFERENCES `DATOS_BÁSICOS`(`employee_number`)
) COMMENT = 'Nivel de satisfacción en diferentes aspectos del entorno laboral.';
