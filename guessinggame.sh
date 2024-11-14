#!/bin/bash

# Function to count the number of files in the current directory
count_files() {
  echo $(ls -1 | wc -l)
}

# Main loop for guessing game
correct_number=$(count_files)
guess=-1

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

# Loop until the user guesses correctly
while [ "$guess" -ne "$correct_number" ]; do
  read -p "Enter your guess: " guess
  if [ "$guess" -lt "$correct_number" ]; then
    echo "Your guess is too low."
  elif [ "$guess" -gt "$correct_number" ]; then
    echo "Your guess is too high."
  else
    echo "Congratulations! You guessed correctly."
  fi
done
