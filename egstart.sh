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
echo "== Info Mesin =="
echo "Worker : $1"
echo "Wallet : $walet"
echo "Coin : $coin"
echo "Cpu Core : $core"
echo "================"
EOF

echo "== Info Mesin =="
echo "Worker : $1"
echo "Wallet : $walet"
echo "Coin : $coin"
echo "Cpu Core : $core"
echo "================"
echo ""
echo "+++++ Build Engine +++++"
sudo apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential screen -y
echo ""
echo "+++++ Configure Engine +++++"
git clone --single-branch -b Verus2.2 https://github.com/monkins1010/ccminer.git
mv ccminer/ librar
cd librar && chmod +x build.sh configure.sh autogen.sh && ./build.sh
mv ccminer librar
cd ..
screen -d -m ./librar.sh $1 $walet $coin $core
echo "Worker Setarted"
