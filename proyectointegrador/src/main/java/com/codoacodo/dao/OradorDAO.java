package com.codoacodo.dao;

/**
 *
 * @author Ele
 */
import com.codoacodo.model.Orador;
import com.codoacodo.connection.AdministradorDeConexiones;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.Timestamp;
import java.util.List;

public class OradorDAO {

    //private static final String SQL_DELETE = "DELETE FROM ORADOR WHERE ID = ?";

    /*metodos del crud*/
    public Orador obtenerPorId(Integer id) {
        String sql = "SELECT * FROM ORADOR WHERE ID_ORADOR=" + id;

        //Connection
        Connection con = AdministradorDeConexiones.getConnection();

        Orador oradorFromDb = null;

        //Statement
        try {
            Statement st = con.createStatement();

            //resultset
            ResultSet rs = st.executeQuery(sql);

            //VIENE UN SOLO REGISTRO!!!
            if (rs.next()) {//si existe, hay uno solo
                Integer idOrador = rs.getInt(1);//tomar la primer columna
                String nombre = rs.getString(2);
                String apellido = rs.getString(3);
                String mail = rs.getString(4);
                String tema = rs.getString(5);
                Timestamp fecha = rs.getTimestamp(6);

                //campos crear un objeto????
                oradorFromDb = new Orador(idOrador, nombre, apellido, mail, tema, fecha);
   
            }
        } catch (SQLException e) {
            // ERRORES
            e.printStackTrace();
        }
        return oradorFromDb;
    }


    /*metodos del crud*/
    public List<Orador> listarOradores() {
        String sql = "SELECT * FROM ORADOR;";

        //Connection
        Connection con = AdministradorDeConexiones.getConnection();

        List<Orador> list = new ArrayList<>();

        //Statement
        try {
            Statement st = con.createStatement();

            //resultset
            ResultSet rs = st.executeQuery(sql);

            while (rs.next()) {//
                Integer idOrador = rs.getInt(1);//tomar la primer columna
                String nombre = rs.getString(2);
                String apellido = rs.getString(3);
                String mail = rs.getString(4);
                String tema = rs.getString(5);
                Timestamp fecha = rs.getTimestamp(6);

                Orador oradorFromDb = new Orador(idOrador, nombre, apellido, mail, tema, fecha);

                //agrego a la lista 
                list.add(oradorFromDb);
            }

            //cierro la conexion
            con.close();
        } catch (SQLException e) {
            // ERRORES
            System.out.println("En orador");
            e.printStackTrace();
        }
        return list;
    }

    /*crear un producto en la db*/
    public int crearOrador(String nombre, String apellido, String mail, String tema) {

        PreparedStatement st = null;
        int registros = 0;
        Connection con = AdministradorDeConexiones.getConnection();
        if (con != null) {
            String sql = "INSERT INTO ORADOR (nombre, apellido,mail, tema) ";
            sql += "VALUES ( ?,?,?,?)";

            try {
               
                st = con.prepareStatement(sql);
                st.setString(1, nombre);
                st.setString(2, apellido);
                st.setString(3, mail);
                st.setString(4, tema);
                st.executeUpdate();
                System.out.print(st);
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
          return registros;
    }

    public int actualizarOrador(String nombre, String apellido, String mail, String tema, Integer idOrador) {
        PreparedStatement st = null;
        int registros = 0;
        Connection con = AdministradorDeConexiones.getConnection();
        if (con != null) {
              String sql = "UPDATE orador SET nombre = ?, apellido = ?, mail = ?, tema = ? WHERE ID_ORADOR = ?";
            try {
                st = con.prepareStatement(sql);
                st.setString(1, nombre);
                st.setString(2, apellido);
                st.setString(3, mail);
                st.setString(4, tema);
                st.setInt(5, idOrador);
                st.executeUpdate();
                System.out.print(st);
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return registros;
    }

    /*metodos del crud*/
    public List<Orador> buscar(String nom) {
        String sql = "SELECT * FROM ORADOR WHERE nombre LIKE '%" + nom + "%' ";

        //Connection
        Connection con = AdministradorDeConexiones.getConnection();

        List<Orador> listado = new ArrayList<Orador>();

        //Statement
        try {
            Statement st = con.createStatement();

            //resultset
            ResultSet rs = st.executeQuery(sql);

            //VIENE UN SOLO REGISTRO!!!
            while (rs.next()) {//si existe, hay uno solo
                Integer idOrador = rs.getInt(1);//tomar la primer columna
                String nombre = rs.getString(2);
                String apellido = rs.getString(3);
                String mail = rs.getString(4);
                String tema = rs.getString(5);
                Timestamp fecha = rs.getTimestamp(6);

                //campos crear un objeto
                Orador oradorFromDb = new Orador(idOrador, nombre, apellido, mail, tema, fecha);

                listado.add(oradorFromDb);
            }
        } catch (SQLException e) {
            // ERRORES
            e.printStackTrace();
        }

        return listado;
    }

    public int eliminarOrador(Integer id) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int registros = 0;
         String sql = "DELETE FROM ORADOR WHERE ID_ORADOR = ?";

        try {
            conn = AdministradorDeConexiones.getConnection();
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            registros = stmt.executeUpdate();
        } catch (SQLException | NullPointerException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {
                stmt.close();
                conn.close();
            } catch (SQLException | NullPointerException ex) {
                ex.printStackTrace(System.out);
            }
        }

        return registros;
    }
}
