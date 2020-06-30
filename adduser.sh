#!/bin/bash
##add new user to vm

#check to see if user exists within system

$NEW_USER=my_new_user
$NEW_PASSWD=strong_password

function check_user()
{
$(sudo useradd username $NEW_USER)
if [ -s $NEW_USER ];
then
echo "User already exists! Cannot create again. Choose a new unique username."
exit 1
else

echo "Creating new user..."
$(sudo passwd username $NEW_PASSWD)
echo "Securing password"
done 
fi
}
