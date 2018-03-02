#!/bin/bash

#############################################################################################
# Temporary tables will be deleted when the current session terminates
# But it is faster than creating a real table
# It is useful for complex  queries using  subsets and joins
#############################################################################################


# Creating a temporary table

sqlite3 db1.sqlite "CREATE TEMPORARY TABLE sandals AS \
	SELECT * FROM shoes WHERE Type = 'Sandal';\
	SELECT * FROM sandals;"

# If we try to run the select statement outside the above session, 
# like we did in 2.creating_table_with_primary_key.sh or 1.creating_first_table.sh
# We will get error "Error: no such table: sandals"

