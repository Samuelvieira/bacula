exec 6>&1
exec > /opt/bacula/status_scripts.log
/opt/bacula/sbin/bconsole -c /opt/bacula/etc/bconsole.conf <<END
mount "storage=LTO-3"
END
exec 1>&6 6>$
