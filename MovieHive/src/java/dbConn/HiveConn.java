/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dbConn;

import java.sql.*;

public class HiveConn {
  
  /*  
    public static void main(String[] args) {
         try{
             String query = "select * from movie";
            Class.forName("org.apache.hive.jdbc.HiveDriver");
            String URL = "jdbc:hive2://192.168.72.133:10000/stp18";
            Connection con = DriverManager.getConnection(URL,"","");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(query);
         
               
                while(rs.next()){
                     String count = rs.getString(1);
                     System.out.println(count);
                }
                
        }
        catch(Exception e){
            System.out.println("Error FOUND : "+e.getMessage());
          
        }
    }
    */
    
   public static ResultSet getData(String query) {
        try{
            Class.forName("org.apache.hive.jdbc.HiveDriver");
            String URL = "jdbc:hive2://192.168.72.133:10000/stp18";
            Connection con = DriverManager.getConnection(URL,"","");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(query);
            return rs;
        }
        catch(Exception e){
            System.out.println("Error FOUND : "+e.getMessage());
            return null;
        }
    }
}