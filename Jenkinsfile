pipeline {
  agent none
  stages {
    stage('Maven Install') {
      agent {
        docker {
         sh 'docker -v'
        }
      }
      steps {
        sh 'mvn clean install -Dmaven.test.skip=true'
      }
    }
    stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t backend .'
      }
    }
  }
}