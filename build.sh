#!/bin/bash

OUT="Sentinel"

if [[ $1 = "run" ]]
then
	echo "running..."

	./dist/$OUT

	echo "done..."
elif [[ $1 = "build" ]]
then
	echo "building..."

	[ -e "./dist" ] && rm -rf ./dist
	cd src
	go build -o ../dist/$OUT

	echo "done..."
else
	./build.sh build
	./build.sh run
fi
