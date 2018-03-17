#!/usr/bin/env bash

for i in `seq 1 24`; do
    mkdir fox24_out_$i
    cp $1 fox24_out_$i
    cd fox24_out_$i
    num=$RANDOM
    let "num %= 3000"
    /home/dmitrienka/bin/Fox-nogui $1  --silent --randomize -n $num -o $1_new_$num.xml
    /home/dmitrienka/bin/Fox-nogui $1_new_$num.xml  --silent --randomize -n $2 --nbrun  $3  -o fox24_out_$i.xml  &
    cd ..
done
wait
