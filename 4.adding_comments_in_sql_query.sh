#!/bin/bash

#############################################################################################
# Here we will see how to add single line as well as multi line comments in SQL queries
#############################################################################################


# Just selecting few columns from out previously created table shoes

sqlite3 db1.sqlite "SELECT \
	id, \
	type, \
	-- single line comment
	color \
	/* multi 
	line 
	comment
	*/
	from shoes;"

# See we have ignjored the case here, but still it works! 

