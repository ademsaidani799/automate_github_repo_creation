#!/bin/bash

echo "Please enter the path to the repository: "
read path_to_repo

echo "Please enter the repository URL: "
read repo_url

# Navigate to the root directory of the repository and initialize Git
cd $path_to_repo
git init

# Add all files to the staging area and make the first commit
git add .
git commit -m "first commit"

# Add the remote repository and push the initial commit to the master branch
git remote add origin "$repo_url"
git push -u origin master

# Change directory back to the original directory
cd -

