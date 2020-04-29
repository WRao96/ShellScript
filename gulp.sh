#!/bin/bash
# gulp 

declare -i i


for ((i=1;i<=5; i=i+1))
do
  if [[ ${i} -lt 10 ]]; then
     a=00${i}.lsf
  elif [[ ${i} -lt 100 ]]; then
     a=0${i}.lsf
  else
     a=${i}.lsf 
  fi
   chmod +x $a
   echo $a
   qsub $a
done
