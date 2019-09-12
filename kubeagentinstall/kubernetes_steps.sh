#!/bin/bash
kubectl create ns sysdig-agent
kubectl create secret generic sysdig-agent --from-literal=access-key=1982d83d2827-e01c-484f-b94e-99dedbafab34 -n sysdig-agent
kubectl apply -f sysdig-agent-clusterrole.yaml -n sysdig-agent
kubectl create serviceaccount sysdig-agent -n sysdig-agent
kubectl create clusterrolebinding sysdig-agent --clusterrole=sysdig-agent --serviceaccount=sysdig-agent:sysdig-agent
#kubectl apply -f sysdig-agent-configmap.yaml -n sysdig-agent
#kubectl apply -f sysdig-agent-daemonset-v2.yaml -n sysdig-agent
