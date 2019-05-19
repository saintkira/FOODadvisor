package helper;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Jamin
 */
public class ConnectionHelper {
    enum Action_Type{
       QUERY, INSERT, UPDATE, DELETE;
   }
    
    private static Connection connection;
    private static CallableStatement cStmt;
    
    public ConnectionHelper() {
    }
    
    public static Connection getCon(){
        connection = null;
        
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=FoodAdvisor";
            connection = DriverManager.getConnection(url,"sa","123");
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ConnectionHelper.class.getName()).log(Level.SEVERE, null, ex);
        } 
        
        return connection;
    }
    
    //call query store procedure
    public static String callQuerySP(String spName){
        String json = null;
        connection = getCon();
        
        try {
            cStmt = connection.prepareCall("{call "+spName+"(?)}");
            cStmt.registerOutParameter(1, Types.VARCHAR);
            cStmt.execute();
            json = cStmt.getString(1);
        } catch (SQLException ex) {
            Logger.getLogger(ConnectionHelper.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return json;
    }
    
    //call query by param store procedure
    public static String callQuerySP(String spName, String param){
        String json = null;
        connection = getCon();
        
        try {
            cStmt = connection.prepareCall("{call "+spName+"(?,?)}");
            cStmt.setString(1, param);
            cStmt.registerOutParameter(2, Types.VARCHAR);
            cStmt.execute();
            json = cStmt.getString(2);
        } catch (SQLException ex) {
            Logger.getLogger(ConnectionHelper.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return json;
    }
    
    //call create/edit/delete store procedure
    public static boolean callSP(String spName, String param){
        boolean boo_result = false;        
        connection = getCon();
        
        try {
            cStmt = connection.prepareCall("{call "+spName+"(?)}");
            cStmt.setString(1, param);
            cStmt.execute();
            if(cStmt.getUpdateCount()>0)
             boo_result = true;            
        } catch (SQLException ex) {
            Logger.getLogger(ConnectionHelper.class.getName()).log(Level.SEVERE, null, ex);
        }
        return boo_result;
    }
    
}

