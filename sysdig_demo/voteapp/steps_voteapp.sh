#!/bin/bash
HN=$(curl http://169.254.169.254/latest/meta-data/public-hostname) &> /dev/null
HN1=$(hostname)
HN2=$(hostname -i)
kubectl create ns voteapp &> /dev/null
kubectl -n voteapp apply -f votedb_kub.yaml &> /dev/null  
kubectl -n voteapp apply -f voteweb_kub.yaml &> /dev/null
echo "ACCESS APP ON -----  $HN:32300"
echo "OR"
echo "ACCESS APP ON -----  $HN1:32300" 
echo "OR"
echo "ACCESS APP ON -----  $HN2:32300"
