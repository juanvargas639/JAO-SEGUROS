using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace JAO_Seguros.Aplicacion.PagAdmin
{
    public partial class EditarCotizaciones : System.Web.UI.Page
    {
        GestionCotizacion gestionCotizacion = new GestionCotizacion();
        GestionEmpleado gestionEmpleado = new GestionEmpleado();

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
                    if (Request.QueryString["idCotizacion"] == null)
                    {
                        Response.Redirect("Cotizaciones.aspx");
                    }
                    /*--LLENAR LOS CAMPOS CON LOS DATOS DEL PROVEEDOR SELECCIONADO--*/
                    else
                    {
                        txtIDCotizacion.Text = Request.QueryString["idCotizacion"].ToString();
                        Cotizacion myCotizacion = gestionCotizacion.consultarCotizacion(txtIDCotizacion.Text);
                        txtNombreCotizacion.Text = myCotizacion.NombreProspecto;
                        txtApellidoCotizacion.Text = myCotizacion.ApellidoProspecto;
                        txtRespuestaReporte.Text = myCotizacion.DescripcionCotizacion;
                        txtRamoCotizacion.Text = myCotizacion.RamoCotizacion;
                        txtCorreo.Text = myCotizacion.CorreoProspecto;
                        txtFechaCotizacion.Text = myCotizacion.FechaCotizacion.ToString("dd/MM/yyyy");
                        txtEnviada.Text = myCotizacion.EnviadaCotizacion;
                        if (txtEnviada.Text == "Verdadero")
                        {
                            Cotizacion myCotizacionAsesor = gestionCotizacion.consultarCotizacionAsesor(txtIDCotizacion.Text);
                            txtIDAsesor.Text = myCotizacionAsesor.NombreProspecto;
                            Empleado myEmpleadoCotizacion = gestionEmpleado.consultarEmpleado(txtIDAsesor.Text);
                            string nombre = myEmpleadoCotizacion.NombreEmpleado;
                            string apellido = myEmpleadoCotizacion.ApellidoEmpleado;
                            txtNombreAsesor.Text = nombre + " " + apellido;
                            PanelAsesor.Visible = true;
                        }
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


        protected void btnEliminarCotizacion_Click(object sender, EventArgs e)
        {
            if (gestionCotizacion.eliminarCotizacion(txtIDCotizacion.Text))
            {
                /*--MENSAJE DE ALERTA--*/
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Cotizacion eliminada!', text: 'La cotización fue eliminada correctamente del sistema', icon: 'success', type: 'success'}).then(function() {window.location = 'Cotizaciones.aspx';});", true);
            }
            else
            {
                /*--MENSAJE DE ALERTA--*/
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'La cotización no ha sido eliminada, inténtalo más tarde', icon: 'error', timer: 2500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
            }
        }
    }
}