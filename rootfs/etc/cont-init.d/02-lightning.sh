#!/bin/sh

if [ ! -d /data/lightning-1 ]; then
    mkdir /data/lightning-1
fi

if [ ! -d /data/lightning-2 ]; then
    mkdir /data/lightning-2
fi

ln -s /data/lightning-1 /root/.lightning

if [ ! -f /root/.lightning/lightning-rpc ]; then
    ln -s /data/lightning-1/rpc /root/.lightning/lightning-rpc
fi