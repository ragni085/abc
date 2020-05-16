#!/bin/bash 

## Define a function 
#function func_name() {}
#func_name() {}

SAMPLE() {
  echo This is a sample function 
}

SAMPLE1() {
  echo First Argument = $1
}

SAMPLE2() {
  A=100 
  local a=200
}

SAMPLE3() {
  echo Hai
  return 1
  echo Bye
}

### Access the function m MAIN PROGRAM
SAMPLE 
SAMPLE1 abc
SAMPLE2 
echo "A = $A, a = $a"

# Functions are as simple as commands, SO it have exit status as well.
SAMPLE3 
echo Exit Status of SAMPLE3 = $?

# You define variable in Main Program , You can access them in function and vice-versa.
# Your main program variables can be overwritten by function and vice-versa.

## Some cases we want to define variable inside the function and should not be accessed outside of the function. Such cases we choose to use local command to define variable 

## local VAR=DATA 



## Function is a type of command.
## Four types of commands , 1. BINARIES, 2. SHELL BUILTIN , 3. ALIAS  4. FUNCTION
