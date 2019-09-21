#! /bin/bash

isShown=$(defaults read com.apple.finder AppleShowAllFiles)

if [ $isShown == 'FALSE' ]; then
	defaults write com.apple.finder AppleShowAllFiles TRUE
	echo "Files shown..."
	killall Finder
elif [ $isShown == 'TRUE' ]; then
	defaults write com.apple.finder AppleShowAllFiles FALSE
	echo "Files hidden..."
	killall Finder
else
	echo "Something bad happened. Hidden files shown status was not changed."
fi
