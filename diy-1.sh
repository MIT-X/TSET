# 此脚本用处是：添加第三方插件
#=========================================================================================================================


# 1-添加ShadowSocksR Plus+插件
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 2-添加PowerOff关机插件
git clone https://github.com/BTC-LaoMa/luci-app-poweroff.git package/luci-app-poweroff

# 3-添加 adguardhome 插件
git clone https://github.com/MIT-X/luci-app-adguardhome.git package/luci-app-adguardhome

# 4-添加OpenClash插件
sed -i '$a\src-git openclash https://github.com/vernesong/OpenClash' ./feeds.conf.default

# 5-添加OpenTomcat主题
git clone https://github.com/BTC-LaoMa/luci-theme-opentomcat.git package/luci-theme-opentomcat

# 6-添加PassWall插件
echo "src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main" >> "feeds.conf.default"
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> "feeds.conf.default"
