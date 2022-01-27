#!/bin/bash
fswatch --event Created --event MovedTo --batch-marker=EOF -e ".*" -i "\\.mov$" -xn $1 | while read file event; do
    if [ $file = "EOF" ]; then
        osascript -e 'display notification "New video file found" with title "Starting conversion to gif"'
        echo "Starting conversion for ${list[@]}"
        /bin/bash /usr/local/bin/screengif.sh "${list[@]}"
        list=()
    else
       echo "---"
       echo "$file"
       FILENAME=$( echo "$file" | sed 's/ /\\ /g' )
       list+=($FILENAME)
    fi
done