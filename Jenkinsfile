

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
			}
		stage('Build Image'){
			sh 'cd /home/backup/php542.0'
			sh 'docker build --tag=php542.0'

		}
		stage('Deploy Container'){
			sh 'cd /home/backup/compose2'

			docker compose up -d 
		}

		}
	}
}


