using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Csharp
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if(rut.Text == "" & usuario.Text == "" & contraseña.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertIns", "alert('No a ingresado ningun dato');", true);
            }
            else if(rut.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertIns", "alert('No a ingresado rut');", true);
            }
            else if(usuario.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertIns", "alert('No a ingresado usuario');", true);
            }else if (contraseña.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertIns", "alert('No a ingresado contraseña');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertIns", "alert('Se a registrado correctamente');", true);
                Session["user"] = usuario.Text;
                Session["password"] = contraseña.Text;
                Session["rut"] = rut.Text;
                Response.Redirect("Default.aspx");
            }
        }

        protected void Rut_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Usuario_TextChanged(object sender, EventArgs e)
        {

        }
    }
}