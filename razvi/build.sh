cp ./razvi/feeds.conf.default ./

# update and install default stuff
./scripts/feeds update packages luci
./scripts/feeds install -a -p luci
# update local repo
#./scripts/feeds update razvi
./scripts/feeds update mwan
./scripts/feeds install -a -p mwan

# install apps
./scripts/feeds install nano
./scripts/feeds install mc

cp ./razvi/opkg.conf package/opkg/files/
