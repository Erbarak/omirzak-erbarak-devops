pipeline {
    agent any

    environment {
        STUDENT_NAME = 'Erbarak'
        STUDENT_SURNAME = 'Omirzak'
        STUDENT_GROUP = 'IT2-2306'
        STUDENT_ID = '37403'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
                sh 'git log -n 1'
            }
        }

        stage('Build') {
            steps {
                echo "=============================="
                echo "Student: ${STUDENT_NAME} ${STUDENT_SURNAME}"
                echo "Group: ${STUDENT_GROUP}"
                echo "Student ID: ${STUDENT_ID}"
                echo "=============================="
                sh 'chmod +x scripts/Omirzak_Erbarak_system.sh app/app.sh'
            }
        }

        stage('Test') {
            steps {
                sh './scripts/Omirzak_Erbarak_system.sh'
                sh 'cat Omirzak_Erbarak_info.txt'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t omirzak-erbarak-devops .'
                sh 'docker images | grep omirzak-erbarak-devops'
            }
        }

        stage('Docker Run') {
            steps {
                sh 'docker rm -f omirzak-erbarak-container || true'
                sh '''
                    docker run \
                      -e STUDENT_NAME=${STUDENT_NAME} \
                      -e STUDENT_SURNAME=${STUDENT_SURNAME} \
                      -e STUDENT_GROUP=${STUDENT_GROUP} \
                      -e STUDENT_ID=${STUDENT_ID} \
                      --name omirzak-erbarak-container \
                      omirzak-erbarak-devops
                '''
                sh 'docker ps -a | grep omirzak-erbarak-container'
            }
        }
    }
}
