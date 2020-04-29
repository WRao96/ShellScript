#!/bin/bash
# gulp 

declare -i i
declare -i j

for ((i=1;i<=19; i=i+1))  do
  work_dir1=Al-fix_K-alter_R${i}
  a=$work_dir1/001.xyz

  for ((j=i+1;j<=20; j=j+1))  do
      work_dir2=Al-fix_K-alter_R${j}
      b=$work_dir2/001.xyz
      echo $work_dir1 $work_dir2
      diff $a $b
done
done
