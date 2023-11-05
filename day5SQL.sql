CREATE DATABASE IF NOT EXISTS nysc_hub;
USE bikestore;

CREATE TABLE user(
user_id int(11) not null auto_increment primary key, 
name varchar(50) not null,
gmail varchar(50) not null,
gender text not null,
age int(11) not null
);

INSERT INTO `user`(name, gmail, gender, age) 
VALUES
('Bolumade', 'bolu@gmail.com', 'null', 25);

SELECT * FROM user WHERE gender = 'null';

USE awesome_chocolates;

SHOW TABLES;

SELECT * FROM employee;

SELECT recorddate_key from employee;

SELECT now();

SELECT curdate();

SELECT curtime();


SELECT birthdate_key, recorddate_key, job_title from employee;

SELECT extract(YEAR from now());

USE asup;
SELECT extract(MONTH from event_date) FROM event;
SELECT * FROM event;

SELECT datediff(date('2023-02-23'), date('2007-03-23'));

SELECT date_add(now(), INTERVAL 250 SECOND);
SELECT subdate('2023-10-24', INTERVAL 32 MINUTE);

use employees;
CREATE TABLE milo_industry(
firstname text(60) not null,
lastname text(60) not null,
level varchar(60) not null,
years int(11) not null
);


INSERT INTO `milo_industry` 
VALUES
('Alex','John','Senior Manager', 8),
('JOhn','Monday','Junior Manager', 5),
('Moses','Bliss','Senior Manager', 7),
('Akeem','Chidinma','Level 1', 2),
('Muyiwa','Angel','Level 2', 4),
('Susan','Chukws','Middle Level', 6);

SELECT * FROM milo_industry;

ALTER TABLE milo_industry ADD promotion_status VARCHAR(50);

ALTER TABLE milo_industry MODIFY firstname VARCHAR(50);

-- ALTER TABLE milo_industry RENAME firstname  TO first_name;

ALTER TABLE milo_industry DROP promotion_status;

SELECT *, Rank() OVER
(ORDER BY years DESC), 
DENSE_RANK() OVER (ORDER BY level DESC) from milo_industry;

SELECT *, Rank() OVER
(partition by level ORDER BY years DESC) from milo_industry;


UPDATE  milo_industry SET years = '3' WHERE firstname = 'Akeem';  