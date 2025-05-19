pipeline {
    agent any

    environment {
        IMAGE_NAME = 'blankiss/app-jenkins-docker'
        CONTAINER_NAME = 'app-container'
        PORT = '8888'
    }

    stages {
        stage('Clonar repositorio') {
            steps {
                git branch: 'practica2.2/jenkins_docker',
                    url: 'https://github.com/NetecGit/TallerDevOpsBancolombia.git',
                    credentialsId: 'github-credentials'
            }
        }

        stage('Compilar aplicacion') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Construir imagen Docker') {
            steps {
                script {
                    sh 'docker build -t $IMAGE_NAME .'
                }
            }
        }

        stage('Eliminar contenedor anterior') {
            steps {
                script {
                    sh 'docker rm -f $CONTAINER_NAME || true'
                }
            }
        }

        stage('Desplegar contenedor') {
            steps {
                script {
                    sh 'docker run -d --name $CONTAINER_NAME -p $PORT:8888 $IMAGE_NAME'
                }
            }
        }
    }
}
