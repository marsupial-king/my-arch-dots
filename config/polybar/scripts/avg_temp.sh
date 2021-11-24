#!/bin/bash
TEMP=$(sensors | awk '/^Core /{++r; gsub(/[^[:digit:]]+/, "", $3); s+=$3} END{printf("%.0f\n",s/(10*r))}')

if [[ "${TEMP}" -lt 25 ]]
then
    echo " ${TEMP}°C"

elif [[ "${TEMP}" -lt 50 ]]
then
    echo " ${TEMP}°C"

elif [[ "${TEMP}" -lt 75 ]]
then
    echo " ${TEMP}°C"

else
    echo " ${TEMP}°C"
fi

