#!/bin/bash

while getopts A:B:C: option
do
case "${option}"
in
A) OPTION_A=${OPTARG};;
B) OPTION_B=${OPTARG};;
C) OPTION_C=${OPTARG};;
esac
done

if test -z "$OPTION_A"
  then
    echo "No argument supplied for option A"
else
  echo "Option A is: "$OPTION_A
fi

if test -z "$OPTION_B"
  then
    echo "No argument supplied for option B"
else
  echo "Option B is: "$OPTION_B
fi

if test -z "$OPTION_C"
  then
    echo "No argument supplied for option C"
else
  echo "Option C is: "$OPTION_C
fi

#usage ./params.sh -A 100 -B 110 -C 120
