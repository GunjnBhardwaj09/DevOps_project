pipeline {
    agent any
    environment {
    MINIKUBE_HOME = "/var/lib/jenkins/.minikube"
    }
    stages {
        stage('Code Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/GunjnBhardwaj09/DevOps_project.git'
            }
        }
        stage('Code Compile') {
            steps {
                sh 'mvn clean compile'
            }
        }
        stage('Code Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Code Package') {
            steps {
                sh 'mvn package'
            }
        }
         stage('Build Docker Image') {
            steps {
                sh 'cp /var/lib/jenkins/workspace/$JOB_NAME/target/ABCtechnologies-1.0.war /var/lib/jenkins/workspace/$JOB_NAME/ABCtechnologies-1.0.war'  
                sh 'docker build -t dockerhub696/abctech:$BUILD_NUMBER .'
            }
        }
        stage('Push Docker Image') {
            steps {
                withDockerRegistry([credentialsId: 'docker-credentials', url: '']) {
                    sh 'docker push dockerhub696/abctech:$BUILD_NUMBER'
                }
            }
        }
        stage('Deploy as container') {
            steps {
                   sh 'docker run -itd -p 8081:8080 dockerhub696/abctech:$BUILD_NUMBER'
                }
        }
        stage('Deploy to Minikube') {
            steps {
                sh 'kubectl apply -f deployment.yaml'
            }
        }
      
    }
}
