#!bin/bash

t_dir=$1
array=($(ls -d $t_dir/*/))

for dir_name in ${array[@]}
do

dc=$(find $dir_name -type f|wc -l)
echo $dir_name'('$dc')'
done
