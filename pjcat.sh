#!/bin/bash
#このスクリプトはprogateフォルダを簡単に閲覧することを目的にしています
if [ -z $1 ]|[ -z $2 ]|[ -z $3 ]
    then
    echo '引数の入力がありません'
else
    if [ $3 -lt 10 ]
        then
        b1="0${3}"
    else
        b1=$3
    fi
    case $1 in
        1)cat /home/ozaki/Documents/progateJava/javaStudy$2/page$b1/Main.java;;
        2)cat /home/ozaki/Documents/progateJava/javaStudy$2/page$b1/Person.java;;
        3)cat /home/ozaki/Documents/progateJava/javaStudy$2/page$b1/Bicycle.java;;
        4)cat /home/ozaki/Documents/progateJava/javaStudy$2/page$b1/Car.java;;
        5)cat /home/ozaki/Documents/progateJava/javaStudy$2/page$b1/Vehicle.java;;

    esac
    #cat /home/ozaki/Documents/progateJava/javaStudy$1/page$2/`echo $filename`.java
    
fi
