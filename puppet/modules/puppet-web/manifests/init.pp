class puppet-web {

package { "apache2": ensure => installed }

->

service { "apache2": ensure => "running" }

->

file {'/etc/apache2/sites-enabled/web.conf':
  source => 'puppet:///modules/puppet-web/web.conf',
  ensure => present}
}
