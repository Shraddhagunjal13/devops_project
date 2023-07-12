# **************** PART-1 **********************
#                                    *  Overview of project-1 *
![DevOps Project](https://github.com/Shraddhagunjal13/devops_real_time_project_1/assets/85820035/d3e233af-2f70-49c4-912d-5dcf5e6749cc)

              

# **************** PART-2 **********************
### Configure all below pre-requisites for project.

<br/>

1. **[Install Jenkins & Ansible & Maven ](https://github.com/Shraddhagunjal13/devops_real_time_project_1/blob/master/project.api/Install_Jenkins_Ansible%20_Maven.md)**



# 6.Git Account:
     https://github.com/Shraddhagunjal13

# 7.Dockerhub Account:
     https://hub.docker.com/repository/docker/shraddhagunjal/project2/general

# **************** PART-3 **********************


# Configure jenkins pipeline job.
   
    Login Jenkins > New Item > project-1 > Pipeline > OK

		               Pipeline:
		                    Definition: Pipeline script from SCM
		               
		               SCM: Git

		                 Repositories:
		                      Repository URL: https://github.com/sunnydevops2022/devops_real_time_project_1.git

		                 Script Path: Jenkinsfile  

     <img width="960" alt="Screenshot_7" src="https://github.com/Shraddhagunjal13/devops_real_time_project_1/assets/85820035/767cf475-7a70-4e47-a57a-a6ef1963d05e">


# Jenkins integration with Sonarqube server.

    Login Sonarqube server:

    Sonarqube > My Account > Security > Generate Tokens
                                          Name    : porject-1
				                          Type    : Global Analysis Token
					                      Expires : 30 Days
    Generate

    After that copy token & save it.

    <img width="960" alt="sonarQ" src="https://github.com/Shraddhagunjal13/devops_real_time_project_1/assets/85820035/6f8dc464-d511-4d7e-b36f-9d005f06514d">


# Go to Jenkins and create credential for Sonar token

    Dashboard > Manage Jenkins > Credentials > System Global credentials (unrestricted) > Add credentials > 
                                                                                            kind: Secret text
                                                                                            Scope: Global
                                                                                            Secret: ******
                                                                                            ID: SONAR_TOKEN
                                                                                            Des: SONAR_TOKEN
    Create

# Configure inventry file & Password less authentication with Kubernetes server.

     +++++++++++++++ KUBERNETES SERVER ++++++++++++++++++++++

    passwd root
    cp -r /etc/ssh/sshd_config /etc/ssh/   sshd_config_orig
    sed -i "s/#PermitRootLogin prohibit-password/PermitRootLogin yes/g" /etc/ssh/sshd_config
    sed -i "s/PasswordAuthentication no/PasswordAuthentication yes/g" /etc/ssh/sshd_config
    systemctl restart sshd.service

    +++++++++++++++ ANSIBLE SERVER ++++++++++++++++++++++

    cat /etc/ansible/hosts
    > /etc/ansible/hosts
    cat /etc/ansible/hosts

    vim /etc/ansible/hosts

    [kubernetes]
    <kubernetes_ip>

    cat /etc/ansible/hosts
    su - jenkins
    ansible -m ping kubernetes -u root
    ssh root@<kubernetes_ip>
    ssh-keygen
    ssh-copy-id root@<kubernetes_ip>
    ssh root@<kubernetes_ip>

    ansible -m ping kubernetes -u root

# Create credential for Dockerhub server login.

    Dashboard > Manage Jenkins > Credentials > System Global credentials (unrestricted) > Add credentials > 
                                                                                            kind: Secret text
                                                                                            Scope: Global
                                                                                            Secret: ******
                                                                                            ID: DOCKERHUB_USER
                                                                                            Des: DOCKERHUB_USER
    Create

    ##################################

    Dashboard > Manage Jenkins > Credentials > System Global credentials (unrestricted) > Add credentials > 
                                                                                            kind: Secret text
                                                                                            Scope: Global
                                                                                            Secret: ******
                                                                                            ID: DOCKERHUB_PASS
                                                                                            Des: DOCKERHUB_PASS
    Create

<img width="951" alt="finalepipeline" src="https://github.com/Shraddhagunjal13/devops_real_time_project_1/assets/85820035/be7ce027-45ac-4c32-a385-e41f14e791fd">


# Github integrate with Jenkins.

    +++++++++++++++ GITHUB ACCOUNT ++++++++++++++++++++++
    Github > Repository > Settings > Webhooks > Add Webhooks >
						Payload UR   : http://<jenkins_ip>:8080/github-webhook/
						Content type : application/json

						Just the push event.
						
    +++++++++++++++ JENKINS SERVER ++++++++++++++++++++++						

    Jenkins > project-1 > Configure > Build Triggers > 
                                          GitHub hook trigger for GITScm polling

<img width="956" alt="forauto" src="https://github.com/Shraddhagunjal13/devops_real_time_project_1/assets/85820035/bf0b0629-b9f3-4aa2-96f2-e34a38aa1929">

<img width="960" alt="final" src="https://github.com/Shraddhagunjal13/devops_real_time_project_1/assets/85820035/a29e9302-1e96-4fad-8110-176488b9407d">








       









        
