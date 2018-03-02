#!/bin/bash

#############################################################################################
# Can refer the page 
# https://bigcode.wordpress.com/2016/05/10/sqlite-bash-script-tutorial-on-ubuntu-linux/ for 
# understanding how to write sqlite scripts in bash shell
#############################################################################################


# Creating the first database db1 if it doesn't exist and creating the table person

sqlite3 db1.sqlite "CREATE TABLE person ( \
	id int, \
	name varchar(30), \
	phone varchar(30) );"

# If you are running the above code multiple times, you will get error 
# "Error: table person already exists"

# Inserting few dummy data into the table person 

sqlite3 db1.sqlite "INSERT INTO person VALUES (1, 'Jim', '123446223');\
	INSERT INTO person VALUES (2, 'Tom', '232124303');\
	INSERT INTO person VALUES (3, 'Bill', '812947283');\
	INSERT INTO person VALUES (4, 'Alice', '351246233');"

# Can verify if the database and table has been created by running the below code

sqlite3 db1.sqlite "SELECT * FROM person"
