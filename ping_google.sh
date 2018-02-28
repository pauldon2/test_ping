#!/bin/bash
if [ -f file.ok ]
	then rm file.ok
fi
if [ -f file.err ]
	then rm file.err
fi

fping -c3 8.8.8.8 2>&1 > file.tmp
if [ $? == 0 ]
then
	mv file.tmp file.ok
else
	mv file.tmp file.err
fi
