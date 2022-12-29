pipeline 
{
  agent {
    dockerfile true
  }
 
  stages 
  {
    stage('Build') 
    {
      steps {
        echo 'build the application'
      }
    }
    stage('Test') 
    {
      steps {
        echo 'checking for test cases'
        sh 'g++ create_database.cpp -lpqxx'
	sh 'sudo ls'
      }
    }
  }
}

