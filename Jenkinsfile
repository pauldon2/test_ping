#!groovy

pipeline {
    
    agent {
        label 'master'
    }
    
     options {
        disableConcurrentBuilds()     
        ansiColor('xterm')
        timestamps()
        buildDiscarder(logRotator(numToKeepStr: '10', artifactNumToKeepStr: '10'))
   }
    
    stages {
        stage('Prepare') {
            steps {
                sh "date"
                echo 'Prepare'
                checkout([$class: 'GitSCM', branches: [[name: '${BRANCH_NAME}']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/pauldon2/test_ping']]])
            }
        }
        stage('Run job') {
            steps {
                sh "cd $WORKSPACE"
                sh "ls -la"
                sh "chmod 755 ping_google.sh"
                sh "./ping_google.sh"
                echo 'Run Job'
            }
        }
        
    }    
}


