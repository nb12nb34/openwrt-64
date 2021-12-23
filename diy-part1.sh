sed -i '$a src-git ssr https://github.com/fw876/helloworld' feeds.conf.default
sed -i '$a src-git ssr https://github.com/nb12nb34/luci-theme-atmaterial-1' feeds.conf.default
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
