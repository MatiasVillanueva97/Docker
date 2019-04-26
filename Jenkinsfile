

pipeline{

	environment{

		registry = "matiasv97/repository"
		registryCredential = "dockerhub"
	}
	agent any 

	stages{
		stage('Starting'){
			steps{
			sh 'echo starting...'
					}
				}
		stage('CheckDocker'){
			steps{

				sh 'sudo docker ps'
			}}
		stage('Build Image'){
			steps{
				script{
					dockerImage=docker.build registry + ":$BUILD_NUMBER"
				}
			}

		stage('Push'){
			steps{
				script{
					docker.withRegristry('',registryCredential){
						dockerImage.push();
					}
				}
			}

		}

		}
	}


