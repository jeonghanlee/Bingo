

PAUSE=0.1



for i in `seq 1 9`;
do
    printf ">>>  "
    date '+%Y-%m-%d %H:%M:%S' 
    echo "------------------------------------------"
    caput Bingo90:0$i 0
    sleep ${PAUSE}

done
for i in `seq 10 90`;
do
    printf ">>>  "
    date '+%Y-%m-%d %H:%M:%S' 
    echo "------------------------------------------"
    caput Bingo90:$i 0
    sleep ${PAUSE}

done
