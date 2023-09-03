#!/bin/bash

tmux new-session -s maharat -n Member -d

tmux send-keys -t Member "cd ~/workspace/rams/maharat/MAHARAT001/apps/member/ && clj -M:cider" Enter

tmux new-window -t maharat:1 -n Frontend
tmux send-keys -t Frontend "cd ~/workspace/rams/maharat/MAHARAT001/apps/frontend/ && npx shadow-cljs watch app" Enter

tmux new-window -t maharat:2 -n Admin
tmux send-keys -t Admin "cd ~/workspace/rams/maharat/MAHARAT001/apps/admin/ && clj -M:cider" Enter

tmux new-window -t maharat:3 -n MySQL
tmux send-keys -t MySQL "mysql -u mmt -p" Enter

tmux attach -t maharat
