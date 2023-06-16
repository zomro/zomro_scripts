#!/bin/bash
cd /backup/sql
  mysqldump  -u root -pPASS  DATABASE | gzip -c -9  > `date +sql-dump.%d%m%y.gz`
  wput `date +sql-dump.%d%m%y.gz` ftp://userXXXXXX:PASS@IP/

cd /backup/www
  tar -cpzf  /backup/www/`date +files.%d%m%y`.tar.gz /var/www/html/
  wput `date +files.%d%m%y.tar.gz`  ftp://userXXXXXX:PASS@IP/