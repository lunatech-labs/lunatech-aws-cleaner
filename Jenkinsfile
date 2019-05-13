pipeline {
    agent any
    environment {
	TRAINING_ID = '801771690413'
	ACCOUNT_ALIAS = 'lunatech-devops-training'
    }
    stages {
	stage('configure') {
	    steps {
	        withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'Lunatech Devops Training credentials']]) {
	            sh("docker pull lunatechlabs/aws-nuke")
		    sh("pwd")
		    sh("ls -R")
    		   sh ("echo $ACCOUNT_ALIAS |docker run -i --mount type=bind,src=/var/lib/jenkins/workspace/aws-resources-cleaner/config/default.yaml,dst=/src/def.yaml lunatechlabs/aws-nuke:latest -c /src/def.yaml --access-key-id $AWS_ACCESS_KEY_ID --secret-access-key $AWS_SECRET_ACCESS_KEY")
		}
	    }
	}
    }
}
