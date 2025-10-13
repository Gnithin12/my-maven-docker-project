pipeline {
    agent { label 'agent1' }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Gnithin12/my-maven-docker-project.git'
            }
        }

        stage('Build Maven') {
            steps {
                script {
                    docker.image('maven:3.9.8-eclipse-temurin-17').inside {
                        sh 'mvn clean package'
                    }
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('myapp:latest')
                }
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}
