pipeline {
    agent { label 'java' }
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
   
stage('deploy') { 
            steps {
              sh "cp -r /home/slave_1/workspace/hello-world-war_job1/target/hello-world-war-1.0.0.war /opt/apache-tomcat-9.0.60/webapps"
            }
        }        
    }
}
