using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JAO_Seguros.Aplicacion.PagCliente
{
    public partial class DefaultCliente1 : System.Web.UI.Page
    {
        GestionCliente gestion = new GestionCliente();
        GestionAdmin gestionAdmin = new GestionAdmin();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["user"] == null)
                {
                    if (Session["UsuarioCliente"] == null)
                    {
                        Response.Redirect("/Aplicacion/Ingresar.aspx");
                    }
                    else
                    {
                        string idCliente = Convert.ToString(Session["UsuarioCliente"]);
                        Cliente usuario = gestion.consultarCliente(idCliente);
                        lbNombreCliente.Text = usuario.NombreCliente;
                        lbApellidoCliente.Text = usuario.ApellidoCliente;
                        Int32 numClientes = gestionAdmin.numeroClientes();
                        lbNumeroClientesTotales.Text = Convert.ToString(numClientes);
                    }

                }
                else
                {
                    string idCliente = Request.QueryString["user"];
                    Session["UsuarioCliente"] = idCliente;
                    Cliente usuario = gestion.consultarCliente(idCliente);
                    lbNombreCliente.Text = usuario.NombreCliente;
                    lbApellidoCliente.Text = usuario.ApellidoCliente;
                    Int32 numClientes = gestionAdmin.numeroClientes();
                    lbNumeroClientesTotales.Text = Convert.ToString(numClientes);
                }

            }
        }
        
        protected void btnCerrarSesion_ServerClick(object sender, EventArgs e)
        {
            /*ELIMINAR LA VARIABLE SESSION*/
            Session.Remove("UsuarioCliente");
            /*REDIRECCIONAR A LA PÁGINA PRINCIPAL*/
            Response.Redirect("/Aplicacion/Ingresar.aspx");
        }
    }
}