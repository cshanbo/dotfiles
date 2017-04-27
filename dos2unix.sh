if [ $# -ne 1 ]
then
	echo 'usage: cmd + dir'
	exit 1
fi
find $1 -type f -exec dos2unix {} \;
