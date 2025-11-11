pipeline {
    agent any

    triggers {
        githubPush()
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Pulling code from GitHub...'
                git branch: 'main', url: 'https://github.com/gitsaravanahub/FIRST_DEVOPS_PROJECT.git'
            }
        }

        stage('Build') {
            steps {
                echo 'uilding static website...'
                sh 'ls -l' 
            }
        }

        stage('Test') {
            steps {
                echo 'Testing for firstdevops.html presence..'
                sh '''
                    if [ ! -f firstdevops.html ]; then
                        echo "firstdevops.html missing!"
                        exit 1
                    else
                        echo "firstdevops.html found!"
                    fi
                '''
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying website to local server folder'
                sh '''
                    DEPLOY_PATH="/root/DepfoldPro3"
                    mkdir -p $DEPLOY_PATH
                    cp -r * $DEPLOY_PATH/
                    echo "Deployment complete."
                '''
            }
        }
    }
}
