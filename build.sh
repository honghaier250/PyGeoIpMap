#!/bin/bash

pip install basemap
pip install geoip2

sudo journalctl -u ssh | grep -oE '\b([0-9]{1,3}\.){3}[0-9]{1,3}\b' | sort -u > malicious_ips.txt
python3 pygeoipmap.py -i malicious_ips.txt --service m --db GeoLite2-City.mmdb
