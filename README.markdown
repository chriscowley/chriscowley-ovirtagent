####Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with ovirtagent](#setup)
    * [What ovirtagent affects](#what-ovirtagent-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with ovirtagent](#beginning-with-ovirtagent)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

##Overview

Install oVirt guest agents. Currently only supports Red Hat type VMs, but will add Debian support when I get round to it.


##Setup

###What ovirtagent affects

* Installs the `ovirt-guest-agent` package
* Enables the `ovirt-guest-agent` service

## Usage

For any nodes that run under oVirt:

```
class { 'ovirtagent': }
```

##Limitations

Only works with Red Hat type distros. Tested with Fedora 21 and Centos 6.

For RHEL and similar, you need to have EPEL enabled.

##Development

Any contributions, just send me a PR
