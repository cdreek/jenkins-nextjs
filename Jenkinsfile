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
        sh 'docker build -t ghcr.io/cdreek/myjenkins-blueocean:1.1 .'
      }
    }

    stage('Lint') {
      steps {
        sh 'docker run ghcr.io/cdreek/myjenkins-blueocean:1.1'
      }
    }

    stage('Deploy') {
      steps {
        echo 'Deploy that crap'
      }
    }

  }
}