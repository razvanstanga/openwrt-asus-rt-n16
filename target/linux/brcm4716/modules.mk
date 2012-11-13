#
# Copyright (C) 2006-2012 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define KernelPackage/usb-brcm4716
  SUBMENU:=$(USB_MENU)
  TITLE:=Support for USB on bcm4716
  DEPENDS:=@USB_SUPPORT @TARGET_brcm4716
  KCONFIG:= \
  	CONFIG_USB_HCD_SSB
  FILES:= \
  	$(LINUX_DIR)/drivers/usb/host/ssb-hcd.ko
  AUTOLOAD:=$(call AutoLoad,19,ssb-hcd,1)
  $(call AddDepends/usb)
endef

$(eval $(call KernelPackage,usb-brcm4716))

define KernelPackage/bgmac
  TITLE:=Broadcom GMAC driver
  FILES:=$(LINUX_DIR)/drivers/net/ethernet/broadcom/bgmac.ko
  KCONFIG:=CONFIG_BGMAC
  DEPENDS:=@TARGET_brcm4716 +kmod-switch
  SUBMENU:=$(NETWORK_DEVICES_MENU)
  AUTOLOAD:=$(call AutoLoad,19,bgmac)
endef

define KernelPackage/bgmac/description
  Kernel modules for Broadcom GMAC Gigabit Ethernet mac.
endef

$(eval $(call KernelPackage,bgmac))
