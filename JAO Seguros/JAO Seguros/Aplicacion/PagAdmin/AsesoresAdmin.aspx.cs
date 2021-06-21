using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace JAO_Seguros.Aplicacion.PagAdmin
{
    public partial class AsesoresAdmin : System.Web.UI.Page
    {
        /*--LLAMAR LAS CLASES DE GESTION NECESARIAS--*/
        GestionEmpleado gestionAsesores = new GestionEmpleado();
        GestionAdmin gestionAdmin = new GestionAdmin();
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
                    string IDAdminLogueado = "";
                    IDAdminLogueado = Convert.ToString(Session["UsuarioAdmin"]);
                    /*--TRAER LISTA DE ADMIN Y LLENAR TABLA CON LA LISTA--*/
                    List<Empleado> listaAsesor = gestionAsesores.listadoEmpleadosAdmin(IDAdminLogueado);
                    TablaAsesoresAdminActivos.DataSource = listaAsesor;
                    TablaAsesoresAdminActivos.DataBind();
                    // Requerido para que funcione jQuery DataTables.
                    TablaAsesoresAdminActivos.UseAccessibleHeader = true;
                    TablaAsesoresAdminActivos.HeaderRow.TableSection = TableRowSection.TableHeader;
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
                    string IDAdminLogueado = "";
                    IDAdminLogueado = Convert.ToString(Session["UsuarioAdmin"]);
                    /*--TRAER LISTA DE ADMIN Y LLENAR TABLA CON LA LISTA--*/
                    List<Empleado> listaAsesor = gestionAsesores.listadoEmpleadosAdmin(IDAdminLogueado);
                    TablaAsesoresAdminActivos.DataSource = listaAsesor;
                    TablaAsesoresAdminActivos.DataBind();
                    // Requerido para que funcione jQuery DataTables.
                    TablaAsesoresAdminActivos.UseAccessibleHeader = true;
                    TablaAsesoresAdminActivos.HeaderRow.TableSection = TableRowSection.TableHeader;

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
            /*--ENVIAR ID DEL ASESOR A EDITAR--*/
            LinkButton btnDetalles = sender as LinkButton;
            GridViewRow gvRow = (GridViewRow)btnDetalles.NamingContainer;
            string id = Convert.ToString(TablaAsesoresAdminActivos.DataKeys[gvRow.RowIndex].Value);
            Response.Redirect("EditarAsesor.aspx?idAsesor=" + id);
        }
        
    }
}
