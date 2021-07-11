#!/bin/bash
read income
if [ $income -lt 300000 ]
then 
	echo NO TAX PAYMENT REQUIRED
fi
if [ $income -gt 300000 ]
then
	t=`echo "$income *(3/10)" | bc -l`
	t=`echo $t | xargs printf "%.*f\n" 4`

	echo TAX PAYMENT REQUIRED : $t
fi

