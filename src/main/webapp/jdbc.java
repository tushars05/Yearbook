import java.sql.*;	// step 1
import java.util.Scanner;
public class jdbc {
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		// Step2: Load and Register the database driver 
		Class.forName("com.mysql.cj.jdbc.Driver");	
		String url = "jdbc:mysql://localhost:3306/yearbook";
		String user = "root";
		String pass = "tushar";
		
		// step3: Establish a connection with the database
		Connection con = DriverManager.getConnection(url, user, pass);
		
		if(con != null) {
			System.out.println("Connection established successfully!!");
		}
		con.close();
	}

}