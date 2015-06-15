#!/usr/bin/env bash
# AUTHOR: Zheng, Ping <zp@ping.biz>
PRJ_DIR=/app/${PRJN}
if [ -d ${PRJ_DIR} ]; then
    "do nothing!"
else
    pcreate -s starter ${PRJN}
fi
cd ${PRJ_DIR}
python setup.py develop
pserve development.ini --reload
