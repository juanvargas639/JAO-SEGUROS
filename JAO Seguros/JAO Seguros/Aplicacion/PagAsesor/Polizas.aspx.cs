using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace JAO_Seguros.Aplicacion.PagAsesor
{
    public partial class Polizas : System.Web.UI.Page
    {
        GestionPoliza gestionPoliza = new GestionPoliza();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                /*--RESTRINGIR AL USUARIO SI ACCEDE A LA PÁGINA SIN LOGUEO--*/
                if (Session["UsuarioAsesor"] == null)
                {
                    Response.Redirect("/Aplicacion/Ingresar.aspx");
                }
                else
                {
                    string id = Convert.ToString(Session["UsuarioAsesor"]);
                    /*--TRAER LISTA DE POLIZAS Y LLENAR TABLA CON LA LISTA--*/
                    List<Poliza> listaPoliza = gestionPoliza.listadoPolizaAsesor(id);
                    TablaPolizasAsesorActivas.DataSource = listaPoliza;
                    TablaPolizasAsesorActivas.DataBind();
                    // Requerido para que funcione jQuery DataTables.
                    TablaPolizasAsesorActivas.UseAccessibleHeader = true;
                    TablaPolizasAsesorActivas.HeaderRow.TableSection = TableRowSection.TableHeader;
                }
            }
            else
            {
                /*--RESTRINGIR AL USUARIO SI ACCEDE A LA PÁGINA SIN LOGUEO--*/
                if (Session["UsuarioAsesor"] == null)
                {
                    Response.Redirect("/Aplicacion/Ingresar.aspx");
                }
                else
                {
                    /*--TRAER LISTA DE POLIZAS Y LLENAR TABLA CON LA LISTA--*/
                    string id = Convert.ToString(Session["UsuarioAsesor"]);
                    List<Poliza> listaPoliza = gestionPoliza.listadoPolizaAsesor(id);
                    TablaPolizasAsesorActivas.DataSource = listaPoliza;
                    TablaPolizasAsesorActivas.DataBind();
                    // Requerido para que funcione jQuery DataTables.
                    TablaPolizasAsesorActivas.UseAccessibleHeader = true;
                    TablaPolizasAsesorActivas.HeaderRow.TableSection = TableRowSection.TableHeader;
                }
            }
        }

        protected void btnCerrarSesion_ServerClick(object sender, EventArgs e)
        {
            /*ELIMINAR LA VARIABLE SESSION*/
            Session.Remove("UsuarioAsesor");
            /*REDIRECCIONAR A LA PÁGINA PRINCIPAL*/
            Response.Redirect("/Aplicacion/Ingresar.aspx");
        }

        protected void lnkBtnEdit_Click(object sender, EventArgs e)
        {
            LinkButton btnDetalles = sender as LinkButton;
            GridViewRow gvRow = (GridViewRow)btnDetalles.NamingContainer;
            string id = Convert.ToString(TablaPolizasAsesorActivas.DataKeys[gvRow.RowIndex].Value);
            Response.Redirect("EditarPoliza.aspx?CodigoPoliza=" + id);
        }
    }
}