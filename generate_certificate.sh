#!/bin/bash
rm -f localdev.crt localdev.key v3.ext
openssl req -newkey rsa:2048 -config ./openssl.cnf -new -nodes -sha256 -x509 -days 365 -keyout localdev.key -out localdev.crt -extensions 'v3_req'
