pipeline {
    agent any
    triggers {
  pollSCM '* * * * *'
}
    stages{
        stage('build and push docker image') {
      steps {
        script {  
          checkout scm
          docker.withRegistry('', 'docker_u') {
          def customImage = docker.build("isims51461/release-03:${env.BUILD_ID}")
          def customImage1 = docker.build("isims51461/release-03")      
          customImage.push()
          customImage1.push() 
          }
    }
    
    }
}
}
          stage ('deployment trigger') {
          steps {
              build {'release-03-cd'
}
}
}
