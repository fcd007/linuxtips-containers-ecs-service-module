#!/bin/bash

ALB_URL="http://SEU-LOAD-BALANCER-DNS"
CONCURRENCY=100
DURATION=300

echo "=========================================="
echo " ECS CPU LOAD TEST"
echo "=========================================="
echo "Endpoint:     $ALB_URL"
echo "Concorrência: $CONCURRENCY"
echo "Duração:      ${DURATION}s"
echo "=========================================="

END_TIME=$((SECONDS + DURATION))

while [ $SECONDS -lt $END_TIME ]; do

    for ((i=1; i<=CONCURRENCY; i++)); do
        curl -s \
             --connect-timeout 2 \
             --max-time 5 \
             "$ALB_URL/" \
             > /dev/null &
    done

    wait
done

echo ""
echo "=========================================="
echo " Teste finalizado"
echo "=========================================="