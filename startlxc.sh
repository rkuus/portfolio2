#!/bin/bash

PARSED_OPTIONS=$(getopt -o abcd --long start,stop,help -- "$@")

eval set -- "$PARSED_OPTIONS"

while true; do
        case "$1" in
                -a|--start)
                        sudo systemctl stop lighttpd
                        lxc-start -n u1
                        lxc-start -n u2
                        sleep 15
                        sudo iptables -t nat -A PREROUTING -i wlan0 -p tcp --dport 80 -j DNAT --to-destination 10.0.3.11
                        shift
                        break;;
                -c|--stop)
                        sudo iptables -t nat -D PREROUTING 1
                        lxc-stop -n u1
                        lxc-stop -n u2
                        shift
                        break;;
                -d|--help)
                        echo "Usage: sysinfo [OPTIONS...]"
                        echo -e "\n --start start webserver"
                        echo -e " --stop stop webserver"
                        shift
                        break;;
                --)
                        shift
                        break;;
        esac
done

exit 0