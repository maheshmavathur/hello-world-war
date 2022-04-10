pipeline {
    agent { label 'slave1' }
    stages {
        stage('checkout') { 
            steps {
              sh "git clone https://github.com/maheshmavathur/hello-world-war.git"
            }
        }
stage('Build') { 
            steps {
              sh "mvn clean package"
            }
        }        
   
stage('Images Creation') { 
            steps {
              sh "docker build -t maheshmavathur/imageone:1.0 ."
            }
        }        
    }
}
