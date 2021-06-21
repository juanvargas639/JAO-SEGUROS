using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace JAO_Seguros.Aplicacion.PagCliente
{
    public partial class Reportes : System.Web.UI.Page
    {
        GestionCliente gestionCliente = new GestionCliente();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                /*--RESTRINGIR AL USUARIO SI ACCEDE A LA PÁGINA SIN LOGUEO--*/
                if (Session["UsuarioCliente"] == null)
                {
                    Response.Redirect("/Aplicacion/Ingresar.aspx");
                }
                else
                {
                    /*--TRAER LISTA DE REPORTES Y LLENAR TABLA CON LA LISTA--*/
                    string IdUsuarioCliente = Convert.ToString(Session["UsuarioCliente"]);
                    List<Reporte> listaReportes = gestionCliente.listadoReportesCliente(IdUsuarioCliente);
                    TablaReportesActivos.DataSource = listaReportes;
                    TablaReportesActivos.DataBind();
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

        protected void TablaReportesActivos_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            e.Row.Cells[2].Visible = false;
            e.Row.Cells[4].Visible = false;
            e.Row.Cells[5].Visible = false;
        }

        protected void btnCrearReporte_Click(object sender, EventArgs e)
        {
            string IdUsuarioCliente = Convert.ToString(Session["UsuarioCliente"]);
            Reporte nuevoReporte = new Reporte();
            nuevoReporte.DescripcionReporte = txtDescripcionReporte.Text;
            nuevoReporte.RespuestaReporte = "Sin Respuesta";
            nuevoReporte.DocumentoCliente = IdUsuarioCliente;
            Cliente usuario = gestionCliente.consultarCliente(IdUsuarioCliente);
            nuevoReporte.IDEmpleado = usuario.IDEmpleado;
            nuevoReporte.TipoReporte = listTipoReporte.Text;
            if (gestionCliente.InsertarReporte(nuevoReporte))
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Enviado!',text: 'Tu Reporte se envió correctamente' ,icon: 'success', type: 'success'}).then(function() {window.location = 'Reportes.aspx';});", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo enviar el Reporte, inténtalo más tarde', icon: 'error', timer: 1500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
            }

        }
    }
}