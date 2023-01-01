#!/bin/bash
#it's progate/javaStudy Directory result tree command.
if [ -z $1 ]
    then
    echo "引数がありません"
else
        tree $HOME/Documents/progateJava/javaStudy$1 
fi
