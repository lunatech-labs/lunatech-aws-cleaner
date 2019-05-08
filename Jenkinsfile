pipeline {
    agent {
	docker { image 'rebuy-de/aws_nuke' }
    }
    environment {
	TRAINING_ID = '801771690413'
	ACCOUNT_ALIAS = 'lunatech-devops-training'
    }
    stages {
	stage('build') {
	    steps {
		withCredentials([($class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'Lunatech Devops Training credentials')]) {
		    sh('edit_conf.sh')
		    sh("(echo $ACCOUNT_ALIAS; sleep 10; echo $ACCOUNT_ALIAS | aws-nuke -c config/default.yaml --profile default")
		}
	    }
	}
    }
}
