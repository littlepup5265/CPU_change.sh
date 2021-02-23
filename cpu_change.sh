#!/bin/bash
 
  for options in $(echo $@)
 
   do
   SERVERLIST=$options
   done
 
 if [ ! -s "$SERVERLIST" ]
   then
   echo "ERROR: $SERVERLIST does not exist"
   exit 1
 fi
 
 
 
       for i in $(cat $SERVERLIST)
 do
       echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
       echo $i
       rosh -l root -n $i -t 'shutdown -h now'
       echo "......server $i is powered off......."
 done
