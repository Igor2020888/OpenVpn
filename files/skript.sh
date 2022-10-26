#!/bin/bash

cat user1_for_generate.conf \
    <(echo -e '<ca>') ca.crt \
    <(echo -e '</ca>\n\n\n<cert>') \
    user1.crt <(echo -e '</cert>\n\n\n<key>') \
    user1.key <(echo -e '</key>\n\n\n<tls-auth>') \
    ta.key <(echo -e '</tls-auth>\n\n\n ') \
    user1_for_generate2.conf <(echo -e ' ') \
    > user1_main.conf


