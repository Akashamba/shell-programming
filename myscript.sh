#! /bin/bash  

# ECHO COMMAND
# echo hello world!

#VARIABLES
# Uppercase by convention
NAME="ghj"

echo My name is $NAME

# USER INPUT
# read -p is for prompt
read -p "Enter your name: " NAME 
echo Hello $NAME!

# CONDITIONALS

# IF STATEMENT
if [ "$NAME" == "Akash" ]
then
    echo "Your name is Akash"
elif [ "$NAME" == "Jack" ]
then 
    echo "Your name is Jack"
else
    echo "Your name is not Akash or Jack"
fi



# COMPARISION

########
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 is greater than val2
# val1 -ge val2 Returns true if val1 is greater than or equal to val2
# val1 -lt val2 Returns true if val1 is less than val2
# val1 -le val2 Returns true if val1 is less than or equal to val2
########

NUM1=3
NUM2=5

if [ "$NUM1" -gt "$NUM2" ]
then
    echo "$NUM1 is greater than $NUM2"
elif [ "$NUM1" -eq "$NUM2" ]
then
    echo "$NUM1 is equal to $NUM2"
else
    echo "$NUM1 is less than $NUM2"
fi



# FILE CONDITIONS

########
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u    True if the user id is set on a file
# -w    True if the file is writable
# -x    True if the file is an executable
########

FILE="test.txt"
if [ -e "$FILE" ]
then
  echo "$FILE exists"
else
  echo "$FILE does not a exist"
fi



# CASE STATEMENT
read -p "Are you 21 or over? Y/N " ANSWER
case "$ANSWER" in
    [yY] | [yY][eE][sS])
        echo "You can have a beer :)"
        ;;
    [nN] | [nN][oO])
        echo "Sorry, no drinking"
        ;;
    *)
        echo "Please enter Y/N"
        ;;
esac



# FOR LOOP
NAMES="Brad Kevin Alice Mark"

for NAME in $NAMES
do
    echo "Hello $NAME"
done

FOR LOOP TO RENAME FILES
FILES=$(ls *.txt)
NEW="new"

for FILE in $FILES
do
    echo "Renaming file to new-$FILE"
    mv $FILE $NEW-$FILE
done

WHILE LOOP  - READ A FILE LINE BY LINE
LINE=1
while read -r CURRENT_LINE
do
    echo "$LINE: $CURRENT_LINE"
    ((LINE++))
done < "./new-1.txt"



#FUNCTIONS
function sayHello() {
    echo "Hello World"
}

sayHello

# FUNCTIONS WITH PARAMS
function greet() {
    echo "Hello, I am $1 and I am $2"
}

greet "Akash" "20"



# CREATE FOLDER AND WRITE TO A FILE
mkdir hello-directory
touch "hello-directory/world.txt"
echo "HELLO WORLD" >> "hello-directory/world.txt"
echo "Created hello-directory/world.txt!" 