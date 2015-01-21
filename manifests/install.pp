# == Class ovirtagent::install
#
class ovirtagent::install {

  package { $ovirtagent::package_name:
    ensure => present,
  }
}
