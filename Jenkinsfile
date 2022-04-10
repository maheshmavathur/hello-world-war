pipeline{
      agent { label 'slave1' }
      stages{
      stage('check out'){
                  steps{
                  sh "rm -rf hello-world-war"
                  sh "git clone https://github.com/sandy1791994/hello-world-war.git"
                  }
                  }
      stage('build'){
      steps{
      sh "pwd"
      sh "ls"
      sh "cd hello-world-war"
      sh "docker build -t maheshmavathur.jfrog.io/image:1.0 ."
      }
      }
       stage('publish'){
                  steps{
                        sh "docker login -u maheshmavathur.jfrog.io -p Icode4*bugs"
                        sh "docker push maheshmavathur.jfrog.io/image:1.0"
                  }
            }
            stage('deploy'){
                  agent { label 'slave2' }
                  steps{
                        sh "docker login -u maheshmavathur.jfrog.io -p Icode4*bugs"
                        sh "docker pull maheshmavathur.jfrog.io/image:1.0"
                        sh "docker rm -f \$(docker ps  -a -q --filter ancestor=maheshmavathur.jfrog.io/image:1.0)"
                        sh "docker run -d -p 8088:8080 maheshmavathur.jfrog.io/image:1.0"
                  }
            }
      }
}
