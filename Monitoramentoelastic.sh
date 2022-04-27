#!/bin/bash
URL=https://$1/_cat/indices?health=red
Saida=$(wget -q --user=$2 --password=$3 $URL -O -);


if [ "$Saida" = "" ]; then
echo  "OK - Sem indices alterados"
exit 0;
else
echo "Indices em vermelho: $Saida"
exit 2;
fi
