pipeline{
    agent any
    
    triggers{
        githubPush()
    }
    
    options{
        skipDefaultCheckout(true)
    }
    
    stages{
        stage('Fetch'){
            steps{
                sh 'rm -rf Masters-Thesis'
                sh 'git clone https://github.com/dynamic-queries/Masters-Thesis.git'
            }
        }   
        
        stage('Build'){
            steps{
                dir("./Masters-Thesis"){
                    sh 'make clean | make plans'
                }

            }
                
        }
        
        stage("Publish"){
            steps{
                dir("./Masters-Thesis"){
                    sh 'git add .'
                    sh 'git commit -m "Publish PDF"'
                    sh 'git push'
                }      
            }
        }
    }

    
    post{
        always{
            cleanWs(cleanWhenNotBuilt: false,
            deleteDirs: true,
            disableDeferredWipeout: true,
            notFailBuild: true)
        }
    }
}
