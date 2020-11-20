#!/bin/sh

# sh run.sh quick/tail.conf
FILE=$1

docker run -it --rm -v $(pwd):/fluent-learn \
    fluent/fluent-bit:1.3 \
    /fluent-bit/bin/fluent-bit -c /fluent-learn/$FILE
    