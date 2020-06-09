using System;
using System.Data;
using Microsoft.SqlServer.Dts.Runtime;
using System.Windows.Forms;
using System.IO;
using System.Data.SqlClient;

try
{
    
    SqlConnection myADONETConnection = new SqlConnection();
    myADONETConnection = (SqlConnection)(Dts.Connections["DESKTOP-OSG9JQ5.PROYECTO_1"].AcquireConnection(Dts.Transaction) as SqlConnection);
    
    string queryTablaArticulo = "DELETE FROM articulo";
    SqlCommand myCommandTablaArticulo = new SqlCommand(queryTablaArticulo, myADONETConnection);
    myCommandTablaArticulo.ExecuteNonQuery();  
   
    string queryTtablaCliente = "DELETE FROM cliente";
    SqlCommand myCommandTtablaCliente = new SqlCommand(queryTtablaCliente, myADONETConnection);
    myCommandTtablaCliente.ExecuteNonQuery();
    
    string queryTablaFecha = "DELETE FROM fecha";
    SqlCommand myCommandTablaFecha = new SqlCommand(queryTablaFecha, myADONETConnection);
    myCommandTablaFecha.ExecuteNonQuery();
    
    string queryTablaRegion = "DELETE FROM region";
    SqlCommand myCommandTablaRegion = new SqlCommand(queryTablaRegion, myADONETConnection);
    myCommandTablaRegion.ExecuteNonQuery();
    
    string queryTablaSucursal = "DELETE FROM sucursal";
    SqlCommand myCommandTablaSucursal = new SqlCommand(queryTablaSucursal, myADONETConnection);
    myCommandTablaSucursal.ExecuteNonQuery(); 

    string queryTablaVendedor = "DELETE FROM vendedor";
    SqlCommand myCommandTablaVendedor = new SqlCommand(queryTablaVendedor, myADONETConnection);
    myCommandTablaVendedor.ExecuteNonQuery(); 

    string queryTablaVenta = "DELETE FROM venta";
    SqlCommand myCommandTablaVenta = new SqlCommand(queryTablaVenta, myADONETConnection);
    myCommandTablaVenta.ExecuteNonQuery(); 

    // Reset AUTOINCREMENT
    string queryTablaArticulo1 = "DBCC CHECKIDENT (articulo, RESEED, 0)";
    SqlCommand myCommandTablaArticulo1 = new SqlCommand(queryTablaArticulo1, myADONETConnection);
    myCommandTablaArticulo1.ExecuteNonQuery();  
   
    string queryTtablaCliente1 = "DBCC CHECKIDENT (cliente, RESEED, 0)";
    SqlCommand myCommandTtablaCliente1 = new SqlCommand(queryTtablaCliente1, myADONETConnection);
    myCommandTtablaCliente1.ExecuteNonQuery();
    
    string queryTablaFecha1 = "DBCC CHECKIDENT (fecha, RESEED, 0)";
    SqlCommand myCommandTablaFecha1 = new SqlCommand(queryTablaFecha1, myADONETConnection);
    myCommandTablaFecha1.ExecuteNonQuery();
    
    string queryTablaRegion1 = "DBCC CHECKIDENT (region, RESEED, 0)";
    SqlCommand myCommandTablaRegion1 = new SqlCommand(queryTablaRegion1, myADONETConnection);
    myCommandTablaRegion1.ExecuteNonQuery();
    
    string queryTablaSucursal1 = "DBCC CHECKIDENT (sucursal, RESEED, 0)";
    SqlCommand myCommandTablaSucursal1 = new SqlCommand(queryTablaSucursal1, myADONETConnection);
    myCommandTablaSucursal1.ExecuteNonQuery(); 

    string queryTablaVendedor1 = "DBCC CHECKIDENT (vendedor, RESEED, 0)";
    SqlCommand myCommandTablaVendedor1 = new SqlCommand(queryTablaVendedor1, myADONETConnection);
    myCommandTablaVendedor1.ExecuteNonQuery();     
    Dts.TaskResult = (int)ScriptResults.Success;
    
}
catch (Exception exception)
{
    using (StreamWriter sw = File.CreateText(Dts.Variables["User::FolderError"].Value.ToString() + "\\" + "ErrorLog.log"))
    {
        sw.WriteLine(exception.ToString());
        Dts.TaskResult = (int)ScriptResults.Failure;
    }
}