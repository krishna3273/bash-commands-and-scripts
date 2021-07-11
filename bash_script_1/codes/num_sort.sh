#!/bin/bash
arr=( "$@" )
for (( i=0; i<size; i++ ))
do
	for (( j=i; j<$#; j++ ))
	do
		if [ ${arr[$i]} -gt ${arr[$j]} ]
		then
		
			var=${arr[i]}
			arr[$i]=${arr[$j]}
			arr[$j]=$var
		fi
		done 
	done

#	for (( i=0; i<N; i++ ))
#	ido
		
		echo ${arr[@]}
#	done


