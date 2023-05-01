#!/bin/bash


URL="http://apache:80"


RESPONSE_CODE=$(curl -s -o /dev/null -w "%{http_code}" $URL)
if test "$RESPONSE_CODE" -ge 200 && test "$RESPONSE_CODE" -lt 400; then
    echo "[$(date)] OK - $RESPONSE_CODE" >> myapp.log
else
    echo "[$(date)] ERROR - $RESPONSE_CODE" >> myapp.log
fi

