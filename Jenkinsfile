pipeline {
    agent any    

    environment {
        EMAIL_TO = "rahulnagarajan19@gmail.com"    
    }
    

    post {
        success {
            emailext body: "The Jenkins build passed successfully.",
                     subject: "Jenkins Build Success",
                     to: "${EMAIL_TO}"       
        }
        failure {
            emailext body: "The Jenkins build failed. Please investigate.",
                     subject: "Jenkins Build Failure",
                     to: "${EMAIL_TO}"     
        }
    }
    
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

