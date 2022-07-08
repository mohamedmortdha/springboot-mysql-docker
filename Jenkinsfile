#!groovy
pipeline {
  agent none
  stages {
    stage('Maven Install') {
      agent {
        docker {
          image 'adoptopenjdk/maven-openjdk11:latest'
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
    stage('Docker deployer') {
          agent any
          steps {
            sh 'docker-compose up -d'
          }
        }
  }
}