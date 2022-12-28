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
	sh 'ls'
        //sh 'g++ create_database.cpp -lpqxx'
      }
    }
  }
}

