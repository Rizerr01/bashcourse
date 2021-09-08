#!/bin/sh
guessing(){
 res="True"
 cond1="True"
 while [ $res = $cond1 ];
 do
  read -p  "Guess the number of files in this directory: " numguess
  curfi=$(ls | wc -l | awk '{ print $1 }')
  numguess=$(($numguess + 0))
  curfi=$(($curfi + 0))
  if [ $numguess -eq $curfi ]; then
   echo "You're correct! Congratulations!"
   res="False"
  elif [ $numguess -lt $curfi ]; then
   echo "You're wrong! Your guess is too low, try again!"
   res="True"
  else
   echo "You're wrong! Your guess is too high, try again!"
   res="True"
  fi
 done
}

guessing
