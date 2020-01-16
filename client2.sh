#!/bin/bash
echo -e "GET / HTTP/1.0\nHost: neverssl.com\n\n" | nc neverssl.com 80 
