pipeline{
      agent { label 'slave1' }
      stages{
      stage('check out'){
                  steps{
                  sh "rm -rf hello-world-war"
                  sh "git clone https://github.com/maheshmavathur/hello-world-war.git"
                  }
                  }
      stage('build'){
      steps{
      sh "pwd"
      sh "ls"
      sh "cd hello-world-war"
      sh "docker build -t maheshmavathur/helloworldworld:1.0 ."
      }
      }
       stage('publish'){
                  steps{
                        sh "docker login -u maheshmavathur -p password1234"
                        sh "docker push maheshmavathur/helloworldworld:1.0"
                  }
            }
            stage('deploy'){
                  agent { label 'slave2' }
                  steps{
                        sh "docker login -u maheshmavathur -p password1234"
                        sh "docker pull maheshmavathur/helloworldworld:1.0"
                        sh "docker rm -f container1"
                        sh "docker run -d -p 8090:8080 --name container1 maheshmavathur/helloworldworld:1.0"
                  }
            }
      }
}
