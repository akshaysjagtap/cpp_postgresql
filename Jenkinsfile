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
    stage('SonarQube analysis') {
    def scannerHome = tool 'SonarScanner 4.0';
    withSonarQubeEnv('My SonarQube Server') { // If you have configured more than one global server connection, you can specify its name
      sh "${scannerHome}/bin/sonar-scanner"
    }
  }
    stage('Test') 
    {
      steps {
        echo 'checking for test cases'
        sh 'g++ cpp_postgresql.cpp -lpqxx'
	echo 'Static code analysis...'
          sh "cppcheck --enable=all \
          --inline-suppr \
          --std=c++14 \
          --inconclusive \
          --force \
          --xml \
          --xml-version=2 -itest -ibuild -ikc_cpp_toolkit \
          . 2>cppcheck.xml"
          script
          {
           def cppcheckissues = scanForIssues tool: cppCheck(pattern: 'cppcheck.xml')
           publishIssues issues: [cppcheckissues], failedTotalHigh: 1, failedTotalNormal:1, failedTotalLow:1
         }
      }
    }
  }
}

