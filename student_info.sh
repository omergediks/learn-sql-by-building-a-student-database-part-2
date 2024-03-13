#!/bin/bash
# Info about my computer science students from students database

PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"

echo -e "\n~~ My Computer Science Students ~~\n"


echo "$($PSQL "SELECT first_name, last_name, gpa FROM students WHERE gpa = 4.0")"

# Print what the above sentence asks for
echo -e "\n$(echo "All course names whose first letter is before 'D' in the alphabet:")"
# Query the database for courses whose first letter is before 'D' in the alphabet
echo "$($PSQL "SELECT course FROM courses WHERE course < 'D'")"
# Print the next sentence
echo -e "\n$(echo "First name, last name, and GPA of students whose last name begins with an 'R' or after and have a GPA greater than 3.8 or less than 2.0:")"

# Query the database for students meeting the specified conditions
echo "$($PSQL "SELECT first_name, last_name, gpa FROM students WHERE last_name >= 'R' AND (gpa > 3.8 OR gpa < 2.0)")"

# Print the next sentence
echo -e "\n$(echo "Last name of students whose last name contains a case insensitive 'sa' or have an 'r' as the second to last letter:")"

# Query the database for courses meeting the specified conditions
echo "$($PSQL "SELECT last_name FROM students WHERE last_name ILIKE '%sa%' OR last_name LIKE '%r_'")"
echo -e "\nFirst name, last name, and GPA of students who have not selected a major and either their first name begins with 'D' or they have a GPA greater than 3.0:"