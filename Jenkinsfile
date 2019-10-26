pipeline {
    agent {
        // Equivalent to "docker build -f Dockerfile.build --build-arg version=1.0.2 ./build/
        dockerfile {
            dir 'tools/docker'
            args '-v .:/home/gradle/testrepo:delegated -v tools/docker/gradle_cache:/home/gradle/.gradle:delegated'
        }
    }
    stages {
        stage('Test') {
            steps {
                sh 'gradle clean test'
            }
        }
    }
}

