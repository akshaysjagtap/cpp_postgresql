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
		sh 'cppcheck cpp_postgresql.cpp'
      }
    }
      stage('Static Analysis')
      {
         steps
         {
            echo 'Static code analysis...'
            sh "cppcheck --enable=all --xml --xml-version=2 -itest -ibuild -ikc_cpp_toolkit cpp_postgresql.cpp 2>cppcheck.xml"

            script
            {
                def cppcheckissues = scanForIssues tool: cppCheck(pattern: 'cppcheck.xml')
                publishIssues issues: [cppcheckissues], failedTotalHigh: 1, failedTotalNormal:1, failedTotalLow:1
            }

         }
     }    
  }
}

