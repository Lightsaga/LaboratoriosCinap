using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sistema_Login_Inicio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnEnviar_Click(object sender, EventArgs e)
    {
        try
        {
            Dataset2TableAdapters.UsuarioTableAdapter1 obj = new Dataset2TableAdapters.UsuarioTableAdapter1();
            string NombreUsuario = obj.Login(txtNombres.Text, txtContraseñas.Text).ToString();

            if (!NombreUsuario.Equals(""))
            {
                Session["usuario"] = NombreUsuario;
            }
            Response.Redirect("~/Sistema/Profesor/Listado.aspx");
            
                
        }

        catch
        {
            lblMensaje.Text = "Error";
        }
    }
}