#!/system/bin/sh

set_ap_log () {
   chmod 0666 /data/log/vsm_logs/*
}

set_tcp_dump () {
   chmod 0666 /data/log/tcp_logs/*
}

if [ "$1" = "-a" ]; then
   set_ap_log
fi

if [ "$1" = "-t" ]; then
   set_tcp_dump
fi
