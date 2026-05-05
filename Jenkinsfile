pipeline {
    agent any

    stages {

        stage('Clone Code') {
            steps {
                git branch: 'main',
                url: 'https://github.com/Rajput-lab/Learning_deployment.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t htmlsite .'
            }
        }

        stage('Stop Old Container') {
            steps {
                sh 'docker rm -f html-container || true'
            }
        }

        stage('Run New Container') {
            steps {
                sh 'docker run -d -p 8081:80 --name html-container htmlsite'
            }
        }

    }
}
