CREATE DATABASE IF NOT EXISTS tyrell_corp;
USE tyrell_corp;

CREATE TABLE IF NOT EXISTS nexus6 (id int, name varchar(255));

INSERT INTO nexus6 VALUES (1, "Bunmi");

GRANT SELECT ON tyrell_corp.nexus6 TO 'holberton_user'@'localhost';
