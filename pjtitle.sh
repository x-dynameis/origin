#!/bin/bash
ttype=1
study=5
page=1
end=12
echo $ttype

while [ $page -le $end ];do

case $ttype in
1)typeR='Main.java';;
2)typeR='Person.java';;
3)typeR='Bicycle.java';;
4)typeR='Car.java';;
5)typeR='Vehicle.java';;
esac
		echo "   ">>xaa
		echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^">>xaa
		echo "Study$study page:$page; $typeR">>xaa 
#		echo "Study$study page:$page; $typeR" 
		pjdiff.sh $ttype $study $page >> $HOME/xaa
#		echo pjdiff.sh $ttype $study $page
	if [ $ttype -lt 5 ];then
	ttype=$(($ttype + 1))
	continue
	else
	ttype=1
	fi	
page=$(($page + 1))
done 
