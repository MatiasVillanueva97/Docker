


pipeline{
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
			sh 'docker build --tag=php542.0'
			}


		}
		stage('Deploy Container'){
			
			steps{

			sh 'docker compose up -d'
			}

		}

		}
	}


