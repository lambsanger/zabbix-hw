# Домашнее задание к занятию "Система мониторинга Zabbix" - `Виноградова Ксения`


### Задание 1


1. wget https://repo.zabbix.com/zabbix/6.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.0-4+ubuntu22.04_all.deb
2. dpkg -i zabbix-release_6.0-4+ubuntu22.04_all.deb
3. apt update
4. apt install zabbix-server-pgsql zabbix-frontend-php php8.1-pgsql zabbix-apache-conf zabbix-sql-scripts zabbix-agent
5. sudo -u postgres createuser --pwprompt zabbix
6. sudo -u postgres createdb -O zabbix zabbix
7. zcat /usr/share/zabbix-sql-scripts/postgresql/server.sql.gz | sudo -u zabbix psql zabbix
8. nano /etc/zabbix/zabbix_server.conf (DBPassword=12345)
9. systemctl restart zabbix-server zabbix-agent apache2
10. systemctl enable zabbix-server zabbix-agent apache2


![Скриншот авторизации](https://github.com/lambsanger/for_png/blob/main/Скриншот%2023-09-2024%20093248.jpg)`


---

### Задание 2



1. wget https://repo.zabbix.com/zabbix/6.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.0-4+ubuntu22.04_all.deb
2. dpkg -i zabbix-release_6.0-4+ubuntu22.04_all.deb
3. apt update
4. apt install zabbix-agent
5. systemctl restart zabbix-agent
6. systemctl enable zabbix-agent

![Configuration > Hosts](https://github.com/lambsanger/for_png/blob/main/2.1.jpg))
![лог zabbix agent] (https://github.com/lambsanger/for_png/blob/main/2.2.jpg)
![Monitoring > Latest data](https://github.com/lambsanger/for_png/blob/main/2.3.jpg)

---

