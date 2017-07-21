#!/bin/bash

set -e

VENV_ACTIVATE=${VENV_PATH}/bin/activate
REQ_FILE=${PROJECT_PATH}/requirements.txt

#Init virtualenv if not exists
 if [ ! -f ${VENV_ACTIVATE} ]; then
 	virtualenv ${VENV_PATH}
 fi

source ${VENV_PATH}/bin/activate

if [ -f ${REQ_FILE} ]; then
 	pip install -r ${REQ_FILE}
fi

exec "$@"