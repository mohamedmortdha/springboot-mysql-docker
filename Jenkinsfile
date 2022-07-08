#!groovy
pipeline {
  agent none
  stages {
    stage('Maven Install') {
      agent {
        docker {
          image 'maven:3.8.1-adoptopenjdk-11'
        }
      }
      steps {
        sh 'mvn install -Dmaven.test.skip=true'
      }
    }
    stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t backend .'
      }
    }

    stage('Docker deployer') {
          agent any
          steps {
            sh 'docker-compose up -d'
          }
        }
  }
}