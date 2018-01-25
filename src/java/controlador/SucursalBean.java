package controlador;

import dao.SucursalDao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import modelo.Sucursal;

/**
 * @author Walter
 */
@ManagedBean
@ViewScoped
public class SucursalBean {
    private Sucursal suc = new Sucursal();
    private ArrayList<Sucursal> lstSucursal = new ArrayList<>();

    public Sucursal getSuc() {
        return suc;
    }

    public void setSuc(Sucursal suc) {
        this.suc = suc;
    }

    public ArrayList<Sucursal> getLstSucursal() {
        return lstSucursal;
    }

    public void setLstSucursal(ArrayList<Sucursal> lstSucursal) {
        this.lstSucursal = lstSucursal;
    }
    
    public void listar(){
        SucursalDao sucDao = new SucursalDao();
        try {
            lstSucursal = sucDao.listar();
            
        } catch (Exception e) {
            System.out.println("Error al listar en sucursal bean");
        }
    }
}
