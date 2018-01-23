mkdir ~/tempNanoFix
cd ~/tempNanoFix

git clone https://github.com/Setherizor/prettyNano.git
cd ./prettyNano

chmod +x ./init.sh
./init.sh

cd ~
rm -rf ~/tempNanoFix