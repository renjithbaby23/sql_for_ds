#!/bin/bash

##############################################
# We will see the basics of filtering
# Use IN, OR and NOT operators
##############################################

printf "\n# Listing all the tables in the database.\n\n"
sqlite3 Chinook_Sqlite.sqlite ".table"


printf "\n# Printing the schema of Invoice table.\n\n"
sqlite3 Chinook_Sqlite.sqlite ".schema Invoice"


printf "\n# Printing the total number of entries in the table.\n\n"
sqlite3 Chinook_Sqlite.sqlite "SELECT COUNT(*) FROM Invoice"
##############################################

printf "\n# IN operator example 1.\n\n"
sqlite3 Chinook_Sqlite.sqlite "SELECT * FROM Invoice WHERE BillingCity IN ('Dublin', 'Lisbon') LIMIT 5"


printf "\n# IN operator example 2.\n\n"
sqlite3 Chinook_Sqlite.sqlite "SELECT * FROM Invoice WHERE CustomerId IN (1, 10, 11) LIMIT 10"


printf "\n# OR operator example 1.\n\n"
sqlite3 Chinook_Sqlite.sqlite "SELECT * FROM Invoice WHERE CustomerId=1 OR CustomerID=10 AND Total>5 LIMIT 10"
# The OR and IN operator can be used alternatively for some tasks.
# But IN is faster than OR

printf "\n# OR operator example 2.\n\n"
sqlite3 Chinook_Sqlite.sqlite "SELECT * FROM Invoice WHERE (CustomerId=1 OR CustomerID=10) AND Total>5 LIMIT 10"

# Notice the difference of using bracket with the AND operator.
# The reason for the difference is that AND operator is evaluated before the OR operator
# Always to remember to use paranthesis and make using it a habit


printf "\n# NOT operator example 1.\n\n"
sqlite3 Chinook_Sqlite.sqlite "SELECT * FROM Invoice WHERE (NOT CustomerId=1 OR NOT CustomerID=10) AND Total>5 LIMIT 10"
##############################################

