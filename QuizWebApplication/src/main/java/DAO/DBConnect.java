package DAO;//Data Access Object
import java.sql.*;
public class DBConnect {
	
	public Connection cn=null;
	public DBConnect() throws Exception
	{
		Class.forName("org.postgresql.Driver");//postgre driver load in java prog
	      cn = DriverManager.getConnection(
	         "jdbc:postgresql://localhost:5432/postgres","postgres","Password#12");

	}
	
	public void QueryExecuter(String sql) throws Exception
	{
		Statement st = cn.createStatement();
		st.execute(sql);
		st.close();
		
	}
	public ResultSet QueryReturner(String sql)throws Exception
	{
		Statement st= cn.createStatement();
		ResultSet rs = st.executeQuery(sql);
		return rs;
		
	}

}
