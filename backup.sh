#!/bin/bash
ts=$(date +"%d-%b-%Y-%H:%M:%S")
mysqldump --host petdb --no-tablespaces --column-statistics=0 -u petclinic -ppetclinic petclinic > /backup/backup_$ts.sql
