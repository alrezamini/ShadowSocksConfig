if [[ `whoami` == "root"  ]];
then
	v2l="$1"
	apt purge shadowsocks-libev && rm -r /etc/shadowsocks-libev && apt-get autoremove
	apt update && apt install shadowsocks-libev
	wget -P /etc/shadowsocks-libev/ $v2l
	tar -xf /etc/shadowsocks-libev/${v2l##*/} -C /etc/shadowsocks-libev/
	mv /etc/shadowsocks-libev/v2ray-plugin_linux_amd64 /etc/shadowsocks-libev/v2ray-plugin
	cp /etc/shadowsocks-libev/v2ray-plugin /usr/bin/
else
	echo "You Must Be Admin"
fi
