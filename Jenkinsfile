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
                echo 'Building docker image..'
                sh 'docker build -t devopsimg .'
                echo 'Image is built'
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
                echo 'Container runs here..'
                sh '''
                    docker run -d -p 8081:80 devopsimg
                    echo "container is running...."
                '''
            }
        }
    }
}
