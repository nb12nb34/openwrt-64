#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================
sed -i 's/KERNEL_PATCHVER:=6.6/KERNEL_PATCHVER:=6.12/g' ./target/linux/x86/Makefile
sed -i '/openwrt-23.05/d' feeds.conf.default
sed -i 's/^#\(.*luci\)/\1/' feeds.conf.default

git clone https://github.com/fw876/helloworld.git package/ssr
# git clone https://github.com/jerrykuku/luci-theme-argon.git  package/luci-theme-argon
# git clone https://github.com/jerrykuku/luci-app-argon-config.git  package/luci-app-argon-config
git clone https://github.com/nb12nb34/luci.git package/nb12nb34
# git clone https://github.com/xiaorouji/openwrt-passwall-packages.git package/openwrt-passwall
# git clone https://github.com/xiaorouji/openwrt-passwall.git package/passwall