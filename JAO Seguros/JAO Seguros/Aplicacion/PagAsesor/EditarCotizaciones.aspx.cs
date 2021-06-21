using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace JAO_Seguros.Aplicacion.PagAsesor
{
    public partial class EditarCotizaciones : System.Web.UI.Page
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
                        listEnviada.Text = myCotizacion.EnviadaCotizacion;
                    }
                }
            }
        }

        protected void btnEstadoCotizacion_Click(object sender, EventArgs e)
        {
            string asesor = Convert.ToString(Session["UsuarioAsesor"]);
            if (gestionCotizacion.editarCotizacion(txtIDCotizacion.Text, asesor, listEnviada.Text))
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Actualizado!', text: 'Estado de la cotización actualizada' ,icon: 'success', type: 'success'}).then(function() {window.location = 'Cotizaciones.aspx';});", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo actualizar la cotización, inténtalo más tarde', icon: 'error', timer: 1500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
            }
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