package com.codoacodo.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class AdministradorDeConexiones {

	public static Connection getConnection() {
		String url = "jdbc:mysql://127.0.0.1:3306/integrador_cac";
		String username = "root";
		String password = "root";
		
		String driverName = "com.mysql.cj.jdbc.Driver";
		/*
		String url = System.getenv("DATASOURCE_URL");
		String user = System.getenv("DATASOURCE_USERNAME");
		String password = System.getenv("DATASOURCE_PASSWORD");
		String driverName = System.getenv("DATASOURCE_DRIVER");
		*/
		//control errores
		Connection con = null;
		try {
			Class.forName(driverName);//carga en memoria el Driver
                        System.out.println("Creando la conexión");
			con = DriverManager.getConnection(url,username,password);
                        System.out.println("Conexión Creada");
		}catch(Exception e) {
                    System.out.println("Falló la creación de la conexión" + e.getMessage());
			e.printStackTrace();//muestra la excepción y el error
		}
		return con;
	}
	
	public static void main(String[] args) {
		Connection con = AdministradorDeConexiones.getConnection();//f5
		if(con != null) {
			System.out.println("Conexion ok");
		}else {
			System.err.println("Conexion fail");
		}
	}
}
