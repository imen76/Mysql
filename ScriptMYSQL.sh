# Installer MySQL
sudo apt install mysql-server

echo "Creation des utilisateurs et de la base de données"
sudo mysql <<EOF
create user ImenDataBase identified by '123';
grant all privileges on *.* To ImenDataBase;
grant create on *.* To ImenDataBase;

create database ImenDataBase;
use ImenDataBase;

CREATE TABLE users (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
EOF

#Changer l'address ip de 0.0.0.0
sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf

