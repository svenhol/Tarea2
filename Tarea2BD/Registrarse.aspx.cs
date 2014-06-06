using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

namespace Tarea2BD
{
    public partial class Registrarse : System.Web.UI.Page
    {
        Foro foro = new Foro();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonFinalizar_Click(object sender, EventArgs e)
        {
            CultureInfo provider = CultureInfo.InvariantCulture;
            string format = "d";
            DateTime resultado = DateTime.ParseExact(TextBoxNac.Text, format, provider);
            Label1.Visible = true;
            int idGrupo = 3;
            int cont = 0;
            DateTime now = DateTime.Today;
            string tabla = "usuario";
            string campos = "id_grupo, nombre, contrasenna, cantidad_comentarios, avatar_url, fecha_nacimiento, sexo, fecha_registro";
            string valores = "'" + idGrupo + "' ,'" + TextBoxNombre.Text + "','" + TextBoxCtr.Text + "','" + cont + "', '" + TextBoxAvatar.Text + "', '" + resultado + "', '" + TextBoxSexo.Text + "', '" + now + "'";
            if (TextBoxCtr.Text == TextBoxCtrRe.Text)
            {
                if (foro.Registrar(tabla, campos, valores) == true)
                {
                    Label1.Text = "Se ha registrado exitosamente!";
                    Button1.Visible = true;
                }
                else
                {
                    Label1.Text = foro.MotrarError;
                }
            }
            else
            {
                Label1.Text = "Las contraseñas no coinciden";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }
    }
}