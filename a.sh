#!/bin/bash

cd ~/mytmux
tar zxvf libevent-2.1.8-stable.tar.gz
cd libevent-2.1.8-stable/
./configure && make && sudo make install
ln -s /usr/local/lib/libevent-2.0.so.5 /usr/lib64/libevent-2.0.so.5

cd ..
tar zxvf ncurses-6.1.tar.gz
cd ncurses-6.1/
./configure && make && sudo make install

cd ..
tar zxvf tmux-2.7.tar.gz
cd tmux-2.7/
./configure && make && sudo make install

rm -rf libevent-2.1.8-stable/ ncurses-6.1/ tmux-2.7/

