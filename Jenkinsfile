pipeline {
    agent any
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
      
    }
}
