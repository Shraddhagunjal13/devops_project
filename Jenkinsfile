pipipeline {
    agent any
    environment {
      PATH = "$PATH:/opt/apache-maven-3.8.8/bin"
    }
    
    stages {

        stage('CLEAN WORKSPACE') {
            steps {
                cleanWs()
            }
        }

        stage('CODE CHECKOUT') {
            steps {
                git 'https://github.com/Shraddhagunjal13/devops_real_time_project_1.git'
            }
        }

        
        
  
      
        
    }
}
