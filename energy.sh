#!/bin/bash
# gulp 

declare -i i


for ((i=1;i<=5; i=i+1))
do
  if [[ ${i} -lt 10 ]]; then
     a=00${i}.got
  elif [[ ${i} -lt 100 ]]; then
     a=0${i}.got
  else
     a=${i}.got
  fi
#   echo $a
#  grep ' Total lattice energy' $a | awk '{print $5}' | sed -n '2p' >> energy.txt
  b=$(cat $a | grep ' Total lattice energy' | awk '{print $5}' | sed -n '4p')
  echo $a $b >> energy.dat
done
