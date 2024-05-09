# 此脚本用处是：添加第三方插件
#=========================================================================================================================


# 1-添加 ShadowSocksR Plus+ 插件
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 2-添加 poweroff 插件
git clone https://github.com/MIT-X/luci-app-poweroff.git package/luci-app-poweroff

# 3-添加 opentomcat 主题
git clone https://github.com/MIT-X/luci-theme-opentomcat.git package/luci-theme-opentomcat

# 4-添加 adguardhome 插件
# git clone https://github.com/MIT-X/luci-app-adguardhome.git package/luci-app-adguardhome

# 5-添加 OpenClash 插件
sed -i '$a\src-git openclash https://github.com/vernesong/OpenClash' ./feeds.conf.default

# 6-添加 PassWall 插件
# echo "src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main" >> "feeds.conf.default"
# echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> "feeds.conf.default"

# 7-添加 MosDNS 插件
# find ./ | grep Makefile | grep v2ray-geodata | xargs rm -f
# find ./ | grep Makefile | grep mosdns | xargs rm -f

# git clone https://github.com/sbwml/luci-app-mosdns -b v5 package/mosdns
# git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata
