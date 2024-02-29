pipeline {
    agent any

    stages {
        stage('Example') {
            environment {
                // Define any other environment variables you need
                AWS_REGION = 'us-east-1'
            }

            steps {
                script {
                    // Access AWS credentials using environment variables
                    withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: '67e61857-c2be-4fc9-929c-0487f0b70191', accessKeyVariable: 'AWS_ACCESS_KEY_ID', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
                        bash '''
                            # Your AWS CLI or AWS SDK commands using credentials here
                            terraform init
                            terraform apply --auto-approve
                            # Example command to list S3 buckets
                        '''
                    }
                }
            }
        }
    }
}
