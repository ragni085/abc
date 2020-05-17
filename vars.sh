#!/bin/bash 

# If we assign a name to a set of commands then it is called as a variable

## Decalring a variable 
## Syntax : VAR_NAME=DATA 

## There are no data types by default in shell scripting, means everything is string.

a=100
X=abc


## Accessing a variable with ${VAR_NAME} or $VAR_NAME 
echo $a

echo "COURSE NAME = $COURSE_NAME"

## Welcome Message
DATE=2019-12-03
echo -e "Hello Good Evening, Today date is $DATE"

## Above statement is going to be true for only once.. But lets assume the same script needs to be running every day then the information which script giving to user is not correct.

# So the date which is making the statement as wrong should be getting it from dynamically . 

## To get info dynamically the only option which you have available is executing commands. The way of declaring variables by running some command and storing that o/p to a variable is called as command substitution.

## Command Substitution Syntax:   VAR_NAME=$(commands)

DATE=$(date +%F)
echo -e "Hello Good Evening, Today date is $DATE"


VALUE=$((10+20/2*4-10))
echo VALUE = $VALUE 

a=10
b=2

ADD=$(($a+$b))
echo ADD = $ADD 
