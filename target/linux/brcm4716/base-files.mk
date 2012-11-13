define Package/base-files/install-target
	rm -f $(1)/etc/config/network
	chmod +x $(1)/etc/init.d/{netconfig,wmacfixup}
endef


