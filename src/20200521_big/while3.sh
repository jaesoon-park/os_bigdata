#!/bin/sh
echo "비밀번호를 입력하세요."
read mypass
while [ $mypass != "1234" ]
do
	echo "틀렸음. 다시 입력하세요."
	read mypass
done 
echo "통과~~"
exit 0 

