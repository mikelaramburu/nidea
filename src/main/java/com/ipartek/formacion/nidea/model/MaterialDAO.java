package com.ipartek.formacion.nidea.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ipartek.formacion.nidea.pojo.Material;

public class MaterialDAO {

	public ArrayList<Material> getAll() {

		/**
		 * Recupera todos los materiales de la BD ordenados por id descendente
		 * 
		 * @return ArrayList<Material> si no existen registros new ArrayList<Material>()
		 */
		ArrayList<Material> lista = new ArrayList<Material>();
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			final String URL = "jdbc:mysql://192.168.0.42/spoty?" + "user=alumno&password=alumno";
			con = DriverManager.getConnection(URL);
			String sql = "SELECT id,nombre,precio FROM spoty.material;";

			pst = con.prepareStatement(sql);

			rs = pst.executeQuery();

			Material m = null;
			while (rs.next()) {

				m = new Material();
				m.setId(rs.getInt("id"));
				m.setNombre(rs.getString("nombre"));
				m.setPrecio(rs.getInt("precio"));
				lista.add(m);
			}

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			try {
				if (rs != null) {
				}
				rs.close();

				if (pst != null) {
					pst.close();
				}
				if (con != null) {
					con.close();
				}

			} catch (SQLException e) {
				e.printStackTrace();
			}

		}
		return lista;
	}

}
