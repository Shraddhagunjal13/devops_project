
#   JENKINS INSTALLATION 
Jenkins Server Details:
         
    Operating System     : Ubuntu
    Hostname             : jenkins-ansible
    RAM                  : 2 GB
    CPU                  : 1 Core
    EC2 Instance         : t2.small

<img width="960" alt="Screenshot_1" src="https://github.com/Shraddhagunjal13/devops_real_time_project_1/assets/85820035/48216aba-894e-48a6-bc7f-5d2aac5f3380">


  
Update repository of ubuntu:

    sudo -i
    sudo apt-get update

Change time zone:
       
    date
    timedatectl
    sudo timedatectl set-timezone Asia/Kolkata
    timedatectl
    date

Change hostname:

    hostname
    hostnamectl set-hostname jenkins-ansible
    bash
    hostname
 
Install Java:

    java -version
    apt-get install openjdk-11-jdk 
    java -version 

Install Jenkins:

    curl -fsSL https://pkg.jenkins.io/    debian-stable/jenkins.io-2023.key | sudo tee \
    /usr/share/keyrings/jenkins-keyring.asc > /dev/null

    echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
    https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null
   
    sudo apt-get update
    sudo apt-get install jenkins=2.361.3 -y

Service start:

    Service start

Service enable & check status:

    systemctl enable jenkins
    systemctl status jenkins

Check 8080 port is used or not:

    netstat -plant | grep 8080

Check version & Open jenkins on browser:

    jenkins --version
    URL:   http://<jenkins_server_ip>:8080

Get Jenkins Administrator password using this command:

    sudo cat /var/lib/jenkins/secrets/initialAdminPassword

***************************************************************************************************************************************************************

<img width="960" alt="Jenkins" src="https://github.com/Shraddhagunjal13/devops_real_time_project_1/assets/85820035/2959bbe2-d9f5-4b76-993e-e7039174e3f1">

# ANSIBLE INSTALLATI

Add Ansible repository:

    sudo apt-add-repository ppa:ansible/ansible

Now fetch latest update & install Ansible:

    sudo apt update
    sudo apt-get install ansible -y  

Now check Ansible version:
   
    ansible --version

<img width="960" alt="Ansible" src="https://github.com/Shraddhagunjal13/devops_real_time_project_1/assets/85820035/66c1e464-9239-491f-a80f-aa1b04d401ad">


#  MAVEN INSTALLATION 
 
 Check version before install
     
    mvn --version

Change dir to /opt and download maven:

    cd /opt/
    ls
    wget https://dlcdn.apache.org/maven/maven-3/3.9.1/binaries/apache-maven-3.9.1-bin.zip
    apt-get install unzip -y
    unzip apache-maven-3.9.1-bin.zip
    ls
    rm -rf apache-maven-3.9.1-bin.zip
    ls

Configure maven home path:

    vim ~/.bashrc

    ## Add end of the file & save it.
    export M2_HOME=/opt/apache-maven-3.9.1
    export PATH=$PATH:$M2_HOME/bin

    source ~/.bashrc

Check version again now:

    mvn --version
    mvn --help

<img width="960" alt="MVN" src="https://github.com/Shraddhagunjal13/devops_real_time_project_1/assets/85820035/966faafa-ee4e-473f-a63d-14e28b29b050">

# SONARQUBE INSTALLATION

Jenkins Server Details:

    Operating System     : Ubuntu
    Hostname             : sonarqube
    RAM                  : 2 GB
    CPU                  : 1 Core
    EC2 Instance         : t2.small

<img width="960" alt="SonarQube" src="https://github.com/Shraddhagunjal13/devops_real_time_project_1/assets/85820035/e2514011-1021-40bb-86b8-69c8fd76c67e">

Update repository of ubuntu:

    ## Download URL:  https://www.sonarsource.com/products/sonarqube/downloads/

    sudo -i
    sudo apt update

Change time zone:
 
    date
    timedatectl
    sudo timedatectl set-timezone Asia/Kolkata
    timedatectl
    date

Change time hostname:

    hostnamectl set-hostname sonarqube
    bash

Install Java:

    java -version
    apt-get install openjdk-17-jdk -y       ##    For sonarqube-10.0.0.68432.zip
    apt-get install openjdk-11-jdk -y       ##    For sonarqube-8.9.2.46101.zip
    java -version         

Install Sonarqube:
 
    cd /opt/
    wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.0.0.68432.zip
    OR
    wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.2.46101.zip
    apt install unzip -y
    unzip sonarqube-10.0.0.68432.zip
    ls
    rm -rf sonarqube-10.0.0.68432.zip
    mv sonarqube-10.0.0.68432 sonarqube
    ls

Create sonar user:

    useradd -d /opt/sonarqube sonar
    cat /etc/passwd | grep sonar
    ls -ld /opt/sonarqube
    chown -R sonar:sonar /opt/sonarqube
    ls -ld /opt/sonarqube

Create custom service for sonar:

    cat >> /etc/systemd/system/sonarqube.service <<EOL
    [Unit]
    Description=SonarQube service
    After=syslog.target network.target

    [Service]
    Type=forking
    User=sonar
    Group=sonar
    PermissionsStartOnly=true
    ExecStart=/opt/sonarqube/bin/linux-x86-64/sonar.sh start 
    ExecStop=/opt/sonarqube/bin/linux-x86-64/sonar.sh stop
    StandardOutput=syslog
    LimitNOFILE=65536
    LimitNPROC=4096
    TimeoutStartSec=5
    Restart=always

    [Install]
    WantedBy=multi-user.target
    EOL

    ls -l /etc/systemd/system/sonarqube.service

Open port 9000 from firewalld OR security group:

    9000
    
Service start:

    systemctl start sonarqube.service

Service enable & check status:

    systemctl enable sonarqube.service
    systemctl status sonarqube.service

Check 9000 port is used or not:

    apt install net-tools
    netstat -plant | grep 9000

Open sonarqube on browser:
  
    URL:   http://<sonarqube_ip>:9000

    U: admin
    P: admin

    New Pass: admin@123

<img width="960" alt="SonarQube3" src="https://github.com/Shraddhagunjal13/devops_real_time_project_1/assets/85820035/46b1d8ec-4d24-4ac9-a0af-95758c6b9d27">
