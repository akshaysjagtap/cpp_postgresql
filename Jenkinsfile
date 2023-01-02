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
        sh 'g++ cpp_postgresql.cpp -lpqxx'
        sh 'ps -C dockerd'

      }
    }
    
		
  }
  

}

