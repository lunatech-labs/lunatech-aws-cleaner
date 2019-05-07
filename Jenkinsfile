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
		sh('lunatech-devops-training | aws-nuke -c config/default.yaml --profile default')
	    }
	}
    }
}
