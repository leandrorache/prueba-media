#!/bin/bash

# Script para recolectar info en /mediastream/recolecta_info.log

destino=/mediastream/recolecta_info.log
tail -3 /var/log/syslog >> $destino
df -h /mediastream   >> $destino
md5sum /var/log/auth.log >> $destino
