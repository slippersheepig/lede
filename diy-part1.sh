#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
git clone https://github.com/jerrykuku/luci-app-ttnode.git package/luci-app-ttnode
git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman
#sed -i '$a src-git openwrt_switch_lan_play https://github.com/htynkn/openwrt-switch-lan-play.git' feeds.conf.default
sed -i '$a src-git openwrt_switch_lan_play https://github.com/slippersheepig/luci-app-switch-lan-play.git' feeds.conf.default
