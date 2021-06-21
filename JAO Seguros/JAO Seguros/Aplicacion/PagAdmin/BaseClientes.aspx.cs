using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace JAO_Seguros.Aplicacion.PagAdmin
{
    public partial class BaseClientes : System.Web.UI.Page
    {
        /*--LLAMAR CLASES DE GESTION NECESARIAS--*/
        GestionCliente gestionCliente = new GestionCliente();
        GestionLogin gestionLogin = new GestionLogin();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                /*--RESTRINGIR AL USUARIO SI ACCEDE A LA PÁGINA SIN LOGUEO--*/
                if (Session["UsuarioAdmin"] == null)
                {
                    Response.Redirect("/Aplicacion/Ingresar.aspx");
                }
                else
                {
                    /*--TRAER LISTA DE ADMIN Y LLENAR TABLA CON LA LISTA--*/
                    List<Cliente> listaCliente = gestionCliente.listadoCliente();
                    TablaClientesActivos.DataSource = listaCliente;
                    TablaClientesActivos.DataBind();
                    // Requerido para que funcione jQuery DataTables.
                    TablaClientesActivos.UseAccessibleHeader = true;
                    TablaClientesActivos.HeaderRow.TableSection = TableRowSection.TableHeader;
                }
            } else
            {
                /*--RESTRINGIR AL USUARIO SI ACCEDE A LA PÁGINA SIN LOGUEO--*/
                if (Session["UsuarioAdmin"] == null)
                {
                    Response.Redirect("/Aplicacion/Ingresar.aspx");
                }
                else
                {
                    /*--TRAER LISTA DE ADMIN Y LLENAR TABLA CON LA LISTA--*/
                    List<Cliente> listaCliente = gestionCliente.listadoCliente();
                    TablaClientesActivos.DataSource = listaCliente;
                    TablaClientesActivos.DataBind();
                    // Requerido para que funcione jQuery DataTables.
                    TablaClientesActivos.UseAccessibleHeader = true;
                    TablaClientesActivos.HeaderRow.TableSection = TableRowSection.TableHeader;
                }
            }
        }

        protected void btnCerrarSesion_ServerClick(object sender, EventArgs e)
        {
            /*ELIMINAR LA VARIABLE SESSION*/
            Session.Remove("UsuarioAdmin");
            /*REDIRECCIONAR A LA PÁGINA PRINCIPAL*/
            Response.Redirect("/Aplicacion/Ingresar.aspx");
        }

        protected void lnkBtnEdit_Click(object sender, EventArgs e)
        {
            LinkButton btnDetalles = sender as LinkButton;
            GridViewRow gvRow = (GridViewRow)btnDetalles.NamingContainer;
            string id = Convert.ToString(TablaClientesActivos.DataKeys[gvRow.RowIndex].Value);
            Response.Redirect("EditarCliente.aspx?DocCliente=" + id);
        }
    }
}