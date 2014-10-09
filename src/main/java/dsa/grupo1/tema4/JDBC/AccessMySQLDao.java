package dsa.grupo1.tema4.JDBC;


import java.sql.Connection;
import java.sql.DriverManager;


/**
 * Conexión a BBDD
 *
 */
public class AccessMySQLDao {
	

		
		//Variable global de conexión
		public static Connection connect = null; //variable de conexión de mySQL
	 	
		//Conexión a BBDD de MySQL
		public static void connectDatabase() throws Exception {
		    try {
		    
		      Class.forName("com.mysql.jdbc.Driver");
		      // setup the connection with the DB.
		      connect = DriverManager
		          .getConnection("jdbc:mysql://localhost/School?"
		              + "user=sqluser&password=sqlpwd");
		    	} catch (Exception e) {
			      throw e;
			    } 
		}

		
	  //Función para recuperar una conexión existente a la BBDD	
	  public static Connection getConnect() {
		  if (connect == null) 
			try {
				connectDatabase();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        return connect;
	  }
	  
	  //Función para cerrar conexión a BBDD
	  public void cerrarConexion(){
		  connect = null;
	  }
} 