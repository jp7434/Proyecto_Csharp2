using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Csharp
{
    public partial class Usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            
        }

        protected void Guardar_Click(object sender, EventArgs e)
        {
            if (nombres.Text == "" & apellidos.Text == "" & usuario.Text == "" & contraseña.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertIns", "alert('No a ingresado ningun dato');", true);
            }
            else if (nombres.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertIns", "alert('No a ingresado nombres');", true);
            }
            else if (apellidos.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertIns", "alert('No a ingresado apellidos');", true);
            }
            else if (usuario.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertIns", "alert('No a ingresado nombre de usuario');", true);
            }
            else if (contraseña.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertIns", "alert('No a ingresado contraseña');", true);
            }
            else
            {
                Session["nombre1"] = nombres.Text;
                Session["apellido1"] = apellidos.Text;
                Session["user1"] = usuario.Text;
                Session["password1"] = contraseña.Text;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertIns", "alert('Usuario Creado Correctamente');", true);
            }
        }
    }
}