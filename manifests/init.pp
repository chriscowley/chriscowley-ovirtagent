# == Class: ovirtagent
#
# Full description of class ovirtagent here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class ovirtagent (
  $package_name = $ovirtagent::params::package_name,
  $service_name = $ovirtagent::params::service_name,
) inherits ovirtagent::params {

  # validate parameters here

  class { 'ovirtagent::install': } ->
  class { 'ovirtagent::config': } ~>
  class { 'ovirtagent::service': } ->
  Class['ovirtagent']
}
