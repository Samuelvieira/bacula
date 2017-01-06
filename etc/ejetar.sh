#!/bin/sh

/opt/bacula/sbin/bconsole -c /opt/bacula/etc/bconsole.conf <<END_OF_DATA
unmount
quit
END_OF_DATA 
