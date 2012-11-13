#
# Copyright (C) 2006-2008 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

ARCH:=mipsel
BOARD:=brcm4716
BOARDNAME:=Broadcom BCM94716
FEATURES:=squashfs usb

LINUX_VERSION:=3.3.8

include $(INCLUDE_DIR)/target.mk
DEFAULT_PACKAGES += kmod-bgmac kmod-switch kmod-diag kmod-brcm-wl kmod-fs-ext4 kmod-usb-brcm4716 nvram nas wl wlc

define Target/Description
	Build firmware images for Broadcom BCM4716-based routers
	(e.g. ASUS RT-N16/Linksys WRT610nV2/Linksys E3000)
endef

$(eval $(call BuildTarget))
