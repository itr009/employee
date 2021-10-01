

DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS user_types;
DROP TABLE IF EXISTS department;

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_type_id` varchar(255) DEFAULT NULL,
  `is_active` BOOLEAN DEFAULT NULL,
  `employee_id` bigint(20) NOT NULL,
  `created_on` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_on` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
); 

CREATE TABLE `employee` (
`id` bigint(20) NOT NULL,
`date_of_joining` date DEFAULT NULL,
`created_on` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_on` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
`is_active` BOOLEAN DEFAULT NULL,
`user_id` bigint(20) NOT NULL,
`dept_id` bigint(20) NOT NULL
);
CREATE TABLE `user_types` (
  `id` bigint(20) NOT NULL,
  `user_type_name` varchar(255) DEFAULT NULL,
  `created_on` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_on` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
`is_active` BOOLEAN DEFAULT NULL
  
); 

CREATE TABLE `department` (
  `id` bigint(20) NOT NULL,
  `dept_name` varchar(255) DEFAULT NULL,
`created_on` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_on` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
`is_active` BOOLEAN DEFAULT NULL
 ); 
