#!/bin/bash
 
# Script para efectuar backup de la DB mongodb

servidor="localhost"
puerto="27017"
fecha=`date +%F-%H%M`
mongo_dump="/usr/bin/mongodump"
backup_dir="/mediastream/$fecha"
mongo_log="/var/log/mongo_backup.log"

# Full backup
$mongo_dump --host $servidor --port $puerto --out $backup_dir

echo $fecha" Backup completado" >> $mongo_log
