#!usr/bin/env bash

response=0
filesNumber=`ls|wc -l`

function startGuessing() {
  echo "Try and guess how many files does this directory contain. Type here the number and then press enter."
  read userResponse
  let response=$userResponse
  echo "Your guess was: $response"
  if [[ $response -eq 3 ]]
  then
  echo "Congratulations! Your guess was correct!"
  fi
}

function greater() {
   while [[ $response -gt $filesNumber ]]
   do
     echo "Your guess was too high. Try again."
     startGuessing
   done
}

function lower() {
  while [[ $response -lt $filesNumber ]]
   do
     echo "Your guess was too low. Please try again."
     startGuessing
   done
}

function noMatch() {
  while [[ $response -ne $filesNumber ]]
   do
    if [[ $response -lt $filesNumber ]]
    then
      lower
    else
      greater
    fi
   done
}

startGuessing
if [[ $response -ne 3 ]]
then
  noMatch
fi