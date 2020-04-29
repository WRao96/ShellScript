#!/bin/bash

declare -i i

f90_file=03_K_Al-fix_substitute_gulp.f90
structure=KFI.pdb
gulp_sh=gulp.sh
energy_sh=energy.sh
diff_sh=diff.sh

for ((i=1;i<=20; i=i+1)) do
    work_dir=Al-fix_K-alter_R${i}
    mkdir $work_dir
    cp $f90_file $work_dir/
    cp $structure $work_dir/
    cp $gulp_sh $work_dir/
    cp $energy_sh $work_dir/
    cp $diff_sh $work_dir/
done

