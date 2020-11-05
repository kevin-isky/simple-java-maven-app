pipeline {
    agent none
    stages {
        stage('Build Jar') { 
            agent {
                docker {
                    image 'maven:3-alpine' 
                    args '-v /root/.m2:/root/.m2 -u 0:0' 
                }
            }
            steps {
                sh 'ls /root/.m2'
                sh 'mvn -B -DskipTests -s /root/.m2/settings.xml  clean package' 
            }
        }
        stage('Build Docker Image') {
            agent any
            steps {
                sh 'docker build -t isky/simple-maven .'
            }
        }
    }
//    post {
//        always {
//            cleanWs()
//        }
//    }
}
