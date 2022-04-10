pipeline {
    agent { label 'slave1' }
    stages {
        stage('checkout') { 
            steps {
              sh "git clone https://github.com/maheshmavathur/hello-world-war.git"
            }
        }
stage('build') { 
            steps {
              sh "mvn clean package"
            }
        }        
   
stage('Build') { 
            steps {
              sh "docker build -t maheshmavathur/imageone:1.0 ."
            }
        }        
  }
}
