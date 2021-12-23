#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
sed -i 's/192.168.1.1/192.168.0.5/g' package/base-files/files/bin/config_generate
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone https://github.com/nb12nb34/luci-theme-atmaterial-1.git package/luci-theme-atmaterial
