pipeline {
    agent any
    stages {
        stage('Build and push Docker image') {
            steps {
                dockerImage = docker.build(vkmellon/mynginx)
            }
        }
        stage('Push image') {
            docker.withRegistry('https://registry.hub.docker.com', 'dockerhub-creds') {
                dockerImage.push("${env.BUILD_NUMBER}")
                dockerImage.push("latest")
            }
        }
    }
}
