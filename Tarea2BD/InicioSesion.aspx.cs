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
    public partial class InicioSesion : System.Web.UI.Page
    {
        Foro foro = new Foro();
        SqlConnection conexion = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cadenaConexion = @"Data Source=BELIK-PC\SQLEXPRESS;Initial Catalog=Tarea2BD;Integrated Security=True";
            conexion.ConnectionString = cadenaConexion;
            conexion.Open();
            string instruccion = "SELECT nombre, contrasenna FROM usuario WHERE nombre='"+TextBoxNombre.Text+"';";
            SqlCommand command = new SqlCommand(instruccion, conexion);
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                if (TextBoxCtr.Text == reader.GetSqlString(1))
                {
                    Response.Redirect("Foro.aspx");
                    Label1.Visible = true;
                    Label1.Text = "FUNCIONA";
                    break;
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "Datos incorrectos";
                    break;
                }
            }
        }
    }

}