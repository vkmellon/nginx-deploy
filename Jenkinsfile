pipeline {
    agent any
    stages {
        stage('Build Docker image') {
            steps {
                script {
                    dockerImage = docker.build('vkmellon/mynginx')
                }
            }
        }
        stage('Push image') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub-creds') {
                        dockerImage.push("${env.BUILD_NUMBER}")
                        dockerImage.push("latest")
                    }
                }
            }
        }
    }
}
