pipeline {
    agent any

    environment {
        DOCKER_HUB_USER = 'cjdjperalta'
        DOCKER_IMAGE = "${DOCKER_HUB_USER}/welcome-webapp"
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/cjdjperalta/welcome-webapp.git'
            }
        }

        stage('Build Maven Project') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Docker Login') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'dockerhub-credentials', // Add this to Jenkins Credentials
                    usernameVariable: 'USERNAME',
                    passwordVariable: 'PASSWORD'
                )]) {
                    sh 'echo $PASSWORD | docker login -u $USERNAME --password-stdin'
                }
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE .'
            }
        }

        stage('Docker Push') {
            steps {
                sh 'docker push $DOCKER_IMAGE'
            }
        }
    }
}
