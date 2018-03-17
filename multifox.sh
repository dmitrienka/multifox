#!/usr/bin/env bash

for i in `seq 1 $1`; do
    mkdir multifox_out_$i
    cp $2 multifox_out_$i
    cd multifox_out_$i
    num=$RANDOM
    let "num %= 3000"
    /home/dmitrienka/bin/Fox-nogui $2  --silent --randomize -n $num -o $2_new_$num.xml
    /home/dmitrienka/bin/Fox-nogui $2_new_$num.xml  --silent --randomize -n $3 --nbrun  $4  -o multifox_out_$i.xml  &
    cd ..
done
wait
