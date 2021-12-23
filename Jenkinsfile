pipeline {
    agent any

    tools {
        
        maven "3.6.0"
    }

    stages {
        stage('SCM') {
            steps {
                git 'http://localhost:3000/demouser/Quiz_Minds.git'

                //sh "mvn clean install"
            }
        }
        stage('Build + SonarQube analysis'){
            steps{
                echo 'testing the build'
                
                withSonarQubeEnv('sonarqube') {
                    
                    sh "mvn clean install sonar:sonar -Dsonar.login=admin -Dsonar.password=password"
                }
            }
        }
        stage('Artifactory configuration'){
            steps {
                script {
                    rtMaven.tool ='Maven-3.5.3'
                    rtMaven.deployer releaseRepo: 'libs-release-local', 'libs-snapshot-local', server: server
                    rtMaven.resolver releaseRepo:'libs-release', snapshotRepo: 'libs-snapshot', server: server
                    rtMaven deployer.artifactDeploymentPatterns.addExclude("pom.xml")
                    buildInfo = Artifactory.newBuildInfo()
                    buildInfo.retention maxBuilds: 10, maxDays: 7, deleteBuildArtifacts: true
                    buildInfo.env.capture = true
                    }
                }    
            }
    }
}
