pipeline {
  agent any
  stages {
    stage('Echo') {
      parallel {
        stage('Echo') {
          steps {
            echo 'hello'
          }
        }

        stage('Shell') {
          steps {
            sh '''pwd
ls -a
echo $USER'''
          }
        }

      }
    }

  }
}