#!/bin/sh
progname=`basename $0`
targets="{ping,traceroute}.gts.router"

if [ "$progname" == "lib.gts" -a "$1" == "targets" ]; then
	echo $targets
	exit
fi

address=$1
action=`echo $progname |cut -f 1 -d '.'`

case $action in
	traceroute)
		wget -q "http://cgi.ipartners.pl/cgi-bin/traceroute.cgi?hostname=$address"/ -O - | \
		sed -e's/<[^>]*>//g'
		;;
	ping)
		wget -q --post-data "hostname=$address" "http://cgi.ipartners.pl/cgi-bin/ping.cgi" -O - | \
		sed -e's/<[^>]*>//g'
		;;
esac


