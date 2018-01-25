
package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DAO 
{
 private Connection cn;   

    public Connection getCn() {
        return cn;
    }

    public void setCn(Connection cn) {
        this.cn = cn;
    }
 
    public void conectar () throws Exception
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tienda_alibrand?user=u473081222_admin&password=jaeer2018");
            System.out.println("COnectado");
        }catch(Exception e)
        {
            throw e;
        }
    }
    
    public void cerrar() throws Exception
    {
        try{
        if(cn!=null)
        {
            if(cn.isClosed()==false)
            {
                cn.close();
            }
        }
        }catch(Exception e)
        {
            throw e;
        }
    }
}
