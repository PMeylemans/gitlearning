#! /bin/bash
#
# Purpose: create a Git repo with some structure to start experimenting on
#
# History: 2022-07-31 MEY created
# ------------------------------------------------------------------------

# Initialise some variables
# ------------------------

GITNAME="Learning_01"
EMAIL="name@doamin.ext"
NAME="Firstname Name"

# Init git and set config parameters
# ----------------------------------

git init $GITNAME --initial-branch=main
cd $GITNAME
git config user.email $EMAIL
git config user.name  $NAME

# Create intitial file

echo "Initial file here" > readme.txt
git add .
git commit -m "[ADD] readme.txt"

# Create 15.0 branch and add some files
# -------------------------------------

git checkout -b 15.0
echo "Module 01" > Module01
git add .
git commit -m "[ADD] Module01"
echo "Module 02" > Module02
git add .
git commit -m "[ADD] Module02"
echo "Module 03" > Module03
git add .
git commit -m "[ADD] Module03"
echo "Module 04" > Module04
git add .
git commit -m "[ADD] Module04"

# Display some information
# ------------------------
git branch
git log --graph

# Create 15.0-test branch from 15.0 branch
# ----------------------------------------

git checkout -b 15.0-test 15.0
echo "Module 05" > Module05
git add .
git commit -m "[ADD] Module05"
echo "Module 06" > Module06
git add .
git commit -m "[ADD] Module06"
echo "Module 07" > Module07
git add .
git commit -m "[ADD] Module07"

# Create 15.0-Develop branch from 15.0-test branch
# ------------------------------------------------

git checkout -b 15.0-Develop 15.0-test
echo "Module 08" > Module08
echo "Module 09" > Module09
git add . 
git commit -m "[ADD] modules 08 & 09"

# Display some information
# ------------------------

git status
git log --graph
