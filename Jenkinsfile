pipeline {
    agent any  // Exécuter ce pipeline sur n'importe quel agent disponible (machine Jenkins)

    stages {
        // Étape de clonage du dépôt GitHub
        stage('Clone Repository') {
            steps {
                git 'https://github.com/eyaalimi/DevOpsExam.git'  // Remplace cette URL par celle de ton dépôt GitHub
            }
        }
        
        // Étape de build : Construction de l'image Docker
        stage('Build') {
            steps {
                script {
                    // Construire l'image Docker
                    sh 'docker build -t my-node-app:v1 .'
                }
            }
        }

        // Étape de test : Exécuter les tests avec Mocha ou Jest
        stage('Test') {
            steps {
                script {
                    // Installer les dépendances et exécuter les tests
                    sh 'npm install'
                    sh 'npm test'  // Exécuter les tests avec Mocha ou Jest
                }
            }
        }

        // Étape de déploiement : Simulation du déploiement
        stage('Deploy') {
            when {
                branch 'main'  // Déployer uniquement si la branche est 'main'
            }
            steps {
                echo "Deploying to production..."
            }
        }
    }

    post {
        always {
            // Toujours exécuter après le pipeline, que ce soit un succès ou un échec
            echo 'Pipeline terminé.'
        }

        success {
            echo 'Pipeline réussi, tout fonctionne bien!'
        }

        failure {
            echo 'Le pipeline a échoué.'
        }
    }
}

