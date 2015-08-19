#!/bin/bash

dirs_to_update=(
    '/c/src/repo1'
    '/c/src/repo2'
)

performUpdate()
{
    echo ===================================
    echo Updating $1
    echo ===================================
    cd $1
    svn update
}

for dire in ${dirs_to_update[@]}; do
    performUpdate $dire
done
