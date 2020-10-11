pipeline {
  agent any
  stages {

    stage('Echo') {
      steps {
        echo 'hello'
        sh '''pwd
        ls -a
        echo $USER'''
      }
    }

    stage('Pull') {
      steps {
        git 'https://github.com/IbiliAze/Jenkins.git'
      }
    }

    stage('Build') {
      steps {
        sh '''chmod +x testscript.sh
        ./testscript.sh
        pwd
        ls -a
        echo $PATH'''
      }
    }
  }
}
