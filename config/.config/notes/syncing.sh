#!/bin/bash

# scuffed ass way to check if it's on xd
if [[ -z "$(ssh mytab 'echo hi')" ]]; then
  echo "exiting... couldn't connect to tab"
  exit
fi

pcdir="/home/ethan/notes"
tabdir="~/storage/shared/Documents/notes"

echo "-----------
tab commit:"
ssh mytab "cd $tabdir; git add .; git commit -m 'tab added and commited from script syncing.sh'"

echo "--------
pc pull:"
cd $pcdir
git pull mytab:$tabdir

echo "----------
pc commit:"
cd $pcdir
git add .
git commit -m "pc added and committed from script syncing.sh"

echo "---------
tab pull:"
ssh mytab "cd $tabdir; git pull"

# I think this is the one:
# tab commits
# pc pulls
# pc commits
# tab pulls
