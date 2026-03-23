pipeline{
  agent any

  stages{
    stage("checkout scm"){
      steps{
        checkout scm
      }
    }

    stage("Build"){
      steps{
        echo "I'm inside Build"
      }
    }
  }
}
