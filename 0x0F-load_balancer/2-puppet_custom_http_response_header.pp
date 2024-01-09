#!/usr/bin/env bash
# Configure server using puppet

# defines a Puppet class called nginx_server that 
#  encapsulates the configuration for the Nginx server.

# Install Nginx
class { 'nginx':
  ensure => 'installed',
}

# Configure Nginx with custom HTTP header
class { 'nginx::config':
  content => template('my_module/nginx.conf.erb'),
  notify  => Service['nginx'],
}

# Display custom HTTP header information
notify { "Custom HTTP header X-Served-By will be set to ${::hostname}":
  require => Class['nginx::config'],
}}
