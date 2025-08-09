pipeline {
    agent any
    environment {
        AWS_REGION = "ap-south-1"
    }
    stages {
        stage('Terraform Init') {
            steps {
                withAWS(credentials: 'for jenkins', region: "${AWS_REGION}") {
                    sh 'terraform init'
                }
            }
        }
        stage('Terraform Plan') {
            steps {
                withAWS(credentials: 'for jenkins', region: "${AWS_REGION}") {
                    sh 'terraform plan'
                }
            }
        }
        stage('Terraform Apply') {
            steps {
                withAWS(credentials: 'for jenkins', region: "${AWS_REGION}") {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}
