#!/bin/bash

list_descendants ()
{
  local children=$(ps -o pid= --ppid "$1")

  for pid in $children
  do
    list_descendants "$pid"
  done

  echo "$children"
}

cd "$(dirname "$0")"
cd SHAS
gnome-terminal --disable-factory -x "bash" -c "java -jar ../start.jar" &
pid=$!
url=http://localhost:8888/SHAS/
alive=1
sleep 10
xdg-open $url
while [ $alive -eq 1 ]; 
do
    printf "\n"
    printf "*************************************************************\n"
    printf "****                   Welcome to SHAS                   ****\n"
    printf "*************************************************************\n"
    printf "\n"
    printf "Please Insert a command\n"
    printf "kill - will terminate the simulator\n"
    printf "open - will open the default web browser with the SHAS local url\n\n"
    read command
    if [ "$command" == "kill" ]
    then
        alive=0
    fi
    if [ "$command" == "open" ]
    then
        xdg-open $url
    fi
done
kill -INT $(list_descendants $pid)
kill -INT $pid
wait $pid