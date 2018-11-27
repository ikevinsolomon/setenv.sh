#!/bin/sh
echo $PATH | egrep "/opt/bitnami/common" > /dev/null
if [ $? -ne 0 ] ; then
PATH="/opt/bitnami/apps/wordpress/bin:/opt/bitnami/varnish/bin:/opt/bitnami/sqlite/bin:/opt/bitnami/php/bin:/opt/bitnami/mysql/bin:/opt/bitnami/apache2/bin:/opt/bitnami/common/bin:$PATH"
export PATH
fi
echo $LD_LIBRARY_PATH | egrep "/opt/bitnami/common" > /dev/null
if [ $? -ne 0 ] ; then
LD_LIBRARY_PATH="/opt/bitnami/varnish/lib:/opt/bitnami/varnish/lib/varnish:/opt/bitnami/varnish/lib/varnish/vmods:/opt/bitnami/sqlite/lib:/opt/bitnami/mysql/lib:/opt/bitnami/apache2/lib:/opt/bitnami/common/lib:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH
fi

TERMINFO=/opt/bitnami/common/share/terminfo
export TERMINFO
##### VARNISH ENV #####
		
##### SQLITE ENV #####
			
SASL_CONF_PATH=/opt/bitnami/common/etc
export SASL_CONF_PATH
SASL_PATH=/opt/bitnami/common/lib/sasl2 
export SASL_PATH
LDAPCONF=/opt/bitnami/common/etc/openldap/ldap.conf
export LDAPCONF
##### IMAGEMAGICK ENV #####
MAGICK_HOME="/opt/bitnami/common"
export MAGICK_HOME

MAGICK_CONFIGURE_PATH="/opt/bitnami/common/lib/ImageMagick-6.9.8/config-Q16:/opt/bitnami/common/"
export MAGICK_CONFIGURE_PATH

MAGICK_CODER_MODULE_PATH="/opt/bitnami/common/lib/ImageMagick-6.9.8/modules-Q16/coders"
export MAGICK_CODER_MODULE_PATH

##### FONTCONFIG ENV #####
FONTCONFIG_PATH="/opt/bitnami/common/etc/fonts"
export FONTCONFIG_PATH
##### PHP ENV #####
PHP_PATH=/opt/bitnami/php/bin/php
COMPOSER_HOME=/opt/bitnami/php/composer
export PHP_PATH
export COMPOSER_HOME
##### MYSQL ENV #####

##### APACHE ENV #####

##### CURL ENV #####
CURL_CA_BUNDLE=/opt/bitnami/common/openssl/certs/curl-ca-bundle.crt
export CURL_CA_BUNDLE
##### SSL ENV #####
SSL_CERT_FILE=/opt/bitnami/common/openssl/certs/curl-ca-bundle.crt
export SSL_CERT_FILE
OPENSSL_CONF=/opt/bitnami/common/openssl/openssl.cnf
export OPENSSL_CONF
OPENSSL_ENGINES=/opt/bitnami/common/lib/engines
export OPENSSL_ENGINES
