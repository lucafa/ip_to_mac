#!/bin/bash

IP="192.168.0."

for i in `seq 1 255`
do
     MAC=`arping -I eth0 -c 1 $IP$i | grep Unicast | awk -F "[" '{print $2}'  | awk -F "]" '{print $1}'`
     echo $IP$i "-->" $MAC 

done
