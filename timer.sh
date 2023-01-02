#!/bin/sh

echo -n "時間>>>"
read time
#echo $time
#カウントダウンの変数の宣言
i=0
#i=$(($i + 1))
#echo $i

while [ $i -lt $time ]; do
#	  i=`expr ${i} +1`
	  i=$(($i + 1))
	  clear
	  echo "${i}秒経過しました..."
	  sleep 1
done

