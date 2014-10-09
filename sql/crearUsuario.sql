drop user 'sqluser'@'localhost';
create user 'sqluser'@'localhost' identified by 'sqlpwd';
grant all privileges on school.* to 'sqluser'@'localhost';
flush privileges;