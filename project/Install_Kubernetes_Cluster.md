# KUBERNETES CLUSTER INSTALLATION

Kubernetes Cluster Server Details:

        Operating System     : Ubuntu
        Hostname             : k8-master
        RAM                  : 2 GB
        CPU                  : 2 Core
        EC2 Instance         : t3a.small

Switch to root user & Update repository of ubuntu:

        sudo -i
        sudo apt update

Start by disabling the swap memory:

        sudo swapoff -a
        sed -i 's/^\(.*swap.*\)$/#\1/' /etc/fstab

Change time hostname:

        hostname
        sudo hostnamectl set-hostname k8-master
        bash
        hostname

Change time zone:

        date
        timedatectl
        sudo timedatectl set-timezone Asia/Kolkata
        timedatectl
        date

Install Docker with the command:

        sudo apt-get install -y \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg-agent \
        software-properties-common

Add Docker’s official GPG key:
     
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -	

Add Docker Repo:
       
    sudo add-apt-repository \
     "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \ stable"

Install the latest version of Docker Engine and containerd:

    sudo apt-get install -y docker-ce docker-ce-cli containerd.io
    
Check the installation (and version) by entering the following:
        
    docker --version
    
<img width="960" alt="docker" src="https://github.com/Shraddhagunjal13/devops_real_time_project_1/assets/85820035/8e8902e2-b83f-42fe-8ea0-bb6e309b26a4">


The product_uuid can be checked by using the command:

    sudo cat /sys/class/dmi/id/product_uuid

Set Docker to launch at boot by entering the following:
       
    sudo systemctl enable docker

Verify Docker is running:

    sudo systemctl status docker

Add Kubernetes Repo:
       
    {
       curl -s https://packages.cloud.google.com/ apt/doc/apt-key.gpg | apt-key add - 
       echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" > /etc/apt/sources.list.d/kubernetes.list
    }

Install kubeadm kubelet kubectl:

    apt update && apt-get install -y kubelet=1.21* kubeadm=1.21* kubectl=1.21*                 ## For 1.21 version
    sudo apt-mark hold kubelet kubeadm kubectl

Verify the installation with kubeadm:

    kubeadm version
    kubectl version --short

Initialize Kubernetes on Master Node:

    sudo kubeadm init --pod-network-cidr=10.244.0.0/16

Enter the following to create a directory for the cluster: To start using your cluster, you need to run the following as a regular user:
  
    sudo mkdir -p $HOME/.kube
    sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
    sudo chown $(id -u):$(id -g) $HOME/.kube/config 

Now check to see if the kubectl command is activated:

    kubectl get nodes

    NAME          STATUS   ROLES    AGE    VERSION
    master-node   NOtReady    master   8m3s   v1.18.5

Deploy Pod Network to Cluster:

    sudo kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml

Verify that everything is running and communicating:

    kubectl get pod --all-namespaces

Cross check your cluster is running status:

    kubectl get nodes

Remove taint from k8-master node:

    kubectl taint nodes k8-master node-role.kubernetes.io/control-plane:NoSchedule-            ## v1.27.1
    OR
    kubectl taint nodes k8-master node-role.kubernetes.io/master:NoSchedule-                   ## v1.21.14

#KUBERNETES CLUSTER TESTING

Check pod status:

    kubectl get pod

Create testing.yml and insert below content:

 vim testing.yaml

    apiVersion: v1
    kind: Pod
    metadata:
      name: testing
    spec:
      containers:
        - name: testing
         image: nginx

Check pod status:
 
    kubectl apply -f testing.yaml

Check pod status:

    kubectl get pod

After check delete the pod:

    kubectl delete -f testing.yaml

<img width="960" alt="K8-master" src="https://github.com/Shraddhagunjal13/devops_real_time_project_1/assets/85820035/055f0710-55ec-4f9b-baa8-1d4c37b62d0a">



<img width="960" alt="k8-1" src="https://github.com/Shraddhagunjal13/devops_real_time_project_1/assets/85820035/2a5853a6-233e-425e-b22b-3228bc961a49">


<img width="955" alt="k8-2" src="https://github.com/Shraddhagunjal13/devops_real_time_project_1/assets/85820035/176679dd-146b-40bf-a382-a6381b5c2a89">


<img width="960" alt="k8-3" src="https://github.com/Shraddhagunjal13/devops_real_time_project_1/assets/85820035/334a98aa-0281-4e75-baf3-6c5318b14b8c">
