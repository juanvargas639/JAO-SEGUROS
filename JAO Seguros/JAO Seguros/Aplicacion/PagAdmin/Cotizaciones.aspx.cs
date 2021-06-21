using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace JAO_Seguros.Aplicacion.PagAdmin
{
    public partial class Cotizaciones : System.Web.UI.Page
    {
        GestionCotizacion gestionCotizacion = new GestionCotizacion();
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
                    /*--TRAER LISTA DE COTIZACIONES Y LLENAR TABLA CON LA LISTA--*/
                    List<Cotizacion> listaCotizacion = gestionCotizacion.listadoCotizaciones();
                    TablaCotizacionesActivas.DataSource = listaCotizacion;
                    TablaCotizacionesActivas.DataBind();
                    // Requerido para que funcione jQuery DataTables.
                    TablaCotizacionesActivas.UseAccessibleHeader = true;
                    TablaCotizacionesActivas.HeaderRow.TableSection = TableRowSection.TableHeader;
                }
            }
            else
            {
                /*--RESTRINGIR AL USUARIO SI ACCEDE A LA PÁGINA SIN LOGUEO--*/
                if (Session["UsuarioAdmin"] == null)
                {
                    Response.Redirect("/Aplicacion/Ingresar.aspx");
                }
                else
                {
                    /*--TRAER LISTA DE ADMIN Y LLENAR TABLA CON LA LISTA--*/
                    List<Cotizacion> listaCotizacion = gestionCotizacion.listadoCotizaciones();
                    TablaCotizacionesActivas.DataSource = listaCotizacion;
                    TablaCotizacionesActivas.DataBind();
                    // Requerido para que funcione jQuery DataTables.
                    TablaCotizacionesActivas.UseAccessibleHeader = true;
                    TablaCotizacionesActivas.HeaderRow.TableSection = TableRowSection.TableHeader;
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
            string id = Convert.ToString(TablaCotizacionesActivas.DataKeys[gvRow.RowIndex].Value);
            Response.Redirect("EditarCotizaciones.aspx?idCotizacion=" + id);
        }
    }
}