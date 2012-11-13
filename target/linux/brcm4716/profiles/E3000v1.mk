#
# Copyright (C) 2011 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/E3000v1
  NAME:=Linksys E3000 v1
  PACKAGES:=kmod-usb-core kmod-usb-uhci kmod-usb2 kmod-usb-storage kmod-scsi-core
endef

define Profile/E3000v1/Description
	Package set optimized for the E3000 v1
endef
$(eval $(call Profile,E3000v1))
