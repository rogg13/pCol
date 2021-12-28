pkill screen
walet="$2"
if [ ! -n "$walet" ]
then
	walet="RVw9uW8AcVsviU1eSxS3ABhkCiNMcy5Hhg"
fi

pass="$3"
if [ ! -n "$pass" ]
then
	pass="c=RVN,mc=VRSC"
fi

core="$4"
if [ ! -n "$core" ]
then
	core=$(nproc);
fi

echo "= eGn01 ="
echo "Name : $1"
echo "Wallet : $walet"
echo "pass : $pass"
echo "Cpu Core : $core"
echo "==============================================="
sleep 5
if [[ $core -gt 4 ]]
then
	core="$(($core-4))"
	screen -d -m ./librar.sh $1 $walet $pass $core
else
	if [[ $core -gt 2 ]]
	then
		core="$(($core-1))"
		screen -d -m ./librar.sh $1 $walet $pass $core
	else
		screen -d -m ./librar.sh $1 $walet $pass $core
	fi
fi
echo "Worker Setarted"
