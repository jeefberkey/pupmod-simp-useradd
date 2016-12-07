# Manage settings regarding users and user creation
#
# @param manage_useradd
#   If true, manage `/etc/default/useradd`
#
# @param manage_login_defs
#   If true, manage `/etc/login.defs`
#
# @param manage_libuser_conf
#   If true, manage `/etc/libuser.conf`
#
# @param manage_etc_profile
#   If true, manage `/etc/profile/simp.*`
#
# @param manage_sysconfig_init
#   If true, manage `/etc/sysconfig/init`
#
# @param manage_nss
#   If true, manage `/etc/default/nss`
#
class useradd (
  # defaults in data/common.yaml
  Boolean $manage_useradd,
  Boolean $manage_login_defs,
  Boolean $manage_libuser_conf,
  Boolean $manage_etc_profile,
  Boolean $manage_sysconfig_init,
  Boolean $manage_nss
) {

  if $manage_useradd {
    include '::useradd::useradd'
  }

  if $manage_login_defs {
    include '::useradd::login_defs'
  }

  if $manage_libuser_conf {
    include '::useradd::libuser_conf'
  }

  if $manage_etc_profile {
    include '::useradd::etc_profile'
  }

  if $manage_sysconfig_init {
    include '::useradd::sysconfig_init'
  }

  if $manage_nss {
    include '::useradd::nss'
  }

}