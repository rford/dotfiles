#!/bin/sh

day="$(date "+%d")"
output="$(echo $day)$(cal)"
number="$(echo "$output" | wc -l)"
text="$(date "+%H:%M %Z")"


tooltip="$(echo "$output" |sed -z 's/\n/\\\\n/g')"

echo "{\"text\":\""$text"\", \"tooltip\":\"<tt>$tooltip</tt>\"}"
exit 0
