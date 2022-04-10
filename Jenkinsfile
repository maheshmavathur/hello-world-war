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
stage ('Push') {
			steps {
			withCredentials([string(credentialsId: '0dae44fd-66e5-47f8-93a4-8aa6bbf4163d', variable: 'jfrogpass')]) {
			sh "docker login -u maheshmavathur.jfrog.io -p ${jfrogpass}"
}
			
			sh "docker tag imageone:1.0 maheshmavathur.jfrog.io/imageone/imageone:1.0"
			sh "docker push maheshmavathur.jfrog.io/imageone/imageone:1.0"
		}
	}
  }
}
