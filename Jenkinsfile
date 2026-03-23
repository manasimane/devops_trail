pipeline{
  agent any

  stages{
    stage('checkout scm'){
      steps{
        checkout scm
      }
    }
    stage('Build'){
      steps{
        sh 'mvn clean package'
      }
    }
    stage('Docker Build'){
      steps{
      sh 'docker build -t docker_image:1 .'
        }
    }
    stage('Docker run'){
      steps{
        sh 'docker run -d -p 70:71 --name docker_container docker_image:1'
      }
    }
  }
}
