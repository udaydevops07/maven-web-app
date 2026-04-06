pipeline {
    agent any
  
    tools {
        maven 'maven'
    }    

    environment {
        KUBECONFIG = credentials('kubernetes')
    } 
    
    stages {

        stage('Clone') {
            steps {
                git 'https://github.com/udaydevops07/maven-web-app.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t udaydevops07/mavenwebapp:v2 .'
            }
        }
    stage('K8s Deployment') {
        steps {
            withCredentials([file(credentialsId: 'kubernetes', variable: 'KUBECONFIG')]) {
                sh 'kubectl get nodes'
                sh 'kubectl apply -f k8s-deploy.yml'
        }
    }
}
    }
}
