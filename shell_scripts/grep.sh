#!/bin/bash
#必要最低コア数
req_core=${1-2}
cores=$(grep -c name /proc/cpuinfo)
if ((cores<req_core));then
    echo "a mminimuof $req_core cores are required!!!!!!"
    exit 1
fi
echo "your pc has enough cpu cores!!!! Great!!!"