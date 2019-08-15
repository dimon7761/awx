#!/bin/bash

apt-get install ruby-dev build-essential debhelper devscripts rpm
gem install fpm --user

git clone https://github.com/scoopex/zabbix-agent-extensions
cd zabbix-agent-extensions

./create_packages

mv zabbix-agent-extensions-2.4.32-1.noarch.rpm ../
mv zabbix-agent-extensions_2.4.32_all.deb ../

cd ..

rm -r zabbix-agent-extensions

exit 0
