#!/bin/bash
oc adm new-project sysdig-agent --node-selector='app=sysdig-agent'
oc label node --all "app=sysdig-agent"
oc project sysdig-agent
oc create serviceaccount sysdig-agent
oc adm policy add-scc-to-user privileged -n sysdig-agent -z sysdig-agent
oc adm policy add-cluster-role-to-user cluster-reader -n sysdig-agent -z sysdig-agent
kubectl create secret generic sysdig-agent --from-literal=access-key=1982d83d2827-e01c-484f-b94e-99dedbafab34 -n sysdig-agent
#kubectl apply -f sysdig-agent-configmap.yaml -n sysdig-agent
#kubectl apply -f sysdig-agent-daemonset-v2.yaml -n sysdig-agent
