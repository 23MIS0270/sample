pipeline {
    agent any

    stages {

        stage('Pull Code') {
            steps {
                git branch: 'main', url: 'https://github.com/23MIS0270/sample.git'
            }
        }

        stage('Compile') {
            steps {
                bat 'javac src/main/java/MainApp.java'
            }
        }

        stage('Run Main Program') {
            steps {
                bat 'java -cp src/main/java MainApp'
            }
        }

        stage('Run Test') {
            steps {
                bat 'javac src/test/java/MainAppTest.java'
                bat 'java -cp src/test/java MainAppTest'
            }
        }

        stage('Docker Build') {
            steps {
                bat 'docker build -t generic-app .'
            }
        }

        stage('Docker Run') {
            steps {
                bat 'docker run generic-app'
            }
        }
    }
}
