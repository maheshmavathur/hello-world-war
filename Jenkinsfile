node {
		stage('Checkout') {
		sh "git clone https://github.com/maheshmavathur/hello-world-war.git"
		}

stage('build') {
			def mvnHome = tool name: 'maven-3', type: 'maven' 
			def mvnCMD = "${mvnHome}/bin/mvn"
			sh "${mvnCMD} clean package"
}  
}
