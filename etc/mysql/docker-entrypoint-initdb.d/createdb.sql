ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'secret';
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'secret';
ALTER USER 'docker_user'@'%' IDENTIFIED WITH mysql_native_password BY 'docker_password';

CREATE DATABASE IF NOT EXISTS `docker` COLLATE 'utf8_general_ci' ;
GRANT ALL ON `docker`.* TO 'docker_user'@'%' ;

FLUSH PRIVILEGES;