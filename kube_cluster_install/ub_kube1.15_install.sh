apt-get update && apt-get install -y apt-transport-https curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF
apt-get update
apt-get install -y kubelet kubeadm kubectl
apt-mark hold kubelet kubeadm kubectl
cat > /etc/docker/daemon.json <<EOF
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2"
}
EOF
systemctl restart docker
swapoff -a
#vi fastab also
Calico 
kubeadm init --pod-network-cidr=192.168.0.0/16 --apiserver-bind-port=6444 > /kube_join.txt
kubectl apply -f https://docs.projectcalico.org/v3.8/manifests/calico.yaml
Flannel
kubeadm init --pod-network-cidr=10.244.0.0/16 --apiserver-bind-port=6444 > /kube_join.txt
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/62e44c867a2846fefb68bd5f178daf4da3095ccb/Documentation/kube-flannel.yml
mkdir -p $HOME/.kube && cp -i /etc/kubernetes/admin.conf $HOME/.kube/config && sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl taint nodes --all node-role.kubernetes.io/master-
kubectl apply -f https://docs.projectcalico.org/v3.8/manifests/calico.yaml
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/62e44c867a2846fefb68bd5f178daf4da3095ccb/Documentation/kube-flannel.yml



- kube-apiserver
    - --runtime-config=apps/v1beta1=true,apps/v1beta2=true,extensions/v1beta1/daemonsets=true,extensions/v1beta1/deployments=true,extensions/v1beta1/replicasets=true,extensions/v1beta1/networkpolicies=true,extensions/v1beta1/podsecuritypolicies=true
    - --advertise-address=192.168.54.21
    
    
    
 cat <<EOF > /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOF

# Set SELinux in permissive mode (effectively disabling it)
setenforce 0
sed -i 's/^SELINUX=enforcing$/SELINUX=permissive/' /etc/selinux/config

yum install -y kubelet kubeadm kubectl --disableexcludes=kubernetes

systemctl enable --now kubelet   
    
    
firewall-cmd --permanent --add-port=6443/tcp
firewall-cmd --permanent --add-port=2379-2380/tcp
firewall-cmd --permanent --add-port=10250/tcp
firewall-cmd --permanent --add-port=10251/tcp
firewall-cmd --permanent --add-port=10252/tcp
firewall-cmd --permanent --add-port=10255/tcp
firewall-cmd --reload
modprobe br_netfilter
echo '1' > /proc/sys/net/bridge/bridge-nf-call-iptables

iptables -F && iptables -t nat -F && iptables -t mangle -F && iptables -X



kubectl create namespace sysdigcloud
 1010  kubectl -n sysdigcloud apply -f sysdigcloud/config.yaml
 1011  kubectl -n sysdigcloud apply -f sysdigcloud/scanning-secrets.yaml
 1012  kubectl -n sysdigcloud apply -f sysdigcloud/anchore-secrets.yaml
 1013  kubectl -n sysdigcloud apply -f sysdigcloud/pull-secret.yaml
 1014  ls
 1015  kubectl -n sysdigcloud create secret tls sysdigcloud-ssl-secret --cert=server.crt --key=server.key
 1016  kubectl -n sysdigcloud create secret tls sysdigcloud-ssl-secret-collector --cert=collector.crt --key=collector.key
 1017  kubectl -n sysdigcloud apply -f datastores/as_kubernetes_pods/manifests/redis/redis-deployment.yaml


