pipeline {
    agent any
    stages {
        stage('Build and push Docker image') {
            steps {
                script {
                    dockerImage = docker.build(vkmellon/mynginx)
                }
            }
        }
        stage('Push image') {
            steps {
                script {
                    dockerImage.withRegistry('https://registry.hub.docker.com', 'dockerhub-creds') {
                        dockerImage.push("${env.BUILD_NUMBER}")
                        dockerImage.push("latest")
                    }
                }
            }
        }
    }
}
