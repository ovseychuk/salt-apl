#!/bin/bash

# Set the server IP and port
SERVER_IP="192.168.100.123"
SERVER_PORT="5202"

# Run the iperf3 command with output in JSON format
/usr/bin/iperf3-udp -u -c "$SERVER_IP" -p "$SERVER_PORT" -J
