INSERT INTO 
	TBL_BOOKS (BOOK_NAME, BOOK_AUTHOR, BOOK_PUBLISHER) 
VALUES
  	('Java', 'Joshua Bloch', 'Get book'),
  	('Java SE 8 for the Really Impatient', 'DCay S. Horstmannoe', 'Get book');

INSERT INTO 
	user_types (id,
user_type_name,
is_active) 
VALUES
(1,'admin',true);
INSERT INTO 
	user_types (id,
user_type_name,
is_active) 
VALUES
(2,'employee',true);


  INSERT INTO 
	user(`id`,`name`, 
  `age`, 
  `date_of_birth`, 
  `user_name`, 
  `password`, 
  `user_type_id`, 
  `is_active`,
  `employee_id`)
  VALUES(1,'tirumalarao Ippili','31','1989-12-25','ippili.tirumalarao@gmail.com','Tiru@1989','1',true,1)


  INSERT INTO 
	employee(`id`,
`date_of_joining`,
`is_active`,
`user_id` ,
`dept_id`)
VALUES(1,'2017-06-19',true,1,1);

    INSERT INTO 
	department(`id` ,
  `dept_name` ,
`is_active`,`created_on`,`updated_on`)
VALUES(1,'Java Team',true,'2021-09-17 23:01:26','2021-09-17 23:01:26');





INSERT INTO 
	user(`name`, 
  `age`, 
  `date_of_birth`, 
  `user_name`, 
  `password`, 
  `user_type_id`, 
  `is_active`,
  `employee_id`)
  VALUES('tirumalarao Ippili','31','1989-12-25','ippili.tirumalarao@gmail.com','Tiru@1989','1',true,1);
  INSERT INTO 
	employee(
`date_of_joining`,
`is_active`,
`user_id` ,
`dept_id`)
VALUES('2017-06-19',true,1,1);


ALTER TABLE employee
DROP FOREIGN KEY user_id;

ALTER table user MODIFY created_on     DATETIME DEFAULT CURRENT_TIMESTAMP;
ALTER table user MODIFY updated_on     DATETIME DEFAULT CURRENT_TIMESTAMP;
ALTER table employee MODIFY created_on     DATETIME DEFAULT CURRENT_TIMESTAMP;
ALTER table employee MODIFY updated_on     DATETIME DEFAULT CURRENT_TIMESTAMP;
ALTER table department MODIFY created_on     DATETIME DEFAULT CURRENT_TIMESTAMP;
ALTER table department MODIFY updated_on     DATETIME DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE table_name    
MODIFY column_name datatype;

select name,age,date_of_birth,user_name,dept_name,date_of_joining from 
(select b.id as employeeId,dept_name,date_of_joining from department a join employee b on a.id=b.dept_id)a
join 
(select name,age,date_of_birth,user_name,employee_id as employeeId from user)b
on b.employeeId=a.employeeId
