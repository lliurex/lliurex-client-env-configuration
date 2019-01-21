
eval $(n4d-vars getvalues CLIENT_PROXY_ENABLED | grep CLIENT_PROXY_ENABLED)

if [ "$CLIENT_PROXY_ENABLED" = "False" ]; then

	unset http_proxy
	unset https_proxy
	unset no_proxy

	# gsettings should only be called when using a desktop session
	if [ "$XDG_CURRENT_DESKTOP" != "" ]; then
		gsettings set org.gnome.system.proxy mode "none"
	fi

fi

