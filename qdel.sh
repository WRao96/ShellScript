#!/bin/bash
# gulp 

declare -i i


for ((i=28414;i<=28433; i=i+1))
do
   a=${i}
   echo $a
   qdel $a
done
