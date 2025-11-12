#!/bin/bash

pcdir="/home/ethan/notes"
tabdir="~/storage/shared/Documents/notes"

# pc add and commit changes
echo "----------
pc commit:"
cd $pcdir
git add .
git commit -m "pc added and committed from script syncing.sh"

echo "-----------
tab commit:"
ssh mytab "cd $tabdir; git add .; git commit -m 'tab added and commited from script syncing.sh'"

# pull changes from tab
echo "--------
pc pull:"
cd $pcdir
git pull mytab:$tabdir

# pull changes from pc
echo "---------
tab pull:"
ssh mytab "cd $tabdir; git pull"
