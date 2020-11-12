pipeline {
    agent 'any'
    stages{
        stage('git pull'){
            steps{
               echo 'pull git repo'
               git 'https://github.com/karthik0248/Jumpstart1.git'
            }
        }
        stage('terrform version'){
            steps{
                sh 'terraform --version'
                sh 'aws s3 ls'
            }
        }
        stage('terra init'){
            steps{
                echo 'initializing terraform'
                sh 'terraform init'
            }
        }
        stage('terra Validate'){
            steps{
                echo 'Validating terraform script'
                sh 'terraform validate'
            }
        }
         stage('install docker'){
            steps{
                echo 'intallation docker
                sh 'yum install docker -y'
            }
        }
         stage('docker version check'){
             steps{
                 echo 'docker version check'
                 sh 'docker --version'
            }
        }
        stage('docker image build'){
            steps{
                sh 'sudo docker build -t nginx:1 .'
                sh 'sudo docker run --name mynginx -itd -p 80:80 nginx:1'
            }
        }
    }
}
