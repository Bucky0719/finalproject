pipeline {
    agent any
     
    triggers {
        // Configure webhook trigger for GitHub (to your profile)
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
