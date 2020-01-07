# Design of Computer Systems
##################### THE WEB #######################
#1. Let's mimic the web client:only show first 7 line
echo -e "GET / HTTP/1.0\n\n" | nc 192.168.1.55 3000 | head -7
echo -e "GET / HTTP/1.0\nHost: neverssl.com\n\n" | nc neverssl.com 80 | head -7

#2. Mimic webserver
while true; do echo -e "HTTP/1.1 200 OK\n\n $(date)" | nc -l -p 8080 -q 1; done
while true; do echo -e "HTTP/1.1 200 OK\n\n $(<output.txt)" | nc -l -p 8080 -q 1; done
