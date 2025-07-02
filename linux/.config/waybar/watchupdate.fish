#!/bin/fish

while true
	inotifywait -e modify ./* > /dev/null
	killall -SIGUSR2 waybar
end
