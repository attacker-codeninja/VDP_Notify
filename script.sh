#!/bin/bash
while true; do
	while read l; do
		echo "[+] now checking $l" | notify;
		echo "$l" | subfinder -silent -all | anew subdomains.txt | notify -bulk  | httpx | notify -bulk | nuclei -as | notify -bulk
		done < "$1"
	echo "Cycle Complete" | notify;
	sleep 24h;
done
