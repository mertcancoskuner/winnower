#Author: Mert Can Coşkuner
#!/bin/bash

usage() {
	echo "(╯°□°)╯︵ ┻━┻ USER MANUAL ┻━┻ ︵ ヽ(°□°ヽ)"
	echo "------------------------------------------"
	echo "Author: Mert Can Coskuner"
	echo "------------------------------------------"
	echo "Argument list"
	echo "------------------------------------------"
	echo "-iplist : grepable 'masscan' output (-oG),"
	echo "-port : port number wanted to be filtered,"
	echo "-portlist : list of port to be filtered."
	echo "------------------------------------------"
	echo "Usage : Script -iplist <file> -port <port> OR Script -iplist <file> -portlist <portlist>"
	echo "Example : Script -iplist iplist.gnmap -port 53"
	echo "Example : Script -iplist iplist.gnmap -portlist 23,53"
	exit
}

if [[ $# -lt 2 ]]; then
	usage
fi

if [[ $# -ne 4 ]]; then
	usage
fi

while [[ $# -gt 1 ]]; do
	key="$1"
	case $key in
		-iplist)
			iplist="$2"
			shift
			;;
		-port)
			port="$2"
			shift
			;;
		-portlist)
			portlist="$2"
			shift
			;;
		*)
			usage
			;;
	esac
	shift
done

if [[ "$iplist" == "" ]]; then
	usage
fi

if [[ "$port" -lt 2 ]]; then
	if [[ "$portlist" != "" ]]; then
		for i in $(echo $portlist | sed "s/,/ /g"); do
		cat "$iplist" | grep ": $i/" | cut -d " " -f 2 > "$iplist":"$i"
		done
	else usage
	fi
else
	cat "$iplist" | grep ": $port/" | cut -d " " -f 2 > "$iplist":"$port"
fi
