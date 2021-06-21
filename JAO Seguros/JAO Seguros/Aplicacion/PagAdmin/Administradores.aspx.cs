using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace JAO_Seguros.Aplicacion.PagAdmin
{
    public partial class Administradores1 : System.Web.UI.Page
    {
        /*--LLAMAR LAS CLASES DE GESTION NECESARIAS--*/
        GestionAdmin gestionAdministradores = new GestionAdmin();
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
                    TablaAdministradoresBlind();
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
                    TablaAdministradoresBlind();
                }
            }
        }

        protected void TablaAdministradoresBlind()
        {
            string IDAdminLogueado = "";
            /*--TRAER LISTA DE ADMIN Y LLENAR TABLA CON LA LISTA--*/
            IDAdminLogueado = Convert.ToString(Session["UsuarioAdmin"]);
            List<Administrador> listaAdmin = gestionAdministradores.listadoAdministradores(IDAdminLogueado);
            TablaAdministradoresActivos.DataSource = listaAdmin;
            TablaAdministradoresActivos.DataBind();
            // Requerido para que funcione jQuery DataTables.
            TablaAdministradoresActivos.UseAccessibleHeader = true;
            TablaAdministradoresActivos.HeaderRow.TableSection = TableRowSection.TableHeader;
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
            string id = Convert.ToString(TablaAdministradoresActivos.DataKeys[gvRow.RowIndex].Value);
            Response.Redirect("EditarAdmin.aspx?idAdmin=" + id);
        }
    }
}