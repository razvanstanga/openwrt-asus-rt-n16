#
# Copyright (C) 2006-2008 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/None
  NAME:=ASUS RT-N16
  PACKAGES:=kmod-usb-core kmod-usb-uhci kmod-usb2 kmod-usb-storage kmod-scsi-core
endef

define Profile/None/Description
	Package set optimised for ASUS RT-N16
endef
$(eval $(call Profile,None))

