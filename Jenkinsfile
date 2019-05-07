pipeline {
    agent {
	docker { image 'rebuy-de/aws_nuke' }
    }
    environment {
	TRAINING_ID = '801771690413'
    }
    stages {
	stage('build') {
	    steps {
		sh('edit_conf.sh')
		sh('(echo lunatech-devops-training; sleep 10; echo lunatech-devops-training) | aws-nuke -c config/default.yaml --profile default')
	    }
	}
    }
}
