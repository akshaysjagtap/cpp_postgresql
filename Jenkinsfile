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
        //sh 'g++ cpp_postgresql.cpp -lpqxx'
	//sh 'cppcheck cpp_postgresql.cpp'
      }
    }
       stage('Static Analysis')
       {
         steps
         {
          echo 'Static code analysis...'
	  sh 'cppcheck --version' 
          sh 'cppcheck --enable=all \
          --inline-suppr \
          --std=c++14 \
          --suppressions-list=cppcheck-supressions.txt \
          --inconclusive \
          --force \
          --xml \
          --xml-version=2 -itest -ibuild -ikc_cpp_toolkit \
          . 2> cppcheck.xml'
       }
     }   
  }
}

