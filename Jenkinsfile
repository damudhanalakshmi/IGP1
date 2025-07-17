pipeline {
    agent any

    stages {
        stage('Build WAR') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t ABCtechnologies-image .'
            }
        }

        stage('Deploy Container') {
            steps {
                sh '''
                docker stop ABCTechnologies-container || true
                docker rm ABCTechnologies-container || true
                docker run -d --name ABCTechnologies-container -p 8080:8080 myapp-image
                '''
            }
        }
    }
}
