class puppet-web {

package { "apache2": ensure => installed }

package { "php5": ensure => installed }
package { "libapache2-mod-php5": ensure => installed }
package { "php5-mcrypt": ensure => installed }
package { "php5-mysql": ensure => installed }

->

service { "apache2": ensure => "running" }

->

file {'/etc/apache2/sites-enabled/web.conf':
  source => 'puppet:///modules/puppet-web/web.conf',
  ensure => present}
}
