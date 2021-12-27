#!/bin/bash

# download manga chapters

for chap in $(seq -f "%04g" 36 500)
do
	wget -rnc https://scans-hot.leanbox.us/manga/Dandadan/$chap-001.png || break	# || break, exit the loop if an error happens, eg. 404 NOT FOUND
	for page in $(seq -f "%03g" 2 100)
	do
		wget -rnc https://scans-hot.leanbox.us/manga/Dandadan/$chap-$page.png || break
		# using -nc (no-clobber) + -r (recursive) would skip duplicated files
		# --no-netrc skips credential's fetching
	done
done

echo Script has stopped running, latest chapter: $((10#$chap - 1)).	# 10#$chap is to force $chap being in base-10 instead of 0002 format
