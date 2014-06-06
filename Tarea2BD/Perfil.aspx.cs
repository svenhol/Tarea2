using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Tarea2BD
{
    public partial class Perfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conexion = new SqlConnection();
            string cadenaConexion = @"Data Source=BELIK-PC\SQLEXPRESS;Initial Catalog=Tarea2BD;Integrated Security=True";
            conexion.ConnectionString = cadenaConexion;
            conexion.Open();
            string instruccion = "SELECT * FROM usuario;";
            SqlCommand command = new SqlCommand(instruccion, conexion);
            SqlDataReader reader = command.ExecuteReader();
        }
    }
}