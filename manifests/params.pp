# == Class ovirtagent::params
#
# This class is meant to be called from ovirtagent
# It sets variables according to platform
#
class ovirtagent::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'ovirt-guest-agent'
      $service_name = 'ovirt-guest-agent'
    }
    'RedHat', 'Amazon': {
      $package_name = 'ovirt-guest-agent'
      $service_name = 'ovirt-guest-agent'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
