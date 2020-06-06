using System;
using System.Collections;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Proyecto_Csharp
{
    public partial class CalendarioActividades : System.Web.UI.Page
    {
        readonly SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-M388BQP;Initial Catalog=darwin;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Calendar1.SelectedDate = DateTime.Now;
            Calendar1.Caption = "Personal Schedule";
            Calendar1.FirstDayOfWeek = FirstDayOfWeek.Sunday;
            Calendar1.NextPrevFormat = NextPrevFormat.FullMonth;
            Calendar1.TitleFormat = TitleFormat.MonthYear;
            Calendar1.ShowGridLines = true;
            Calendar1.DayStyle.HorizontalAlign = HorizontalAlign.Left;
            Calendar1.DayStyle.VerticalAlign = VerticalAlign.Top;
            Calendar1.DayStyle.Height = new Unit(115);
            Calendar1.DayStyle.Width = new Unit(240);
            Calendar1.OtherMonthDayStyle.BackColor = System.Drawing.Color.Cornsilk;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            try
            {
                var Date = DateTime.Now;

                SqlCommand cmd = new SqlCommand("select * from eventos where fecha_inicio >= SYSDATETIME()", con);
                con.Open();

                cmd.CommandType = CommandType.Text;
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    String fechaInicio = dr["fecha_inicio"].ToString();
                    String fechaTermino = dr["fecha_termino"].ToString();
                    String horaInicio = dr["hora_inicio"].ToString();
                    String horaTermino = dr["hora_fin"].ToString();
                    String titulo = dr["titulo"].ToString();
                    String descripcion = dr["descripcion"].ToString();
                    string dateInput = fechaInicio;
                    string dateInput2 = fechaTermino;
                    DateTime parsedDate = DateTime.Parse(dateInput);
                    DateTime parsedDate2 = DateTime.Parse(dateInput);
                    if (e.Day.Date.Day == parsedDate.Day && e.Day.Date.Month == parsedDate.Month && e.Day.Date.Year == parsedDate.Year)
                    {
                        e.Cell.Controls.Add(new LiteralControl("<p>"+titulo+"</p>"+"<p>"+descripcion+"</p>"+
                            "<p>Empieza desde las "+horaInicio+" hasta las "+horaTermino+"</p>"));
                    }
                }
                dr.Close();
            }
            catch (Exception ex)
            {
                
            }
            finally
            {
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
            }
        }
    }
}