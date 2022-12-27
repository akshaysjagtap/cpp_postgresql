#include<iostream>
#include<pqxx/pqxx>
using namespace std;
using namespace pqxx;

int main()
{
	string strConnection = "dbname=plc_data user=postgres password=postgres hostaddr=127.0.0.1 port=5432";
	string sql = "";
	connection C(strConnection);
	
	if(C.is_open())
	{
		nontransaction N(C);
		sql = "select distinct field_name, bit_number from field_defs order by field_name";
		result r(N.exec(sql));	
			
		for (auto const &row: r)
		{
		  	cout << row["field_name"] << " " << row["bit_number"] << endl;
		}
		C.disconnect ();
	}
	return 0;
}
