pipeline {
  agent {
    label "jenkins-maven"
  }
  environment {
    ORG = 'deniedboarding'
    APP_NAME = 'istioctl'
    DOCKER_REGISTRY_ORG = 'deniedboarding'
  }
  stages {
    stage('Build Release') {
      when {
        branch 'master'
      }
      steps {
        container('maven') {

          // ensure we're not on a detached head
          sh "git checkout master"
          sh "git config --global credential.helper store"
          sh "jx step git credentials"                    
          sh '''
              export VERSION=1.8.2
              ./downloadIstio.sh
              skaffold build -f skaffold.yaml
          '''
        }
      }
    }
  }
  post {
        always {
          cleanWs()
        }
  }
}
