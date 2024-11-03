################################################################################
#
# shadowsocks-libev
#
################################################################################

SHADOWSOCKS_LIBEV_VERSION = 2024.11.02-113608
SHADOWSOCKS_LIBEV_SITE = https://github.com/jnxyatmjx/shadowsocks-libev
SHADOWSOCKS_LIBEV_SITE_METHOD = git
SHADOWSOCKS_LIBEV_GIT_SUBMODULES = YES
#SHADOWSOCKS_LIBEV_LICENSE = GPL-3.0+, BSD-2-Clause (libbloom), BSD-3-Clause (libcork, libipset)
#SHADOWSOCKS_LIBEV_LICENSE_FILES = COPYING libbloom/LICENSE libcork/COPYING
SHADOWSOCKS_LIBEV_CPE_ID_VENDOR = shadowsocks
SHADOWSOCKS_LIBEV_DEPENDENCIES = host-pkgconf c-ares libev libsodium mbedtls pcre
SHADOWSOCKS_LIBEV_INSTALL_STAGING = YES
# We're patching configure.ac
SHADOWSOCKS_LIBEV_AUTORECONF = YES
SHADOWSOCKS_LIBEV_CONF_OPTS = \
        --with-pcre=$(STAGING_DIR)/usr \
        --disable-ssp

ifeq ($(BR2_PACKAGE_SHADOWSOCKS_LIBEV_CONNMARKTOS),y)
SHADOWSOCKS_LIBEV_DEPENDENCIES += libnetfilter_conntrack
SHADOWSOCKS_LIBEV_CONF_OPTS += --enable-connmarktos
else
SHADOWSOCKS_LIBEV_CONF_OPTS += --disable-connmarktos
endif

$(eval $(autotools-package))
