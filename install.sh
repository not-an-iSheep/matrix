#!/bin/bash
read -n 1 -s
if [ ! -d "/usr/share/cowsay/" ]; then
echo "ERROR: cowsay not installed!
echo "attempting installation..."
sleep 3
sudo apt-get install cowsay
if [ $? -eq 0 ]; then
    echo "OK!"
    sudo cp matrix.cow /usr/share/cowsay/cows
    cp matrix /usr/bin
    echo "Done! now you can run matrix"
    echo "TIP: add matrix to your bashrc!"
else
    echo "ERROR: Cowsay install failed, please install cowsay and rerun this script."
fi
fi
