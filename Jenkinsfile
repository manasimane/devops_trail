pipeline{
  agent any

  stages{
    stage('checkout scm'){
      steps{
        checkout scm
      }
    }
    stage('Docker Build'){
      steps{
      sh 'docker build -t docker_image:${BUILD_NUMBER} .'
        }
    }
    stage('Cleanup Old Container'){
      steps{
        sh 'docker rm -f docker_container:${BUILD_NUMBER} || true'
      }
    }
    stage('Docker run'){
      steps{
        sh 'docker run -d -p 8080:71 --name docker_container docker_image:${BUILD_NUMBER}'
      }
    }
  }
  post{
    success{
      echo "Pipeline executed successfully"
    }
    failure{
      echo "Pipeline failed!"
    }
  }
}
