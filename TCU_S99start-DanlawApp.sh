#!/bin/sh

do_start()
{
    echo "Starting App_qcm ...";
    (
      cd /data/Danlaw
      sh start.sh
    ) &
}

do_CleanUart()
{
    echo "kill Uart ...";
    (
      killall quectel-uart-ddp
    ) &
}

do_CleanUart;
do_start;

exit 0
