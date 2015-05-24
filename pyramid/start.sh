#!/usr/bin/env bash
# AUTHOR: Zheng, Ping <zp@ping.biz>
PRJ_DIR=/app/${PRJN}
if [ -d ${PRJ_DIR} ]; then
    cd ${PRJ_DIR}
else
    pcreate -s starter ${PRJN}
    cd ${PRJ_DIR}
    python setup.py develop
fi
pserve development.ini --reload
