#!/bin/sh
set -e

/usr/sbin/service mongodb start

/usr/bin/pritunl start

[ "$1" ] && exec "$@"
