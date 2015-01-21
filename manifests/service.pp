# == Class ovirtagent::service
#
# This class is meant to be called from ovirtagent
# It ensure the service is running
#
class ovirtagent::service {

  service { $ovirtagent::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
