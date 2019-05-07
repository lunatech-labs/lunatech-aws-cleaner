pipeline {
    agent {
	docker { image 'rebuy-de/aws_nuke' }
    }
    environment {
	TRAINING_ID = '801771690413'
    }
    stages {
	stage('preparation') {
	    steps {
		sh('store_credentials.sh')
		sh('edit_conf.sh')
	    }
	}
    }
}
