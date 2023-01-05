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
	sh 'firewall-cmd --zone=public --permanent --add-port=1024/udp'
	sh 'firewall-cmd --reload'
      }
    }
    
		
  }
  

}

