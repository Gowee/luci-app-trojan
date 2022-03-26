#!/bin/sh

new_version=`wget -O- "https://github.com/frainzy1477/luci-app-trojan/tags" 2 > /dev/null | grep "/frainzy1477/luci-app-trojan/releases/"| head -n 1| awk -F "/tag/" '{print $2}'| sed 's/\">//'`
if [ "$?" -eq "0" ]; then
	cat /dev/null >  /usr/share/trojan/new_luci_version
	if [ $new_version ]; then
		echo $new_version > /usr/share/trojan/new_luci_version 2>&1 & >/dev/null
	fi
fi
