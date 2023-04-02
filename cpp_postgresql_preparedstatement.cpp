#include<iostream>
#include<pqxx/pqxx>
using namespace std;
using namespace pqxx;

int main()
{
	string strConnection = "dbname=plc_data user=postgres password=postgres hostaddr=127.0.0.1 port=5432";
        string sql = "";
        connection C(strConnection);

        string id = "IN_SW1";
        try {
            if(C.is_open())
            {

                work N(C);
                sql = "select * from field_defs where parameter_name = $1";
                C.prepare("example",sql);

                result r = N.prepared("example")(id).exec();;
                for (auto const &row: r)
                {
                   for(int i=0;i<row.size();i++)
                       cout << row.at(i) << endl;
                }
                C.disconnect ();
            }

        } catch (const std::exception &e)
        {
            cout << e.what() << endl;
        }
	return 0;
}
