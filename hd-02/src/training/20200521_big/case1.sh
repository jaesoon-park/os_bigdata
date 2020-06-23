#!/bin/sh
case "$1" in
	start)
		echo "시작~~";;
	stop)
		echo "중지~~";;
	restart)
		echo "다시 시작~~";;
	*)
		echo "뭔지 모름~~";;
esac
exit 0

