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
    protected void btnBuscar_Click(object sender, EventArgs e)
    {  
        // BUG: Luego de hacer busqueda no es posible borrar una fila pero si editar.

        try
        {
            gvProfesores.DataSourceID = "";
            gvProfesores.DataSource = ObjectDataSourceBusqueda;
            gvProfesores.DataBind();
        }
        catch {
            Label1.Text = "Escribir numero de control por favor";
        }
    }
}