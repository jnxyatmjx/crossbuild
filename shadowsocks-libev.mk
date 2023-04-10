################################################################################
#
# shadowsocks-libev
#
################################################################################

#SHADOWSOCKS_LIBEV_VERSION = 2023.04.07-101717
SHADOWSOCKS_LIBEV_SITE = https://github.com/jnxyatmjx/shadowsocks-libev/archive/refs/tags/2023.04.07-101717.tar.gz
#SHADOWSOCKS_LIBEV_LICENSE = GPL-3.0+, BSD-2-Clause (libbloom), BSD-3-Clause (libcork, libipset)
#SHADOWSOCKS_LIBEV_LICENSE_FILES = COPYING libbloom/LICENSE libcork/COPYING
SHADOWSOCKS_LIBEV_CPE_ID_VENDOR = shadowsocks
SHADOWSOCKS_LIBEV_DEPENDENCIES = host-pkgconf c-ares libev libsodium mbedtls pcre
SHADOWSOCKS_LIBEV_INSTALL_STAGING = YES
# We're patching configure.ac
SHADOWSOCKS_LIBEV_AUTORECONF = NO
SHADOWSOCKS_LIBEV_CONF_OPTS = -DCMAKE_BUILD_TYPE=Release

#$(eval $(autotools-package))
$(eval $(cmake-package))
