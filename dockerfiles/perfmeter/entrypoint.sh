#!/bin/bash
set -x
set +e

CA_BUNDLE_PATH='/etc/ssl/certs/ca-bundle.crt'
SSL_CERT_FILE=$CA_BUNDLE_PATH

if [[ ! -z "${CUSTOM_CA_PATH}" ]]
	then cat $CUSTOM_CA_PATH >> $CA_BUNDLE_PATH
fi

unset CA_BUNDLE_PATH

su grafana -s /bin/bash -c "/run.sh"

sleep 120
