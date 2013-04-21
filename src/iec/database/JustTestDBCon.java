package iec.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JustTestDBCon {

	
	private static Connection con;
    private static Statement st;

    static {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con = DriverManager.getConnection("jdbc:mysql://sql2.freesqldatabase.com/sql26269", "sql26269", "aZ7*cS2*");
            con.setAutoCommit(true);
            st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    
    public static void main(String[] args) {
		try {
			ResultSet rs = JustTestDBCon.st.executeQuery("select 1+1 from dual");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
