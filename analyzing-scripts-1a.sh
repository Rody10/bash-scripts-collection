#!/bin/bash

# creating a variable MAX and assigning it the value 10000
MAX=10000

  # iterate from 1 till 9999
  for((nr=1; nr<$MAX; nr++))
  do
    # get the remainder of nr/5 and assign result to t1
    let "t1 = nr % 5"
    # check if t1 is not equal to 3
    if [ "$t1" -ne 3 ]
    then
      continue # if true, move to next iteration
    fi # if fasle, execute the following commands

    # get the remainder of nr/7 and assign result to t2
    let "t2 = nr % 7"
    # check if t2 is not equal 4
    if [ "$t2" -ne 4 ]
    then
      continue # if true, move to next iteration
    fi # if false, execute the following commands

    # get the remainder of nr/9 and assign the result to t3
    let "t3 = nr % 9"
    # check if t3 is not equal to 5
    if [ "$t3" -ne 5 ]
    then
      continue # if true, move to next iteration
    fi # if false, execute the following commands

    break   # What happens when you comment out this line? Why? - Commenting this line causes in the script running until $nr == 10000. This is because the break command is the one that terminates the loop (if the line is not commended out the loop terminates when $nr == 158) so the loop will keep executing until $nr == 10000.   

  done

  echo "Number = $nr"


exit 0

