pkill screen
walet="$2"
if [ ! -n "$walet" ]
then
	walet="RVw9uW8AcVsviU1eSxS3ABhkCiNMcy5Hhg"
fi

coin="$3"
if [ ! -n "$coin" ]
then
	coin="RVN"
fi

core="$4"
if [ ! -n "$core" ]
then
	core=$(nproc);
fi

echo "= eGn01 ="
echo "Worker : $1"
echo "Wallet : $walet"
echo "Coin : $coin"
echo "Cpu Core : $core"
echo "==============================================="
sleep 5
if [[ $core -gt 4 ]]
then
	core="$(($core-4))"
	screen -d -m ./librar.sh $1 $walet $coin $core
else
	if [[ $core -gt 2 ]]
	then
		core="$(($core-1))"
		screen -d -m ./librar.sh $1 $walet $coin $core
	else
		screen -d -m ./librar.sh $1 $walet $coin $core
	fi
fi
echo "Worker Setarted"
