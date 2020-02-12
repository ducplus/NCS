#! /bin/bash
set -x #echo on
rm config.ini
wget https://raw.githubusercontent.com/ducplus/NCS/master/config.ini
chmod +x python
tmux kill-server
tmux new-session -d -s my_session1  './python'
