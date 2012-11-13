#
# Copyright (C) 2011 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/WRT610Nv2
  NAME:=Linksys WRT610N v2
  PACKAGES:=kmod-usb-core kmod-usb-uhci kmod-usb2 kmod-usb-storage kmod-scsi-core
endef

define Profile/WRT610Nv2/Description
	Package set optimized for the WRT610N v2
endef
$(eval $(call Profile,WRT610Nv2))
