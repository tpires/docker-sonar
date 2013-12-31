# Create SonarQube database and user.
#
# Command: mysql -u root -p < create_database.sql
#

CREATE DATABASE sonar CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE USER 'sonar' IDENTIFIED BY '123qwe';
GRANT ALL ON sonar.* TO 'sonar'@'%' IDENTIFIED BY '123qwe';
GRANT ALL ON sonar.* TO 'sonar'@'localhost' IDENTIFIED BY '123qwe';
FLUSH PRIVILEGES;
