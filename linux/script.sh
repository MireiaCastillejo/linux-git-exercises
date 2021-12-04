DIRECTORIO="backup/mireiacastillejo/$(date +"%Y")/$(date +"%m")/$(date +"%d")"
HOY="$(date +%w)"

#Si el directorio existe
if [ -d "$DIRECTORIO" ]; then
   echo "El directorio ${DIRECTORIO} existe"
else
   echo "El directorio ${DIRECTORIO} no existe"
  mkdir -p "$DIRECTORIO"
  cp nginx_requests_total.txt "$DIRECTORIO"/nginx_log_request_$(date +"%Y%m%d").log
  #Si es el último dia de la semana
  if [ "$HOY" -eq 6 ]; then
   find . -name '*.log'| tar -zcvf nginx_logs_$(date +"%Y%m%d").tar.gz -T -
  fi
fi