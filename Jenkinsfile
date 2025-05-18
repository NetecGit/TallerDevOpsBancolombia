pipeline {
    agent any

    stages {
        stage('Clonar') {
            steps {
                checkout scm
            }
        }
        stage('Compilar') {
            steps {
                sh 'mvn clean compile'
            }
        }
        stage('Pruebas') {
            steps {
                sh 'mvn test'
            }
        }
    }
}
