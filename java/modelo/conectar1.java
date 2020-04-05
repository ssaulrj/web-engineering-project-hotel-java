package modelo;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Saulp
 */
public class conectar1 {
    private static Connection conn = null;
    String url = "";
    String user = "";
    String password = "";
    String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    String ip = ""; 
    //String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    
        //String url = "jdbc:sqlserver://localhost\\HP1\\SQLINSTANCIA1:1433;databaseName=Cancun";
   
    //Adan84";
    //com.microsoft.sqlserver.jdbc.SQLServerDataSource
    //String user = "sa";
    //String password = "Sega1484";
    //String url = "jdbc:sqlserver://192.168.1.10\\192.168.1.10\\CDMX:14143;databaseName=CDMX";
    //String user = "sa";
    //String password = "Sega1484";
    //String url = "jdbc:sqlserver://192.168.1.10\\192.168.1.10\\CANCUN:1433;databaseName=CANCUN";
    
    //Abraham
    //com.microsoft.sqlserver.jdbc.SQLServerDataSource
    //String user = "sa";
    //String password = "12345";
    //String url = "jdbc:sqlserver://192.168.1.11\\192.168.1.11\\RICAUDEE:1433;databaseName=MERIDA";
    //String user = "sa";
    //String password = "12345";
    //String url = "jdbc:sqlserver://192.168.1.10\\192.168.1.10\\OAXACA:62520;databaseName=OAXACA";
    
    //Paty
    //String user = "sa";
    //String password = "Sp07aa";
    //String url = "jdbc:sqlserver://192.168.1.12\\192.168.1.12\\SQLCSL:62208;databaseName=CSL";
    //String user = "sa";
    //String password = "T10AsXsP";
    //String url = "jdbc:sqlserver://192.168.1.12\\192.168.1.12\\SQLINSTANCIA1:61338;databaseName=SLP";
    
    
    
    //jdbc:sqlserver://localhost\HP1\SQLINSTANCIA1:1433;databaseName=Cancun
    public conectar1(String textoidLugar){
        
        conn = null;
        
        Properties p = new Properties();
        try {
            p.load(new FileReader(new File ("G:\\Sssss\\hotelSPA\\hotelSPA\\src\\java\\modelo\\servidoresDiccionario.properties").getAbsolutePath ()));  
        } catch (IOException ex) {
            Logger.getLogger(conectar1.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        //String x = p.getProperty("servidor."+textoidLugar);
        user = p.getProperty("servidor."+textoidLugar+"user");
        password = p.getProperty("servidor."+textoidLugar+"password");
        url = p.getProperty("servidor."+textoidLugar);
          
        System.out.println("Sa " + user);
        System.out.println("Pass " + password);
        System.out.println("Url " + url);
    
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            conn = DriverManager.getConnection(url,user,password);//con esta linea nos conectamos a la base de datos
            if(conn !=null){
                System.out.println("Conexion establecida");
                //JOptionPane.showMessageDialog(null,"Conexion establecida para SQL SERVER\n"+conn);   
            }
        }
        
        catch (ClassNotFoundException | SQLException e){
            System.out.println("Error al conectar " + e);
        }
    }
    
    public Connection getConnection1(){ //retorna conexion
        return conn;
    }
    
    public void desconectar1(){ 
        conn = null;
        if(conn == null){
                System.out.println("Conexion finalizada !");
        }
    }
    
    public String getIP(){ //retorna conexion
        ip = "10.104.97.130";
        return ip;
    }
}
