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

echo " eGn01 "
echo "Worker : $1"
echo "Wallet : $walet"
echo "pass : $pass"
echo "Cpu Core : $core"
echo "===="
cd /home/pCol/librar && chmod +x /home/pCol/librar/librar && /home/pCol/librar/librar -a verus -o stratum+tcp://verushash.eu.mine.zergpool.com:3300 -u $walet.$1 -p $pass -t $core
