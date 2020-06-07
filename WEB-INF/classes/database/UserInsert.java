package database;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

/*import database.OracleConnection;*/

public class UserInsert{
	public void insertUser(String user_id,String user_pass,String user_name){
		try{
			Connection cn = OracleConnection.getConnection("info","pro");
			cn.setAutoCommit(false);
			System.out.println("接続完了");
			String sql ="insert into user_table" +
			"(user_id,user_pass,user_name)";
			Statement st = cn.createStatement();
			int count =st.executeUpdate(sql);	
			System.out.println(count+"件処理されました");
			st.close();
			cn.commit();
			cn.close();
		}catch(SQLException e){
			System.out.println(e.getMessage());
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
	}
}
