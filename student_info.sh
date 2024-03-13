#!/bin/bash
# Info about my computer science students from students database

PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"

echo -e "\n~~ My Computer Science Students ~~\n"


echo "$($PSQL "SELECT first_name, last_name, gpa FROM students WHERE gpa = 4.0")"

# Print what the above sentence asks for
echo -e "\n$(echo "All course names whose first letter is before 'D' in the alphabet:")"
