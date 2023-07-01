
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

<img width="960" alt="Screenshot_4" src="https://github.com/Shraddhagunjal13/devops_real_time_project_1/assets/85820035/e9a0ed05-cfde-4798-8755-b83f6cb2d817">

