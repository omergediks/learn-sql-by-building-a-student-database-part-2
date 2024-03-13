#!/bin/bash
# Info about my computer science students from students database

PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"

echo -e "\n~~ My Computer Science Students ~~\n"

# Query the database for student information
$PSQL "SELECT * FROM students;"

# Print the header for students with a 4.0 GPA
echo -e "\nFirst name, last name, and GPA of students with a 4.0 GPA:"