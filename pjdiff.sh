#!/bin/bash
#. pjdiff.sh scriptType javaStudy page
#diff -B -b -w $HOME/Documents/progateJava/javaStudy$2/page$3/Person.java
if [ -z $1 ]|[ -z $2 ]|[ -z $3 ]
    then
    echo "引数がありません"
else
    if [ $3 -lt 10 ]
        then
        b1="0${3}"
    else
        b1=$3
    fi
b2=$(($3 + 1))
    if [ $b2 -lt 10 ]
        then
        b2="0${b2}"
    fi

#echo $b1
#echo $b2
case $1 in
    1)
        diff -B -b -w $HOME/Documents/progateJava/javaStudy$2/page$b1/Main.java $HOME/Documents/progateJava/javaStudy$2/page$b2/Main.java;;
    2)
        diff -B -b -w $HOME/Documents/progateJava/javaStudy$2/page$b1/Person.java $HOME/Documents/progateJava/javaStudy$2/page$b2/Person.java;;
    3)
        diff -B -b -w $HOME/Documents/progateJava/javaStudy$2/page$b1/Bicycle.java $HOME/Documents/progateJava/javaStudy$2/page$b2/Bicycle.java;;
    4)
        diff -B -b -w $HOME/Documents/progateJava/javaStudy$2/page$b1/Car.java $HOME/Documents/progateJava/javaStudy$2/page$b2/Car.java;;
    5)
        diff -B -b -w $HOME/Documents/progateJava/javaStudy$2/page$b1/Vehicle.java $HOME/Documents/progateJava/javaStudy$2/page$b2/Vehicle.java;;
esac
fi
