Parsing script for grepable masscan output to get specific ports

-----------------------------------------

Argument list

-iplist : grepable output (-oG)

-port : port number wanted to be filtered

-portlist : list of port to be filtered

-----------------------------------------

Usage : Script -iplist <file> -port <port> OR Script -iplist <file> -portlist <portlist>

Example : Script -iplist iplist.gnmap -port 53

Example : Script -iplist iplist.gnmap -portlist 23,53
