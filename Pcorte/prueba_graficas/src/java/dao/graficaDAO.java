/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import conexion.conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import vo.ventas;

/**
 *
 * @author pc
 */
public class graficaDAO {
    
    private Connection connection;

    public graficaDAO() {
        connection = conexion.getConnection();
    }

    public ventas venta(ventas venta) {

        try {
            PreparedStatement preparedStatement = null;
            String consulta = "SELECT * FROM VENTAS";
            preparedStatement = connection.prepareStatement(consulta);
            preparedStatement.setDouble(1, venta.getTotal());
            preparedStatement.setString(2, venta.getMes());
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {

                double total = rs.getInt("total");
                String mes = rs.getString("mes");
                ventas sesion = new ventas();
                sesion.setTotal(total);
                sesion.setMes(mes);
                return sesion;
            } else {
                //Luego realizaremos otro tipo de retorno  
                return null;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }
}
