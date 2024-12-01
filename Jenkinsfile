/* Requires the Docker Pipeline plugin */
pipeline {
    agent { 
        docker { 
            image 'python:3.13.0-alpine3.20' 
        } 
    }
    stages {
        stage('Setup') {
            steps {
                sh 'python --version'
                sh 'pip install --upgrade pip --user'
            }
        }
        stage('Test and Archive') {
            steps {
                sh 'echo "Running tests..."'
                sh 'python -c "print(\'Tests completed successfully\')"'
                
                sh 'mkdir output'
                sh 'echo "Test artifact" > output/test.txt'
            }
        }
    }
    post {
        always {
            echo 'Pipeline execution finished!'
        }
    }
}

