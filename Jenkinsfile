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
        sh 'mvn install -Dmaven.test.skip=true'
      }
    }
    stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t backend .'
      }
    }
    stage('Docker create nework') {
      agent any
      steps {
        sh 'docker network create springmysql-net'
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