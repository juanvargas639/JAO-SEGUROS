using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JAO_Seguros.Aplicacion.PagAsesor
{
    public partial class Reportes : System.Web.UI.Page
    {
        GestionReporte gestionReporte = new GestionReporte();
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
                    /*--TRAER LISTA DE CLIENTES Y LLENAR TABLA CON LA LISTA--*/
                    string IdUsuarioAsesor = Convert.ToString(Session["UsuarioAsesor"]);
                    List<Reporte> reportesActuales = gestionReporte.listadoReportesAsesor(IdUsuarioAsesor);
                    TablaReportesAsesorActivos.DataSource = reportesActuales;
                    TablaReportesAsesorActivos.DataBind();
                    // Requerido para que funcione jQuery DataTables.
                    TablaReportesAsesorActivos.UseAccessibleHeader = true;
                    TablaReportesAsesorActivos.HeaderRow.TableSection = TableRowSection.TableHeader;
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
                    /*--TRAER LISTA DE CLIENTES Y LLENAR TABLA CON LA LISTA--*/
                    string IdUsuarioAsesor = Convert.ToString(Session["UsuarioAsesor"]);
                    List<Reporte> reportesActuales = gestionReporte.listadoReportesAsesor(IdUsuarioAsesor);
                    TablaReportesAsesorActivos.DataSource = reportesActuales;
                    TablaReportesAsesorActivos.DataBind();
                    // Requerido para que funcione jQuery DataTables.
                    TablaReportesAsesorActivos.UseAccessibleHeader = true;
                    TablaReportesAsesorActivos.HeaderRow.TableSection = TableRowSection.TableHeader;
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
            string id = Convert.ToString(TablaReportesAsesorActivos.DataKeys[gvRow.RowIndex].Value);
            Response.Redirect("EditarReportes.aspx?idReporte=" + id);
        }
        
    }
}