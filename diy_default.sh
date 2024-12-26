#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Blog: https://p3terx.com
#=============================================================

sed -i "/helloworld/d" "feeds.conf.default"
echo "src-git helloworld https://github.com/fw876/helloworld;main" >> "feeds.conf.default"
# git clone -b openwrt-18.06 https://github.com/tty228/luci-app-wechatpush.git package/wechatpush
git clone https://github.com/nb12nb34/luci.git package/nb12nb34
