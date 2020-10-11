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
      git 'https://github.com/IbiliAze/Jenkins.git'
    }

    stage('Build') {
      sh '''chmod +x testscript.sh
      ./testscript.sh
      pwd
      ls -a'''
    }
  }
}
