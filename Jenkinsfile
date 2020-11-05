pipeline {
    agent {
        docker {
            image 'maven:3-alpine' 
            args '-v /root/.m2:/root/.m2' 
        }
    }
    stages {
        stage('Build') { 
            steps {
                sh 'whoami'
                sh 'ls /root/.m2'
                sh 'mvn -B -DskipTests -s /root/.m2/settings.xml  clean package' 
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
