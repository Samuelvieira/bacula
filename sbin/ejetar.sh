#!/bin/sh
exec 6>&1
exec > /opt/bacula/status_ejetar.log
/opt/bacula/sbin/bconsole -c /opt/bacula/etc/bconsole.conf <<END
unmount storage="LTO-3"
END
#exec 1>$6 6>&
mt -f /dev/st0 rewind
mt -f /dev/st0 eject
