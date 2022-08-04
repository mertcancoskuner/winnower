## Parsing script for greppable masscan output to get specific ports

### Arguments
- -iplist: Greppable output (-oG)
- -port: Specific port number to filter
- -portlist: List of ports to filter

### Usage
- winnower.sh -iplist <file> -port <port>
- winnower.sh -iplist <file> -portlist <portlist>

### Examples
- winnower.sh -iplist iplist.gnmap -port 53
- winnower.sh -iplist iplist.gnmap -portlist 23,53
