pipeline {    agent any    stages {        stage("Checkout"){            steps {                    git url: 'https://github.com/sabbath666/mycontroller.git'                }            }        stage("Compile"){            steps{                sh "chmod -R 777 *"                sh "./mvnw install"            }        }        stage("Unit Test"){                    steps{                        sh "chmod -R 777 *"                        sh "./mvnw test"                    }                }    }}