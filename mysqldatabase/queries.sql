CREATE TABLE employee_list(

    employee_id INT NOT NULL AUTO_INCREMENT,

    employee_name VARCHAR(50) NOT NULL,

    employee_email VARCHAR(40) NOT NULL,

    employee_profession VARCHAR(40) NOT NULL,

    employee_project VARCHAR(30),

    PRIMARY KEY(employee_id)



);

--drop table
drop table employee_list;


--inserting values
 INSERT INTO employee_list (employee_id,employee_name,Employee_email,employee_profession,employee_project)
 VALUES( 1,"tinku","tinkubhatirt@gmail.com","Software Developer","MYSQL"),
    ( 1,"tinku","tinkubhatirt@gmail.com","Software Developer","MYSQL"),
    ( 1,"tinku","tinkubhatirt@gmail.com","Software Developer","MYSQL"),
    ( 1,"tinku","tinkubhatirt@gmail.com","Software Developer","MYSQL");

select * from employee_list;

CREATE TABLE project(
    ProjectID INT NOT NULL,
    ProjectNumber INT NOT NULL,
    Employee_id INT NOT NULL,
    PRIMARY KEY(ProjectID),
    CONSTRAINT FK_PersonOrder FOREIGN KEY(employee_id) REFERENCES employee_list(employee_id)
)

--Alter FOREIGN KEY
ALTER TABLE orders
ADD CONSTRAINT FK_PersonOrder FOREIGN KEY(employee_id) REFERENCES employee_lists(employee_id)

--DROP FOREIGN KEY
ALTER TABLE Orders DROP CONSTRAINT FK_PersonOrder;


--filtering queries
SELECT 
      firstName,
      lastName,
      jobTitle
from 
   employees
where
jobTitle= "SAles Rep" AND officeCode = 1
ORDER BY
officeCode,
jobTitle;       



SELECT 
      firstName,
      lastName,
      jobTitle
from 
   employees
where
jobTitle= "SAles Rep" OR officeCode = 1
ORDER BY
officeCode,
jobTitle;     


SELECT 
      firstName,
      lastName,
      jobTitle
from 
   employees
where
officeCode BETWEEN 1 AND 7
ORDER BY
officeCode,
jobTitle;  



--USING LIKE clause

SELECT 
      firstName,
      lastName,
      jobTitle
from 
   employees
where
lastName LIKE '%son'
ORDER BY
firstName;



--using IN clause

SELECT 
      firstName,
      lastName,
      officeCode
from 
   employees
where
officeCode IN 
ORDER BY
firstName;



SELECT 
      firstName,
      lastName,
      officeCode
from 
   employees
where
officeCode IN 
ORDER BY
lastName;

















  



