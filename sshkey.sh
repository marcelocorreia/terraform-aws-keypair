#!/usr/bin/env bash

set -ex

KEY_NAME=$1
KEY_PATH=$2

error_exit(){
	echo ERROR: $@

	exit 1
}

if [ "${KEY_NAME}" == "" ] || [ "${KEY_PATH}" == "" ];then
	error_exit "KEY_PATH and KEY_NAME are required"
fi



function create_keys(){
	ssh-keygen -b 2048 -t rsa -f ${KEY_PATH} -q -N "" &>/dev/null
	chmod 400 ${KEY_PATH}

	result
}

function result(){
	jq -n --arg key_path ${KEY_PATH} --arg key_name ${KEY_NAME} '{key_path: $key_path,key_name: $key_name}'
	exit 0
}


create_keys || error_exit
