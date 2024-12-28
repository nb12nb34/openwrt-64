#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================
git clone https://github.com/jerrykuku/luci-theme-argon.git  package/luci-theme-argon
git clone -b js https://github.com/sirpdboy/luci-theme-kucat.git  package/luci-theme-kucat
git clone https://github.com/tty228/luci-app-wechatpush.git package/luci-app-serverchan
sed -i 's/192.168.1.1/192.168.0.5/g' package/base-files/luci2/bin/config_generate
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' ./feeds/luci/collections/luci/Makefile
chmod -R 755 ./package/nb12nb34/
# rm -rf ./feeds/luci/applications/luci-app-serverchan
# rm -rf ./feeds/luci/applications/luci-app-dockerman
