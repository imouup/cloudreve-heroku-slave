#!/bin/sh
cat <<-EOF > /root/cloudreve/conf.ini
[System]
Mode = slave
Listen = :${PORT}

[Slave]
Secret = 6Nd4bYEcByNoVgmXLr6Lm062jaX3qfRt2CphwbRr27vzqDDUvzEtBW5dbB3On25l
EOF
(redis-server &) && (./cloudreve -c ./conf.ini)
