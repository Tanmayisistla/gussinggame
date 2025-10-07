#!/usr/bin/env bash
# File: guessinggame.sh

# Function to get the number of files in the current directory
function file_count {
    echo $(ls -1 | wc -l)
}

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"
correct=$(file_count)

# Start guessing loop
while true
do
    read -p "Enter your guess: " guess
    # Check if input is a valid number
    if [[ ! $guess =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid number!"
        continue
    fi

    if [[ $guess -lt $correct ]]; then
        echo "Too low! Try again."
    elif [[ $guess -gt $correct ]]; then
        echo "Too high! Try again."
    else
        echo "🎉 Congratulations! You guessed it right!"
        echo "There are $correct files in the directory."
        break
    fi
done
