#!/bin/sh
export http_proxy="http://proxy:3128"
export ftp_proxy="http://proxy:3128"
export https_proxy="http://proxy:3128"
export no_proxy="localhost,127.0.0.1,127.0.1.1,127.0.0.0"

if [ "$XDG_CURRENT_DESKTOP" != "" ]; then
	gsettings set org.gnome.system.proxy mode "auto"
fi
