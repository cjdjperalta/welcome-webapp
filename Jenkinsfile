pipeline {
    agent any

    triggers {
        pollSCM('* * * * *') // Polls the repo every minute
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
