pipeline {
    agent any
    environment {
      PROJECT_NAME = "Simple Jenkinsfile"
      OWNER_NAME   = "TEST"
    }

    stages {
        stage('1-Build') {
            steps {
                echo "Start Building..."
                sh "sudo docker build -t nginx_github ."
		sh "sudo docker rm -f nginx_github || true"
		sh "sudo docker run --name nginx_github -d -p 7777:80 nginx_github"
                echo "End  Building..."
            }
        }
        stage('2-Test') {
            steps {
                echo "Start Testing..."
                echo "It is  ${PROJECT_NAME}"
                echo "Owner is ${OWNER_NAME}"
		sh "ls -la"
                echo "End Testing..."
            }
        }
        stage('3-Deploy') {
            steps {
		echo "Start Deploying"
                sh "curl 127.0.0.1:7777"
                echo "End Deploying..."
            }
        }
    }
}
