#!/bin/bash

tmux new-session -s padelist -n Console -d

tmux send-keys -t Console "cd ~/workspace/thepadelist/MobileApp/ && run-android.sh" Enter

tmux attach -t padelist
