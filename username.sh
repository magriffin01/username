#! /bin/bash
# username.sh
# Mark Griffin
echo "You will be prompted to enter a username that must meet the following conditions."
echo "The only characters that can be used are lowercase letter, digits, and the underscore."
echo "Your username must also start with a lowercase letter and must be at least 3 characters long, but no more than 12 characters long."
echo "Please enter a username: "
read NAME
while echo "$NAME" | egrep -v "^[a-z]{1}[0-9a-z_]{2,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid username!"
	echo "Only lowercase letters, digits, and underscores. Must start with a lowercase, and 3-12 characters long"
	echo "Enter a username: "
	read NAME
done
echo "Thank you"
