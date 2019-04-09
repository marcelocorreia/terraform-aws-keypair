#!/usr/bin/env bash

set -ex

KEY_NAME="$1"
KEY_PATH="$2"
KEY_PATH=$(echo ${KEY_PATH} | sed "s,/$,,")
PUBLIC_KEY_PATH="${KEY_PATH}.pub"
PUBLIC_KEY_PATH=$(echo ${PUBLIC_KEY_PATH}| sed 's/\/.pub/.pub/g')

error_exit(){
	echo ERROR: $@
	jq -n --arg error "ERROR: $@" '{error: $error}'
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
	jq -n --arg key_path ${KEY_PATH} --arg key_name ${KEY_NAME} --arg pub_keypath ${PUBLIC_KEY_PATH} '{key_path: $key_path, key_name: $key_name, pub_keypath: $pub_keypath}'
	exit 0
}


create_keys || error_exit
