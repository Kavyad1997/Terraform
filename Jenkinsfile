
pipeline {
    agent any

    environment {
        AZURE_CLIENT_ID     = 'eaef6cb9-56a3-46d8-8a79-1344466995a9'
        AZURE_CLIENT_SECRET = 'fym8Q~tZc4hLbHar-OzsUGWMoT5m4KBIbkzPac19'
        AZURE_TENANT_ID     = 'a98aed34-555b-40a5-a78d-9a52aaca8bcc'
    }

    stages {
        stage('Install Azure CLI') {
            steps {
                script {
                    echo "Installing Azure CLI"
                    sh 'curl -sL https://aka.ms/InstallAzureCLIDeb | bash'
                }
            }
        }

        stage('Login to Azure') {
            steps {
                script {
                    echo "Logging in to Azure"
                    sh "az login --service-principal --username ${AZURE_CLIENT_ID} --password ${AZURE_CLIENT_SECRET} --tenant ${AZURE_TENANT_ID}"
                }
            }
        }

        stage('Initialize Terraform') {
            steps {
                script {
                    echo "Initializing Terraform"
                    sh 'terraform init'
                }
            }
        }

        stage('Deploy Terraform Infrastructure') {
            steps {
                script {
                    echo "Deploying Terraform infrastructure"
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}
