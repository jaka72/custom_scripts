#!/bin/bash

source ~/bin/jcolors.sh

echo -e "${Blue}\n* * * JAKA GIT-PUSH * * *${Color_Off}\n"
echo -en "${Cyan}Current folder: ${Color_Off}"
pwd

# Check if the current directory is a Git repository
if [ ! -d ".git" ]; then
  echo "Error: This is not a Git repository."
  exit 1
fi


if [ -z "$1" ]; then
	echo "Enter commit message:"
	read commit_message
else
	commit_message=$1
fi

# echo "Commit message: $commit_message"
echo ""

# Check if the commit message is empty
if [ -z "$commit_message" ]; then
    echo "J: Aborting commit due to empty commit message."
    exit 1
fi


git add .

git commit -m "$commit_message"

git push

