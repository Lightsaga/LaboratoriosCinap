using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sistema_Alumno_Listado : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["usuario"].Equals(""))
        {
            Response.Redirect("~/Sistema/Login/Inicio.aspx");
        }

        else
        {
            Response.Write(Session["usuario"].ToString());
        }
    }
}