## Parsing script for greppable masscan output to get specific ports

### Arguments
-iplist : grepable output (-oG)
-port : port number wanted to be filtered
-portlist : list of port to be filtered

### Usage
./winnower.sh -iplist <file> -port <port> 
./winnower.sh -iplist <file> -portlist <portlist>

Example: ./winnower.sh -iplist iplist.gnmap -port 53
Example: ./winnower.sh -iplist iplist.gnmap -portlist 23,53
