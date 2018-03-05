#!/bin/bash

##############################################
# Wildcards are Special characters used to match parts of a value, only for strings
# Search pattern made from literal text, wildcard character or a combination
# We will also use LIKE as an operator (though technically a predicate) 
##############################################

printf "\n# Schema of the table Album.\n\n"
sqlite3 Chinook_Sqlite.sqlite ".schema Album"

printf "\n# First five entries of the table Album.\n\n"
sqlite3 Chinook_Sqlite.sqlite "SELECT * FROM Album LIMIT 10"

printf "\n# First five entries of the table Album.\n\n"
sqlite3 Chinook_Sqlite.sqlite "SELECT * FROM Album WHERE Title LIKE '%Rock%' LIMIT 10"

# Remember % wildcard will not match with NULLs
##############################################

