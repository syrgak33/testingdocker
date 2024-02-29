withCredentials([[
    $class: 'AmazonWebServicesCredentialsBinding',
    credentialsId: '67e61857-c2be-4fc9-929c-0487f0b70191',
    accessKeyVariable: 'AWS_ACCESS_KEY_ID',
    secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
]]) {
    // Your AWS-related pipeline steps here



pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', credentialsId: 'b3ef7466-2dd7-47fc-8a1c-5fa5dca81277', url: 'https://github.com/syrgak33/testingdocker.git'
            }
        }
        stage('Terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform apply') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
        
    }
}
}
