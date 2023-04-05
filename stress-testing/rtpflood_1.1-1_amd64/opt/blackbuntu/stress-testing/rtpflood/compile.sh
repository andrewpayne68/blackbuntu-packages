#!/usr/bin/env bash
#
# [Release]: Blackbuntu 22.04.2 LTS amd64
# [Website]: https://blackbuntu.org/releases/
# [License]: http://www.gnu.org/licenses/gpl-3.0.html

## Clear screen
## ------------
function clearscreen()
{
	clear
	sleep 2s
}

## Keep alive
## ----------
function keepalive()
{
	sudo -v
	while true;
	do
		sudo -n true;
		sleep 60s;
		kill -0 "$$" || exit;
	done 2>/dev/null &
}

## Compile binary
## --------------
function compile()
{
	echo "Please wait while compiling the program ..."
	sudo rm -f /usr/bin/rtpflood
	cd /opt/blackbuntu/stress-testing/rtpflood/
	sudo make >/dev/null 2>&1
	sudo ln -s /opt/blackbuntu/stress-testing/rtpflood/rtpflood /usr/bin/rtpflood
	clearscreen
	rtpflood --help
}

## Launch
## ------
function launch()
{
	clearscreen
	keepalive
	compile
}

## -------- ##
## Callback ##
## -------- ##

launch
