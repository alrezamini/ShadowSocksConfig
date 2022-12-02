if [[ `whoami` == "root"  ]];
then
	apt purge shadowsocks-libev && rm -r /etc/shadowsocks-libev && apt-get autoremove
	apt update
	apt install shadowsocks-libev
	wget -P /etc/shadowsocks-libev/ https://github.com/shadowsocks/v2ray-plugin/releases/download/v1.3.2/v2ray-plugin-linux-amd64-v1.3.2.tar.gz
	tar -xf /etc/shadowsocks-libev/v2ray-plugin-linux-amd64-v1.3.2.tar.gz -C /etc/shadowsocks-libev/
	mv /etc/shadowsocks-libev/v2ray-plugin_linux_amd64 /etc/shadowsocks-libev/v2ray-plugin
	cp /etc/shadowsocks-libev/v2ray-plugin /usr/bin/
else
	echo "You Must Be Admin"
fi
