using System;
using System.Data;
using Microsoft.SqlServer.Dts.Runtime;
using System.Windows.Forms;
using System.IO;
using System.Data.SqlClient;

try
{
    string Delimitador = Dts.Variables["User::Delimitador"].Value.ToString();
    string ExtensionArchivo = Dts.Variables["User::ExtensionArchivo"].Value.ToString();
    string FolderOrigen = Dts.Variables["User::FolderOrigenArticulo"].Value.ToString();
    string tabla = Dts.Variables["User::TablaDestinoArticulo"].Value.ToString();

    string SourceDirectory = FolderOrigen;
    string[] fileEntries = Directory.GetFiles(SourceDirectory, "*" + ExtensionArchivo);
    foreach (string fileName in fileEntries)
    {
        SqlConnection myADONETConnection = new SqlConnection();
        myADONETConnection = (SqlConnection)(Dts.Connections["DESKTOP-OSG9JQ5.PROYECTO_1_TEMP"].AcquireConnection(Dts.Transaction) as SqlConnection);
        int counter = 0;
        string line;
        System.IO.StreamReader SourceFile = new System.IO.StreamReader(fileName);
        while ((line = SourceFile.ReadLine()) != null)
        {
            if (counter > 0)
            {
                string[] campos = line.Split(Delimitador.ToCharArray()[0]);
                string query = "INSERT INTO " + tabla + " (codigoArticulo, color, descripcion, departamento) Values('" + campos[0] + "','" + campos[1] + "','" + campos[2] + "','" + campos[3] + "')";
                SqlCommand myCommand1 = new SqlCommand(query, myADONETConnection);
                myCommand1.ExecuteNonQuery();
            }
            counter++;
        }
        SourceFile.Close();
        Dts.TaskResult = (int)ScriptResults.Success;
    }
}
catch (Exception exception)
{
    using (StreamWriter sw = File.CreateText(Dts.Variables["User::FolderError"].Value.ToString() + "\\" + "ErrorLog.log"))
    {
        sw.WriteLine(exception.ToString());
        Dts.TaskResult = (int)ScriptResults.Failure;
    }
}