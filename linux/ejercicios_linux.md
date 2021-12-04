
# Ejercicios Linux

### Utiliza el siguiente comando para descargar el fichero que vamos a necesitar para realizar el ejercicio:
```sh
    curl -o nginx_logs_examples.log
    https://raw.githubusercontent.com/elastic/examples/master/Common%20Data%20Formats/nginx_logs/nginx_logs

```
## Este fichero contiene ejemplos de logs de acceso a NGINX. Con la ayuda de los comandos vistos en clase, se requiere:
• Ordenar las IPs (en orden creciente)
• Buscar el número total ocurrencias por cada una de las IPs

```sh
##buscamos la ip de 4 numeros separados por puntos
grep -o "[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+" nginx_logs_examples.log | sort -n | uniq -c | awk '{print $2"-> "$1}' > nginx_requests_total.txt

```

### Pregunta 2:

**script.sh**

```sh

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
  if [ "$HOY" -eq 7 ]; then
   find . -name '*.log'| tar -zcvf nginx_logs_$(date +"%Y%m%d").tar.gz -T -
  fi
fi

```
Ejecutamos el script:

```console

./script.sh

```
  
### Pregunta 3:

## Utilizando el script del ejercicio anterior, crea un crontab con los siguientes requerimientos:
• El script se deberá ejecutar exclusivamente de lunes a domingo
• La hora de ejecución será 23.59 hrs
• Todos los meses del año
 
```console

crontab -e

```
**crontab config**
```sh

59 23 * * * ./script.sh

```