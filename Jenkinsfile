pipeline {
        agent {
                docker { image 'gbraad/flatpak' }
        }
        stages {
                stage('Build') {
                        steps {
                                sh 'make build'
                        }
                }
        }
}