#!/bin/bash
find /backup/db_name* -mtime +1 -exec rm {} \;
find /backup/db_name* -mtime +1 -exec rm -f {} \;
find /backup/db_name*.cnf -mtime +1 -exec rm {} \;
find /backup/db_name*.err -mtime +1 -exec rm {} \;
find /backup/db_name*.log -mtime +1 -exec rm {} \;
find /backup/db_name* -mtime +1 -exec rm {} \;
