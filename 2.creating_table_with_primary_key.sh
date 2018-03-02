#!/bin/bash

#############################################################################################
# We will see how to create a table with primary key
# we will also see how to ensure a column cannot have null values
#############################################################################################


# Creating the table shoes

sqlite3 db1.sqlite "CREATE TABLE shoes ( \
	Id char(10) PRIMARY KEY, \
	Brand char(10) NOT NULL, \
	Type char(10) NOT NULL, \
	Color char(10) NOT NULL, \
	Material char(10), \
	Price decimal(6,2) NOT NULL, \
	Desc varchar(500) NULL) ;"

# If you are running the above code multiple times, you will get error 
# "Error: table person already exists"

# Inserting few dummy data into the table shoes 
sqlite3 db1.sqlite "\
        INSERT INTO shoes VALUES(\
                1, \
                'Bata', \
                'Sandal', \
                'Black', \
                'Rubber', \
                '100.00', \
		'It is a very good product for indoor usage');"

# Below is the method to add selected columns alone to the table
# But need to ensure that the not nullable columns are filled

sqlite3 db1.sqlite "\
	INSERT INTO shoes (\
		Id, \
		Brand, \
		Type, \
		Color, \
		price)
	VALUES (\
		2, \
		'Bata', \
		'Sandal', \
		'White', \
		'110.00');"


sqlite3 db1.sqlite "\
	INSERT INTO shoes (\
		Id, \
		Brand, \
		Type, \
		Color, \
		price)
	VALUES (\
		3, \
		'Bata', \
		'Sneaker', \
		'Blue', \
		'510.00');"

# If you run this code multiple times, you will see that the same entries are not getting added multiple times!
# But that was not the case for "1.creating_first_table.sh"!
# Why? 
#	Because,  the primary key must be unique. 
#	You will get an error "Error: UNIQUE constraint failed: shoes.Id"

# Can verify if the database and table has been created by running the below code

sqlite3 db1.sqlite "SELECT * FROM shoes"
