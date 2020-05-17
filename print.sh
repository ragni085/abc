#!/bin/env bash 

## Printing from Linux CLI can be done with two commands.
# 1. echo 2. printf 

# We prefer to use echo command rather than using printf command , because printf needs lot of syntaxes.

## To print a simple message on screen then 

echo Hello World 

## Print multiple lines 
echo Line1 
echo Line2 

## But if you want to print multiple lines with single echo command rather than using multiple echo commands then 

echo Line1\nLine2

## \n will try to print a new line in between , but above syntax will not work .

## \n, \t, \e -- all these are called as escape sequences. If you wish to see all escape sequences then use "man echo" command.
## To enable escape sequences then you have to enable -e option 

echo -e Line1\nLine2

## -e enables \n to be used as a new line , But above syntax also will not work.

## When we enable ESC seq with echo command , always recomended to provide input in double quotes. (Single quotes can also be used , But prefered to go with double.. And the differences you will find out in quotes topic)

echo -e "Line1\nLine2"

## Colors are two types.
# 1. Foreground Color (Font Color)
  # Syntax  ::  echo -e "\e[FCOLmMESSAGE"
# 2. Background Color (Background Color)
  # Syntax  ::  echo -e "\e[BCOLmMESSAGE"
# 3. F + B Color 
  # Syntax  ::  echo -e "\e[BCOL;FCOLmMESSAGE"

### Color Codes 
#  Color          # F Col           # B Col 
# Red               31                41        
# Green             32                42
# Yellow            33                43
# Blue              34                44
# Magenta           35                45
# Cyan              36                46

echo -e "\e[33mHello World with Yellow FG Color"

echo -e "\e[46mHello  World with Cyan BG Color"

## Usually when you enable color with printing statements.. Color will not get disabled.. 
## it is also needed to disable the colors which are enabled. To disable color just use 0 as color code after the message 

## Syntax: echo -e "\e[COLmMESSAGE\e[0m"

echo -e "\e[0m"

echo -e "\e[33mHello World with Yellow FG Color\e[0m"

echo -e "\e[46mHello  World with Cyan BG Color\e[0m"

echo -e "\e[33;41mYellow on Red Message\e[0m"
