#!/bin/bash
# gulp 

declare -i i
declare -i j

for ((i=1;i<=4; i=i+1))
do
  if [ ${i} -lt 10 ]; then
     a=00${i}.xyz
  elif [ ${i} -lt 100 ]; then
     a=0${i}.xyz
  else
     a=${i}.xyz
  fi

  for ((j=i+1;j<=5; j=j+1))
  do
  if [ ${j} -lt 10 ]; then
     b=00${j}.xyz
  elif [ ${j} -lt 100 ]; then
     b=0${j}.xyz
  else
     b=${j}.xyz
  fi
   echo $a $b
   diff $a $b
done
done
