#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

#providing attmepts to user
read -p "Enter your password: " referenceString

myString="shivang"

if [ "$referenceString" == "$myString" ]; then
  echo "password correct"

else
  echo "Incorrect password try again"
  read -p "Enter your password: " referenceString
  if [ "$referenceString" == "$myString" ]; then
    echo "Incorrect password try again"

  else
    echo "Incorrect password try again"
    read -p "Enter your password: " referenceString

    if [ "$referenceString" == "$myString" ]; then
      echo "password correct"

    else
      echo "Incorrect password try again"
      read -p "Enter your password: " referenceString
      if [ "$referenceString" == "$myString" ]; then
        echo "Incorrect password try again"

      else
        echo "Incorrect password try again"
        read -p "Enter your password: " referenceString

        if [ "$referenceString" == "$myString" ]; then
          echo "Incorrect password try again"
  fi
    fi
      fi
        fi

fi

if [ "$referenceString" == "$myString" ]; then
  echo "Welcome"
else
  echo "Multiple attmepts your account is blocked"
fi
