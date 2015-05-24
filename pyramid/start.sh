#!/usr/bin/env bash
# AUTHOR: Zheng, Ping <zp@ping.biz>
PRJ_DIR=/app/${PRJN}
[ -d ${PRJ_DIR} ] || pcreate -s starter ${PRJN}
cd ${PRJ_DIR}
pserve development.ini --reload
