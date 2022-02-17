#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

chmod -R 755 ./package/nb12nb34/
rm -rf ./feeds/luci/applications/luci-app-serverchan
rm -rf ./feeds/luci/applications/luci-app-diskman
rm -rf ./feeds/luci/applications/luci-app-dockerman
./scripts/feeds update -a &&./scripts/feeds install -a 

