pipeline {
  agent any
  stages {
    stage('Pull') {
      steps {
        echo 'Git clone & Docker pull - to update'
        sh 'printenv'
      }
    }

    stage('Build') {
      steps {
        sh 'docker build -t testname .'
      }
    }

    stage('Lint') {
      steps {
        sh 'docker run testname'
      }
    }

    stage('Deploy') {
      steps {
        echo 'Deploy that crap'
      }
    }

  }
}