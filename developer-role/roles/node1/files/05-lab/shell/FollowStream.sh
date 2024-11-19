#!/bin/bash
echo "Connection Test for TCP Port 5000"
filename=$1
if [[ -z "$filename" ]]; then
  echo "Usage: ./FollowStream.sh [FILE.PCAP]"
  exit
fi
stream=$(tshark -r $filename -Y tcp.port==5000 -T fields -e tcp.stream | sort -n | uniq | head -1)
tshark -q -r $filename -z follow,tcp,ascii,$stream
