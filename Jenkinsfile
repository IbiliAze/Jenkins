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
        ./testscript.sh > output.txt
        pwd
        ls -a
        echo $PATH'''
      }
    }
    stage('Post') {
      steps {
        archiveArtifacts artifacts: 'output.txt', followSymlinks: false
      }
    }
  }
}
