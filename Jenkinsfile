pipeline {
    agent { label 'docslave1' }
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
         
    }
}
