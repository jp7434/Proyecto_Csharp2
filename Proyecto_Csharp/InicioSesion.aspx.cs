using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Csharp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (usuario.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertIns", "alert('debe ingresar un usuario');", true);
            }
            else if (contraseña.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertIns", "alert('debeb ingresar una contraseña');", true);
            }
            else
            {
                if (usuario.Text == "estandar")
                {
                    if (contraseña.Text == "123456")
                    {
                        Session["user"] = usuario.Text;
                        Session["password"] = contraseña.Text;
                        Response.Redirect("InicioEstandar.aspx");
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alertIns", "alert('usuario y/o contraseña incorrectas');", true);
                    }
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alertIns", "alert('usuario y/o contraseña incorrectas');", true);
                }

                if (usuario.Text == "admin")
                {
                    if (contraseña.Text == "654321")
                    {
                        Session["user"] = usuario.Text;
                        Session["password"] = contraseña.Text;
                        Response.Redirect("InicioAdmin.aspx");
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alertIns", "alert('usuario y/o contraseña incorrectas');", true);
                    }
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alertIns", "alert('usuario y/o contraseña incorrectas');", true);
                }

                String user = Session["user"].ToString();
                String pass = Session["password"].ToString();

                if (usuario.Text == user)
                {
                    if (contraseña.Text == pass)
                    {
                        Session["user"] = usuario.Text;
                        Session["password"] = contraseña.Text;
                        Response.Redirect("InicioEstandar.aspx");
                    }
                }

                String user2 = Session["user1"].ToString();
                String pass2 = Session["password1"].ToString();

                if (usuario.Text == user2)
                {
                    if (contraseña.Text == pass2)
                    {
                        Session["user"] = usuario.Text;
                        Session["password"] = contraseña.Text;
                        Response.Redirect("InicioEstandar.aspx");
                    }
                }
            }
            
        }
    }
}