CREATE USER 'holberton_user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'projectcorrection280hbtn';

GRANT REPLICATION CLIENT ON *.* TO 'holberton_user'@'localhost';

FLUSH PRIVILEGES;
