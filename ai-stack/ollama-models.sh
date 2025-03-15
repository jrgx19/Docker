#!/bin/bash

/bin/ollama serve &
pid=$!
sleep 5

#add your desired modes below. List available at:
# https://ollama.com/library

for model in \
llama3.2 \
phi4 \
phi4-mini \
deepseek-r1:1.5b \
starcoder2:7b
do
   echo "Pulling the $model model"
   ollama pull $model
done
wait $pid