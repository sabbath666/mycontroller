pipeline {    agent any    triggers {        pollSCM('* * * * *')    }    stages {        stage("Checkout") {            steps {                git url: 'https://github.com/sabbath666/mycontroller.git'            }        }        stage("Compile") {            steps {                sh "chmod -R 777 *"                sh "./mvnw install"            }        }        stage("Unit Test") {            steps {                sh "chmod -R 777 *"                sh "./mvnw test"            }        }        agent {            // Equivalent to "docker build -f Dockerfile.build --build-arg version=1.0.2 ./build/            dockerfile {                filename 'Dockerfile'                label 'mycontroller'                additionalBuildArgs '--build-arg version=1.0.2'            }        }//        stage("Docker build"){//            steps{//                sh "docker --version"//                sh "docker login -u admin -p hoog0ree 142.93.68.244"//                sh "docker build -t 142.93.68.244/mycontroller ."//            }    }//        stage("Docker push"){//            steps{//              sh "docker login -u admin -p hoog0ree 142.93.68.244"//                sh "docker push 142.93.68.244/mycontroller ."//            }//        }}