#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

sed -i 's/192.168.1.1/192.168.0.5/g' package/base-files/luci/bin/config_generate
sed -i 's/192.168.1.1/192.168.0.5/g' package/base-files/files/bin/config_generate
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' ./feeds/luci/collections/luci/Makefile
chmod -R 755 ./package/nb12nb34/

rm -rf ./feeds/luci/applications/luci-app-wechatpush
rm -rf ./feeds/luci/themes/luci-theme-argon
rm -rf ./feeds/package/nb12nb34/luci-app-poweroff
