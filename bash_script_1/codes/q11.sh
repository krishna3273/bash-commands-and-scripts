#!/bin/bash
for (( i=0;i<=10; i++ ))
do
	echo $((i*i))
done

for (( i=1; i<=10; i++ ))
do
	prod=1
	for (( j=1; j<=i; j++ ))
	do
		prod=$((prod*i))
	done
	echo $prod
done
echo 1
a[0]=1
a[1]=1
for (( i=2; i<=100; i++ ))
do
	a[$i]=$((a[$i-1]+a[$i-2]))
	
	if [ $((a[$i])) -lt 100  ]
	then
		if [ $((a[$i] % 2)) -eq 1 ]
		then
		echo $((a[$i]))	
	fi
else
	break
fi
done

