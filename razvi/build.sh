cp ./razvi/feeds.conf.default ./

# update and install default stuff
./scripts/feeds update packages luci
./scripts/feeds install -a -p luci
# update mwan
./scripts/feeds update mwan
./scripts/feeds install -a -p mwan

# update wifischedule
./scripts/feeds update wifischedule
./scripts/feeds install -a -p wifischedule

# install apps
./scripts/feeds install nano
./scripts/feeds install mc

cp ./razvi/opkg.conf package/opkg/files/

# change trx_max_len
if grep -q "0x920000" ./tools/firmware-utils/src/trx.c; then
	echo "trx_max_len.patch already applied"
else
	echo "trx_max_len.patch not applied, applying now"
	patch -p1 -i ./razvi/trx_max_len.patch
fi

cp ./razvi/config.rt-n16 ./.config
