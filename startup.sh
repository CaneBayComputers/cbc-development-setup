#!/bin/bash

set -e

shopt -s expand_aliases

sleep 5

echo

echo -n "Current Git user name: "

if ! git config user.name; then

	echo-yellow -ne 'Enter your full name for Git commits: '

	read GIT_NAME

	echo

	git config --global user.name "$GIT_NAME"

	sudo git config --global user.name "$GIT_NAME"

fi

echo

echo -n "Current Git user email: "

if ! git config user.email; then

	echo-yellow -ne 'Enter your email address for Git commits: '

	read GIT_EMAIL

	echo

	git config --global user.email $GIT_EMAIL

	sudo git config --global user.email $GIT_EMAIL

fi

repos

echo

cd cbc-docker-php7-nginx

gpull

cd ..

echo

cd cbc-development-setup

gpull

cd ..

echo

cd cbc-docker-stack

gpull

cd ..

echo

read -n 1 -r -s -p $'Press enter to continue...\n'