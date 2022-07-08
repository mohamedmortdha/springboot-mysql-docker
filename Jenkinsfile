
pipeline {
  // Assign to docker agent(s) label, could also be 'any'
  agent {
    label 'docker' 
  }

  stages {
    stage('Docker maven test') {
      agent {
        docker {
          // Set both label and image
          label 'docker'
          image 'maven:3-alpine'
        }
      }
      steps {
        // Steps run in maven:3-alpine docker container on docker agent
        sh 'mvn --version'
      }
    }
  }
} 