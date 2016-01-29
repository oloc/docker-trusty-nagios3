#!/bin/bash

NAGIOS_HOME='/etc/nagios3'

if [ ! -f ${NAGIOS_HOME}/htpasswd.users ] ; then
  htpasswd -c -b -s ${NAGIOS_HOME}/htpasswd.users nagiosadmin nagios
  chown -R nagios.nagios ${NAGIOS_HOME}/htpasswd.users
fi

/usr/sbin/service nagios3 start
/usr/sbin/service apache2 start
/usr/sbin/service nagios3 status

/usr/bin/tail -F /var/log/nagios3/nagios.log
