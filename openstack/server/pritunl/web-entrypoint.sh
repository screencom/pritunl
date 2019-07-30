#!/usr/bin/env bash
#
#
# setup a route to connected clients on the network defined
# in the pritunl server
# if more than one server needs to be reached, add more rules here
/sbin/ip r add 172.17.100.0/24 via 172.17.100.1 dev eth0

# the command to actually run in the container
tail -f /dev/null
