package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Empleado;
import modelo.Sucursal;

/**
 * @author Walter
 */
public class SucursalDao extends DAO{
    private ResultSet res;
    private PreparedStatement sta;
    private String query;
    
    public ArrayList<Sucursal> listar() throws Exception{
        ArrayList<Sucursal> lstSucursal =null;
        try {
            this.conectar();
            query="select * from sucursal";
            sta = this.getCn().prepareStatement(query);
            res = sta.executeQuery();
            lstSucursal = new ArrayList();
            
            while (res.next()) {
                Sucursal suc = new Sucursal();
                suc.setIdSucursal(res.getInt("id_sucursal"));
                suc.setSucursal(res.getString("nombre_sucursal"));
                lstSucursal.add(suc);
            }
            
        } catch (Exception ex) {
            Logger.getLogger(SucursalDao.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            this.cerrar();
        }
        return lstSucursal;
    }
}
