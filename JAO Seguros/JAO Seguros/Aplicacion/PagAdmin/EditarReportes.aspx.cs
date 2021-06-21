using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace JAO_Seguros.Aplicacion.PagAdmin
{
    public partial class EditarReportes : System.Web.UI.Page
    {
        GestionReporte gestionReporte = new GestionReporte();
        GestionCliente gestionCliente = new GestionCliente();
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
                    /*--REDIRECCIONAR SI NO EXISTE UN PROVEEDOR SELECCIONADO--*/
                    if (Request.QueryString["idReporte"] == null)
                    {
                        Response.Redirect("Reportes.aspx");
                    }
                    /*--LLENAR LOS CAMPOS CON LOS DATOS DEL PROVEEDOR SELECCIONADO--*/
                    else
                    {
                        txtIDReporte.Text = Request.QueryString["idReporte"].ToString();
                        Reporte myReporte = gestionReporte.consultarReporte(txtIDReporte.Text);
                        txtTipoReporte.Text = myReporte.TipoReporte;
                        txtFechaReporte.Text = myReporte.FechaReporte.ToString("dd/MM/yyyy");
                        txtDocumentoCliente.Text = myReporte.DocumentoCliente;
                        Cliente clienteReporte = gestionCliente.consultarCliente(txtDocumentoCliente.Text);
                        string nombre = clienteReporte.NombreCliente;
                        string apellido = clienteReporte.ApellidoCliente;
                        txtNombreCliente.Text = nombre + " " + apellido;
                        txtIDAsesor.Text = myReporte.IDEmpleado;
                        txtDescripcionReporte.Text = myReporte.DescripcionReporte;
                        txtDescripcionRespuesta.Text = myReporte.RespuestaReporte;
                    }
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

        
        protected void btnEliminarReporte_Click(object sender, EventArgs e)
        {
                if (gestionReporte.eliminarReporte(txtIDReporte.Text))
                {
                /*--MENSAJE DE ALERTA--*/
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Reporte eliminado!', text: 'El reporte fue eliminado correctamente del sistema', icon: 'success', type: 'success'}).then(function() {window.location = 'Reportes.aspx';});", true);
            }
                else
                {
                /*--MENSAJE DE ALERTA--*/
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo eliminar el reporte, inténtalo más tarde', icon: 'error', timer: 2500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
            }
        }

        protected void btnEditarReporte_Click(object sender, EventArgs e)
        {
            if (txtDescripcionRespuesta.Text == "")
            {
                txtDescripcionRespuesta.Text = "Null";
            }
            if (gestionReporte.EditarRespuestaReporte(txtIDReporte.Text, txtDescripcionRespuesta.Text))
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Actualizado!',text: 'Se agrego la respuesta correctamente' ,icon: 'success', type: 'success'}).then(function() {window.location = 'Reportes.aspx';});", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo agregar la respuesta al reporte, inténtalo más tarde', icon: 'error', timer: 2500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
            }
        }
    }
}