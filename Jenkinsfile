pipeline {
    agent { label 'docker-agent' }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Gnithin12/my-maven-docker-project.git'
            }
        }

        stage('Build Maven') {
            steps {
                sh 'mvn clean package'
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
