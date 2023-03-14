#!/bin/bash
#This script by AlkhaNET (http://github.com/alkhanet26)

{
echo -e "Downloading File dependencies"
sleep 2
wget --no-check-certificate "https://raw.githubusercontent.com/alkhanet26/install-xderm-mt7620/main/badvpn.ipk" -O /tmp/badvpn.ipk && chmod +x /tmp/badvpn.ipk
wget --no-check-certificate "https://raw.githubusercontent.com/alkhanet26/install-xderm-mt7620/main/corkscrew.ipk" -O /tmp/corkscrew.ipk && chmod +x /tmp/corkscrew.ipk
wget --no-check-certificate "https://raw.githubusercontent.com/alkhanet26/install-xderm-mt7620/main/sshpass.ipk" -O /tmp/sshpass.ipk && chmod +x /tmp/sshpass.ipk
wget --no-check-certificate "https://raw.githubusercontent.com/alkhanet26/install-xderm-mt7620/main/trojan.ipk" -O /tmp/trojan.ipk && chmod +x /tmp/trojan.ipk
wget --no-check-certificate "https://raw.githubusercontent.com/alkhanet26/install-xderm-mt7620/main/v2ray-core.ipk" -O /tmp/v2ray-core.ipk && chmod +x /tmp/v2ray-core.ipk
wget --no-check-certificate "https://raw.githubusercontent.com/alkhanet26/install-xderm-mt7620/main/v2ray-plugin.ipk" -O /tmp/v2ray-plugin.ipk && chmod +x /tmp/v2ray-plugin.ipk
clear
cd /tmp && opkg update && opkg install --force-depends *.ipk
clear
opkg update && opkg install --force-depends badvpn corkscrew sshpass stunnel bash wget screen redsocks openssh-keygen openssh-server coreutils-base64 coreutils-timeout httping procps-ng-ps git curl python3-pip openssh-client openssl-util php7 php7-cgi php7-mod-session openvpn-openssl
clear
echo -e "Dependencies has been downloaded"
sleep 2
clear
echo -e "Installing xderm-gui"
sleep 3
wget -O installer "https://raw.githubusercontent.com/ryanfauzi1/xderm-mini_GUI/main/installer" && chmod +x installer && ./installer
wget -O installer-login "https://raw.githubusercontent.com/ryanfauzi1/xderm-mini_GUI/main/installer-login" && bash installer-login
wget -O /bin/fixphp "https://raw.githubusercontent.com/helmiau/openwrt-config/main/fix-xderm-libernet-gui" && chmod +x /bin/fixphp
wget -O /etc/config/uhttpd "https://raw.githubusercontent.com/portalssh/openwrt/main/xderm-mini/uhttpd" && /etc/init.d/uhttpd restart
wget -O /etc/redsocks.conf "https://raw.githubusercontent.com/portalssh/openwrt/main/xderm-mini/redsocks"
wget -O /usr/bin/gproxy "https://raw.githubusercontent.com/portalssh/openwrt/main/xderm-mini/gproxy" && chmod +x /usr/bin/gproxy
wget --no-check-certificate "https://raw.githubusercontent.com/alkhanet26/install-xderm-mt7620/main/xderm-gui.htm" -O /usr/lib/lua/luci/view/xderm-gui.htm && chmod +x /usr/lib/lua/luci/view/xderm-gui.htm
wget --no-check-certificate "https://raw.githubusercontent.com/alkhanet26/install-xderm-mt7620/main/xderm-gui.lua" -O /usr/lib/lua/luci/controller/xderm-gui.lua && chmod +x /usr/lib/lua/luci/controller/xderm-gui.lua
clear
echo -e "All process was completed"
sleep 1
echo -e "rebooting openwrt"
reboot
}
