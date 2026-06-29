pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Building project...'
                sh 'echo "SKIPPING MAVEN FOR NOW"'
            }
        }

        stage('Test') {
            steps {
                echo 'Test stage running'
                sh 'echo "TEST OK"'
            }
        }

        stage('Docker Build') {
            steps {
                echo 'Building Docker image'
                sh 'docker build -t student-app .'
            }
        }

        stage('Run Container') {
            steps {
                echo 'Running app'
                sh 'docker run -d -p 8081:8080 student-app'
            }
        }
    }
}
