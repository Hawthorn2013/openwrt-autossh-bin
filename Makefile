include $(TOPDIR)/rules.mk

PKG_NAME:=autossh
PKG_VERSION:=1.4e
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tgz
PKG_SOURCE_URL:=http://www.harding.motd.ca/autossh/
PKG_MD5SUM:=f86684b96e99d22b2e9d35dc63b0aa29

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)-bin
  SECTION:=net
  CATEGORY:=Network
  TITLE:=AutoSSH binary
  URL:=https://github.com/Hawthorn2013/openwrt-autossh-bin
  SUBMENU:=SSH
endef

define Package/$(PKG_NAME)-bin/description
  AutoSSH binary
  Automatically restart SSH sessions and tunnels.
endef

define Package/$(PKG_NAME)-bin/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/autossh $(1)/usr/sbin
endef

$(eval $(call BuildPackage,$(PKG_NAME)-bin))
