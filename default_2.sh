#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

git clone https://github.com/fw876/helloworld.git package/ssr
git clone https://github.com/nb12nb34/luci.git package/nb12nb34
git clone https://github.com/esirplayground/luci-app-poweroff.git  package/luci-app-poweroff
git clone https://github.com/Openwrt-Passwall/openwrt-passwall-packages.git package/openwrt-passwall-packages
git clone https://github.com/Openwrt-Passwall/openwrt-passwall.git package/openwrt-passwall

