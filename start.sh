sed -i 's/${yarn.resourcemanager.hostname}/'"$YARN_RESOURCEMANAGER_HOSTNAME"'/g' /etc/hadoop/conf/yarn-site.xml

/usr/lib/hive/bin/hiveserver2 &
sleep 10
tail -f /tmp/root/hive.log
