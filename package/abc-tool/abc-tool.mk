################################################################################
#
# A/B metadata manage tool (abc_tool)
#
################################################################################

# ABC_TOOL_VERSION = 4dc573fb8bbd35556396ad46be3e6c0ff1fb2c18
# ABC_TOOL_SITE = $(TOPDIR)/package/abc-tool
# ABC_TOOL_SITE_METHOD = local

ABC_TOOL_VERSION = 4dc573fb8bbd35556396ad46be3e6c0ff1fb2c18
ABC_TOOL_SITE = https://github.com/chasinglulu/tools.git
ABC_TOOL_SITE_METHOD = git
ABC_TOOL_LICENSE = GPL-2.0+
ABC_TOOL_LICENSE_FILES = LICENSE

define ABC_TOOL_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/src/abc_tool
endef

define ABC_TOOL_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/src/abc_tool/abc_tool $(TARGET_DIR)/usr/bin/abc_tool
endef

define HOST_ABC_TOOL_BUILD_CMDS
	$(MAKE) $(HOST_CONFIGURE_OPTS) -C $(@D)/src/abc_tool
endef

define HOST_ABC_TOOL_INSTALL_CMDS
	$(INSTALL) -m 0755 $(@D)/src/abc_tool/abc_tool $(HOST_DIR)/bin/abc_tool
endef

$(eval $(generic-package))
$(eval $(host-generic-package))
