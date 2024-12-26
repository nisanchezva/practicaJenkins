pipeline {
    agent any

    tools {
        terraform 'terraform'  
    }

    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/nisanchezva/practicaJenkins'
            }
        }

        stage('Terraform init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform apply') {
            steps {
                sh 'terraform apply --auto-approve' //Para que no haya problemas de un crasheo o algo por la aprobación
            }
        }

        stage('Get Public IP') {
            steps {
                script {
                    // Ip publica
                    def publicIp = sh(script: 'terraform output -raw public_ip', returnStdout: true).trim()
                    echo "Ip: ${publicIp}"
                }
            }
        }
    }
}
