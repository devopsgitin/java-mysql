#!/bin/bash
path="/backup"
file_count=$(ls -1t $path|wc -l)
extra_files=($(ls -1t $path|tail -n +4))
if [ $file_count -gt 3 ]
then
   for each_file in ${extra_files[@]}
   do
     rm $path/$each_file
   done
fi
