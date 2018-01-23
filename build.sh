#!/bin/bash

if [ ! -d build/ ]; then
	mkdir build;
fi

cd build
cmake ..
make

if [ ! -d ../bin/ ]; then
	mkdir ../bin;
fi

if [ ! -d kiwistrmd ]; then
	mv -i kiwistrmd ../bin/kiwistrmd;
	
	if [ ! -d ../tools/start.sh ]; then
		mv -i ../tools/start.sh ../start.sh;
	fi

	if [ ! -d ../tools/stop.sh ]; then
		mv -i ../tools/stop.sh ../stop.sh;
	fi
fi

