#!/bin/bash

tmux new-session -s deployer -n Backend -d

tmux send-keys -t Backend "cd ~/workspace/rams/RAMSCICD002/apps/backend/ && clj -M:cider" Enter

tmux new-window -t deployer:1 -n Frontend
tmux send-keys -t Frontend "cd ~/workspace/rams/RAMSCICD002/apps/frontend/ && npx shadow-cljs watch app" Enter

tmux new-window -t deployer:2 -n Neo4j
tmux send-keys -t Neo4j "cd ~/NEO4J_HOME/" Enter
tmux send-keys -t Neo4j "./bin/neo4j console" Enter

tmux attach -t deployer
