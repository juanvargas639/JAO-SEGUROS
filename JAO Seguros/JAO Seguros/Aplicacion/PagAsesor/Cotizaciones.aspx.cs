using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JAO_Seguros.Aplicacion.PagAsesor
{
    public partial class Cotizaciones : System.Web.UI.Page
    {
        GestionCotizacion gestionCotizacion = new GestionCotizacion();
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
                    /*--TRAER LISTA DE ADMIN Y LLENAR TABLA CON LA LISTA--*/
                    List<Cotizacion> listaCotizacion = gestionCotizacion.listadoCotizaciones();
                    TablaCotizacionesAsesorActivas.DataSource = listaCotizacion;
                    TablaCotizacionesAsesorActivas.DataBind();
                    // Requerido para que funcione jQuery DataTables.
                    TablaCotizacionesAsesorActivas.UseAccessibleHeader = true;
                    TablaCotizacionesAsesorActivas.HeaderRow.TableSection = TableRowSection.TableHeader;
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
                    /*--TRAER LISTA DE ADMIN Y LLENAR TABLA CON LA LISTA--*/
                    List<Cotizacion> listaCotizacion = gestionCotizacion.listadoCotizaciones();
                    TablaCotizacionesAsesorActivas.DataSource = listaCotizacion;
                    TablaCotizacionesAsesorActivas.DataBind();
                    // Requerido para que funcione jQuery DataTables.
                    TablaCotizacionesAsesorActivas.UseAccessibleHeader = true;
                    TablaCotizacionesAsesorActivas.HeaderRow.TableSection = TableRowSection.TableHeader;
                }
            }
        }

        protected void lnkBtnEdit_Click(object sender, EventArgs e)
        {
            LinkButton btnDetalles = sender as LinkButton;
            GridViewRow gvRow = (GridViewRow)btnDetalles.NamingContainer;
            string id = Convert.ToString(TablaCotizacionesAsesorActivas.DataKeys[gvRow.RowIndex].Value);
            Response.Redirect("EditarCotizaciones.aspx?idCotizacion=" + id);
        }
        
        protected void btnCerrarSesion_ServerClick(object sender, EventArgs e)
        {
            /*ELIMINAR LA VARIABLE SESSION*/
            Session.Remove("UsuarioAsesor");
            /*REDIRECCIONAR A LA PÁGINA PRINCIPAL*/
            Response.Redirect("/Aplicacion/Ingresar.aspx");
        }
    }
}