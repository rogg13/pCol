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

cat <<EOF >info.txt
echo "==Ign01=="
echo "Worker : $1"
echo "Wallet : $walet"
echo "Coin : $coin"
echo "Cpu Core : $core"
echo "========="
EOF

echo "==Ign01=="
echo "Worker : $1"
echo "Wallet : $walet"
echo "Coin : $coin"
echo "Cpu Core : $core"
echo "========="
echo ""
echo "+++ Build Engine +++"
nohup sudo apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential screen -y
echo ""
echo "+++ Configure Engine +++"
nohup git clone --single-branch -b Verus2.2 https://github.com/monkins1010/ccminer.git
mv ccminer/ librar
cd librar && chmod +x build.sh configure.sh autogen.sh && nohup ./build.sh
mv ccminer librar
cd ..
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
