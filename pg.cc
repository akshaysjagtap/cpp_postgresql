#include <iostream>
#include <pqxx/pqxx> 

using namespace std;
using namespace pqxx;

result get_data()
{
		 
      connection C("dbname=test user=ubuntu password=ubuntu hostaddr=127.0.0.1 port=5432");
      if (C.is_open()) {
         cout << "Opened database successfully: " << C.dbname() << endl;
      } else {
         cout << "Can't open database" << endl;
      }

      /* Create SQL statement */
      char sql[] = "SELECT * from employee";

      /* Create a non-transactional object. */
      nontransaction N(C);
      
      /* Execute SQL query */
      result R( N.exec( sql ));
      
      /* List down all the records */
    
      cout << "Operation done successfully" << endl;
      C.disconnect ();
   return R;
}

int main(int argc, char* argv[]) {
   
   result R = get_data();
 	     for(const auto &row: R)
      {
      	for(const auto &f: row)
      	{
      		cout << f.c_str() << " "; 
      	}
      	cout << "\n";
      }
   return 0;
}
