#!/bin/bash
    number=$1
factor=1000
    rchar=M
    let "remainder = number - factor"
    while [ "$remainder" -ge 0 ]
    do
        echo -n $rchar
        let "number -= factor"
        let "remainder = number - factor"
    done
factor=500
    rchar=D
    let "remainder = number - factor"
    while [ "$remainder" -ge 0 ]
    do
        echo -n $rchar
        let "number -= factor"
        let "remainder = number - factor"
    done
factor=400
    rchar=CD
    let "remainder = number - factor"
    while [ "$remainder" -ge 0 ]
    do
        echo -n $rchar
        let "number -= factor"
        let "remainder = number - factor"
    done
factor=100
    rchar=C
    let "remainder = number - factor"
    while [ "$remainder" -ge 0 ]
    do
        echo -n $rchar
        let "number -= factor"
        let "remainder = number - factor"
    done
factor=90
    rchar=XC
    let "remainder = number - factor"
    while [ "$remainder" -ge 0 ]
    do
        echo -n $rchar
        let "number -= factor"
        let "remainder = number - factor"
    done
factor=50
    rchar=L
    let "remainder = number - factor"
    while [ "$remainder" -ge 0 ]
    do
        echo -n $rchar
        let "number -= factor"
        let "remainder = number - factor"
    done
factor=40
    rchar=XL
    let "remainder = number - factor"
    while [ "$remainder" -ge 0 ]
    do
        echo -n $rchar
        let "number -= factor"
        let "remainder = number - factor"
    done
factor=10
    rchar=X
    let "remainder = number - factor"
    while [ "$remainder" -ge 0 ]
    do
        echo -n $rchar
        let "number -= factor"
        let "remainder = number - factor"
    done
factor=9
    rchar=IX
    let "remainder = number - factor"
    while [ "$remainder" -ge 0 ]
    do
        echo -n $rchar
        let "number -= factor"
        let "remainder = number - factor"
    done
factor=5
    rchar=V
    let "remainder = number - factor"
    while [ "$remainder" -ge 0 ]
    do
        echo -n $rchar
        let "number -= factor"
        let "remainder = number - factor"
    done
factor=4
    rchar=IV
    let "remainder = number - factor"
    while [ "$remainder" -ge 0 ]
    do
        echo -n $rchar
        let "number -= factor"
        let "remainder = number - factor"
    done
factor=1
    rchar=I
    let "remainder = number - factor"
    while [ "$remainder" -ge 0 ]
    do
        echo -n $rchar
        let "number -= factor"
        let "remainder = number - factor"
    done
  


















