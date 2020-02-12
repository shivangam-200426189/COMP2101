#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
USER="shivang"
hostname=$(hostname)

WEEKDAY=`date +"%A"`
TIME=`date +"%T"`

if [ "$WEEKDAY" == "Monday" ]; then
  title=" Monday is firstday of a week(awesome) "
elif [ "$WEEKDAY" == "Tuesday" ]; then
  title=" Tuesday is secondday of a week (marvelous)"
elif [ "$WEEKDAY" == "Wednesday" ]; then
  title=" Wednesday is thirdday of a week(incredible) "
elif [ "$WEEKDAY" == "Thursday" ]; then
  title=" Thursday is fourthday of a week (good)"
elif [ "$WEEKDAY" == "Friday" ]; then
  title=" Friday is fifthday of a week (nice)"
elif [ "$WEEKDAY" == "Saturday" ]; then
  title=" saturday is sixthday of a week (impressive)"
elif [ "$WEEKDAY" == "sunday" ]; then
  title=" sunday is lastday of a week (beautiful)"
fi

###############
# Main        #
###############

display=$(cat <<EOF

Welcome to plant $hostname, "$title $USER!"

it is a $WEEKDAY at $TIME

EOF
)

cat <<EOF

$(cowsay $display)
EOF
