pipeline {
    agent any
     
    stages {
        stage('Deploy to Docker Hub') {
            steps {
                script {
                    sh 'chmod +x deploy.sh'
                    sh './deploy.sh'
                }
            }
        }
    }
}
