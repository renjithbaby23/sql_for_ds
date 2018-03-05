#!/bin/bash

##############################################
# We are going to download an opensource database 'Chinook database'
# Refer this liink : https://github.com/lerocha/chinook-database
# Then we will see how to do some general queries on it
# to extract relevant information
##############################################

printf "# Download the database to current working directory.\n\n"
wget -c "https://github.com/lerocha/chinook-database/raw/master/ChinookDatabase/DataSources/Chinook_Sqlite.sqlite"


##############################################
# Now the database has been downloaded to the current working directory
# You can connect to this database from terminal directly by typing
# $sqlite3 Chinook_Sqlite.sqlite
# From the sqlite3 interactive shell, you can run the the following codes
# But remember you need to give only those parts which are in double quotes 
##############################################

printf "\n# Listing all the tables in the database.\n\n"
sqlite3 Chinook_Sqlite.sqlite ".table"

printf "\n# Listing schema of the table Employee.\n\n"
sqlite3 Chinook_Sqlite.sqlite ".schema Employee" 

printf "\n# Select statement on Employee table.\n\n"
sqlite3 Chinook_Sqlite.sqlite "SELECT \
	FirstName, \
	LastName, \
	Birthdate, \
	Address, \
	City, \
	State\
	FROM Employee;"

printf "\n# Retrieve all columns from the Tracks table, but only return 20 rows.\n\n"
sqlite3 Chinook_Sqlite.sqlite "SELECT * \
	FROM Track
	LIMIT 20;"

# Now go ahead and make your hands dirty.
