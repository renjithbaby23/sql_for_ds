#!/bin/bash

##############################################
# We will see the basics of filtering
##############################################

printf "\n# Listing all the tables in the database.\n\n"
sqlite3 Chinook_Sqlite.sqlite ".table"


printf "\n# Printing the schema of Invoice table.\n\n"
sqlite3 Chinook_Sqlite.sqlite ".schema Invoice"


printf "\n# Printing the total number of entries in the table.\n\n"
sqlite3 Chinook_Sqlite.sqlite "SELECT COUNT(*) FROM Invoice"
##############################################

printf "\n# Filtering for price.\n\n"
sqlite3 Chinook_Sqlite.sqlite "SELECT CustomerId, InvoiceId, Total FROM Invoice WHERE Total>=10 LIMIT 5"


printf "\n# Filtering for BillingPostalCode.\n\n"
sqlite3 Chinook_Sqlite.sqlite "SELECT * FROM Invoice WHERE BillingPostalCode IS NULL LIMIT 10"


printf "\n# Filtering for BillingPostalCode using BETWEEN operator.\n\n"
sqlite3 Chinook_Sqlite.sqlite "SELECT * FROM Invoice WHERE Total BETWEEN 5 AND 10 LIMIT 10"
##############################################

