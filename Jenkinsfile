pipeline {
    agent any
     
    triggers {
        // Configure webhook trigger for GitHub
        githubPush()
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
