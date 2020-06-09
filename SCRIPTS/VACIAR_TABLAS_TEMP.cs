using System;
using System.Data;
using Microsoft.SqlServer.Dts.Runtime;
using System.Windows.Forms;
using System.IO;
using System.Data.SqlClient;

try
{
    string tablaArticulo = Dts.Variables["User::TablaDestinoArticulo"].Value.ToString();
    string tablaCliente = Dts.Variables["User::TablaDestinoCliente"].Value.ToString();
    string tablaSucursal = Dts.Variables["User::TablaDestinoSucursal"].Value.ToString();
    string tablaVendedor = Dts.Variables["User::TablaDestinoVendedor"].Value.ToString();
    string tablaVentas = Dts.Variables["User::TablaDestinoVentas"].Value.ToString();
    SqlConnection myADONETConnection = new SqlConnection();
    myADONETConnection = (SqlConnection)(Dts.Connections["DESKTOP-OSG9JQ5.PROYECTO_1_TEMP"].AcquireConnection(Dts.Transaction) as SqlConnection);
    
    string queryTablaArticulo = "DELETE FROM " +  tablaArticulo;
    SqlCommand myCommandTablaArticulo = new SqlCommand(queryTablaArticulo, myADONETConnection);
    myCommandTablaArticulo.ExecuteNonQuery();  
   
    string queryTtablaCliente = "DELETE FROM " +  tablaCliente;
    SqlCommand myCommandTtablaCliente = new SqlCommand(queryTtablaCliente, myADONETConnection);
    myCommandTtablaCliente.ExecuteNonQuery();
    
    string queryTablaSucursal = "DELETE FROM " +  tablaSucursal;
    SqlCommand myCommandTablaSucursal = new SqlCommand(queryTablaSucursal, myADONETConnection);
    myCommandTablaSucursal.ExecuteNonQuery();
    
    string queryTablaVendedor = "DELETE FROM " +  tablaVendedor;
    SqlCommand myCommandTablaVendedor = new SqlCommand(queryTablaVendedor, myADONETConnection);
    myCommandTablaVendedor.ExecuteNonQuery();
    
    string queryTablaVentas = "DELETE FROM " +  tablaVentas;
    SqlCommand myCommandTablaVentas = new SqlCommand(queryTablaVentas, myADONETConnection);
    myCommandTablaVentas.ExecuteNonQuery(); 
    
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