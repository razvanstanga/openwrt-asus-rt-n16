#
# Copyright (C) 2006-2008 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/F7D4301
  NAME:=Belkin PlayMax F7D4301
  PACKAGES:=kmod-usb-core kmod-usb-uhci kmod-usb2 kmod-usb-storage kmod-scsi-core
endef

define Profile/F7D4301/Description
	Package set optimised for Belkin PlayMax F7D4301
endef
$(eval $(call Profile,F7D4301))

