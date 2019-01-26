#!/bin/bash
IP=8.8.4.4
find . -name "file.*" -delete

/usr/bin/fping -c3 $IP 2>&1 > file.tmp
if [ $? == 0 ]
then
	mv file.tmp file.ok
else
	mv file.tmp file.err
fi
