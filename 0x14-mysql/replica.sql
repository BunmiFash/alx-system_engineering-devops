-- CREATE USER replica_user
CREATE USER 'replica_user'@'%' IDENTIFIED WITH mysql_native_password BY 'bunmi';

-- GRANT PERMISSION TO REPLICATE THE PRIMARY SERVER
GRANT REPLICATION SLAVE ON *.* TO 'replica_user'@'%';

-- GRANT PERMISSION TO USE SELECT ON THE mysql.user TABLE
GRANT SELECT ON mysql.user TO 'holberton_user'@'localhost';
