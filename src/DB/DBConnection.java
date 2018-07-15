package DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    private static final String driver = "com.mysql.jdbc.Driver";
    private static final String url="jdbc:mysql://localhost/school?useUnicode=true&characterEncoding=UTF-8"; 
    private static final String username="root";
    private static final String password="1234";
     
    private static Connection conn=null;  
    static
    {
        try
        {
            Class.forName(driver);
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
    public static Connection getConnection() throws Exception
    {
        if(conn==null)
        {
            conn = DriverManager.getConnection(url, username, password); 
            return conn;
        }
        return conn;
    }
     
  
    public static void main(String[] args) {
         
        try
        {
           Connection conn = DBConnection.getConnection();
           if(conn!=null)
           {
               System.out.println("数据库连接正常！");
           }
           else
           {
               System.out.println("数据库连接异常！");
           }
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
         
    }
}