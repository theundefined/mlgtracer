#!/bin/sh
progname=`basename $0`
targets="{ping,traceroute}.gts.router"

if [ "$progname" == "lib.gts" -a "$1" == "targets" ]; then
	echo $targets
	exit
fi

case "$1" in
        as)
        echo 8246
        exit
        ;;
        url)
        echo http://noc.gts.pl/
        exit
        ;;
        *)
        address=$1
        ;;
esac
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


