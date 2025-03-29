pipeline {
    agent {
        docker {
            image 'maven:3.9.4-eclipse-temurin-17'
        }
    }

    triggers {
        pollSCM('* * * * *')
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/cjdjperalta/welcome-webapp.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Post-Build') {
            steps {
                echo 'Build completed successfully!'
            }
        }
    }
}
