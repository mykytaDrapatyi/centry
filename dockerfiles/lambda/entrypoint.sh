#!/bin/bash
set -x
set +e

CA_BUNDLE_PATH='/etc/ssl/certs/ca-bundle.crt'
SSL_CERT_FILE=$CA_BUNDLE_PATH

if [[ ! -z "${CUSTOM_CA_PATH}" ]]
	then cat $CUSTOM_CA_PATH >> $CA_BUNDLE_PATH
fi

unset CA_BUNDLE_PATH

su sbx_user1051 -m -s /bin/bash -c "HOME=/home/sbx_user1051 /var/rapid/init --bootstrap /var/runtime/bootstrap $1 \"$(echo "$2" | sed -r 's/\\/\\\\/g' | sed -r 's/"/\\"/g')\""

sleep 120
