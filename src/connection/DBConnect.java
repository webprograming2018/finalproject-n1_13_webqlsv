package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
    
    public static Connection getConnection(){
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sv?useUnicode=yes&characterEncoding=UTF-8", "root", "22121997");
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("connect false");
        }
        return conn;
    }
    
    public static void main(String [] args) {
		System.out.println(getConnection() );
	}
}
