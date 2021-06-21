using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace JAO_Seguros.Aplicacion.PagAsesor
{
    public partial class EditarCliente : System.Web.UI.Page
    {
        /*--LLAMAR LAS CLASES DE GESTIÓN NECESARIAS--*/
        GestionCliente gestion = new GestionCliente();
        GestionLogin gestionLogin = new GestionLogin();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UsuarioAsesor"] == null)
                {
                    Response.Redirect("/Aplicacion/Ingresar.aspx");
                }
                else
                {
                    if (Request.QueryString["DocCliente"] == null)
                    {
                        Response.Redirect("BaseClientesAsesor.aspx");
                    }
                    else
                    {
                        /*--LLENAR CAMPOS DEL CLIENTE TRAÍDO--*/
                        txtEditarNumDocumentoCliente.Text = Request.QueryString["DocCliente"].ToString();
                        Cliente myCliente = gestion.consultarCliente(txtEditarNumDocumentoCliente.Text);
                        txtEditarNombreCliente.Text = myCliente.NombreCliente;
                        txtEditarApellidoCliente.Text = myCliente.ApellidoCliente;
                        txtEditarDireccionResidenciaCliente.Text = myCliente.DireccionResidenciaCliente;
                        if (myCliente.TelefonoFijoCliente == "Null")
                        {
                            txtEditarTelefonoFijoCliente.Text = "";
                        }
                        else
                        {
                            txtEditarTelefonoFijoCliente.Text = myCliente.TelefonoFijoCliente;
                        }

                        txtEditarTelefonoCelularCliente.Text = myCliente.TelefonoCelularCliente;
                        listEditarTipoDocumento.Text = myCliente.TipoDocumentoCliente;
                        txtEditarFechaExpedicionCliente.Text = myCliente.FechaExpedicionDocumentoCliente.ToString("dd/MM/yyyy");
                        listEditarGeneroCliente.Text = myCliente.GeneroCliente;
                        listEditarCiudadNacimientoCliente.Text = myCliente.CiudadNacimientoCliente;
                        if (myCliente.DireccionTrabajoCliente == "Null")
                        {
                            txtEditarDireccionTrabajoCliente.Text = "";
                        }
                        else
                        {
                            txtEditarDireccionTrabajoCliente.Text = myCliente.DireccionTrabajoCliente;
                        }
                        if (myCliente.TelefonoTrabajoCliente == "Null")
                        {
                            txtEditarTelefonoTrabajoCliente.Text = "";
                        }
                        else
                        {
                            txtEditarTelefonoTrabajoCliente.Text = myCliente.TelefonoTrabajoCliente;
                        }
                        txtEditarProfesionCliente.Text = myCliente.EmpleoCliente;
                    }
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

        protected void btnEditarCliente_Click(object sender, EventArgs e)
        {
            if (!gestion.existeCliente(txtEditarNumDocumentoCliente.Text))
            {
                /*--CREAR EL OBJETO CLIENTE--*/
                Cliente nuevoCliente = new Cliente();
                nuevoCliente.DocumentoCliente = txtEditarNumDocumentoCliente.Text;
                nuevoCliente.NombreCliente = txtEditarNombreCliente.Text;
                nuevoCliente.ApellidoCliente = txtEditarApellidoCliente.Text;
                nuevoCliente.DireccionResidenciaCliente = txtEditarDireccionResidenciaCliente.Text;
                if (txtEditarTelefonoFijoCliente.Text == "")
                {
                    nuevoCliente.TelefonoFijoCliente = "Null";
                }
                else
                {
                    nuevoCliente.TelefonoFijoCliente = txtEditarTelefonoFijoCliente.Text;
                }
                nuevoCliente.TelefonoCelularCliente = txtEditarTelefonoCelularCliente.Text;
                nuevoCliente.TipoDocumentoCliente = listEditarTipoDocumento.Text;
                nuevoCliente.FechaExpedicionDocumentoCliente = Convert.ToDateTime(txtEditarFechaExpedicionCliente.Text);
                nuevoCliente.GeneroCliente = listEditarGeneroCliente.Text;
                nuevoCliente.CiudadNacimientoCliente = listEditarCiudadNacimientoCliente.Text;
                if (txtEditarDireccionTrabajoCliente.Text == "")
                {
                    nuevoCliente.DireccionTrabajoCliente = "Null";
                }
                else
                {
                    nuevoCliente.DireccionTrabajoCliente = txtEditarDireccionTrabajoCliente.Text;
                }
                if (txtEditarTelefonoTrabajoCliente.Text == "")
                {
                    nuevoCliente.TelefonoTrabajoCliente = "Null";
                }
                else
                {
                    nuevoCliente.TelefonoTrabajoCliente = txtEditarTelefonoTrabajoCliente.Text;
                }
                nuevoCliente.EmpleoCliente = txtEditarProfesionCliente.Text;
                string idActual;
                idActual = Request.QueryString["DocCliente"];
                if (gestion.EditarClienteAsesor(nuevoCliente, idActual))
                {
                    if (gestionLogin.EditarLoginUser(txtEditarNumDocumentoCliente.Text, idActual))
                    {
                        ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Actualizado!', text: 'El Cliente se actualizo correctamente' ,icon: 'success', type: 'success'}).then(function() {window.location = 'BaseClientesAsesor.aspx';});", true);
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo actualizar el Cliente, inténtalo más tarde', icon: 'error', timer: 2500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                    }
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo actualizar el Cliente, inténtalo más tarde', icon: 'error', timer: 2500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                }

            }
            else if (txtEditarNumDocumentoCliente.Text == Request.QueryString["DocCliente"].ToString())
            {
                /*--CREAR EL OBJETO CLIENTE--*/
                Cliente nuevoCliente = new Cliente();
                nuevoCliente.DocumentoCliente = txtEditarNumDocumentoCliente.Text;
                nuevoCliente.NombreCliente = txtEditarNombreCliente.Text;
                nuevoCliente.ApellidoCliente = txtEditarApellidoCliente.Text;
                nuevoCliente.DireccionResidenciaCliente = txtEditarDireccionResidenciaCliente.Text;
                if (txtEditarTelefonoFijoCliente.Text == "")
                {
                    nuevoCliente.TelefonoFijoCliente = "Null";
                }
                else
                {
                    nuevoCliente.TelefonoFijoCliente = txtEditarTelefonoFijoCliente.Text;
                }
                nuevoCliente.TelefonoCelularCliente = txtEditarTelefonoCelularCliente.Text;
                nuevoCliente.TipoDocumentoCliente = listEditarTipoDocumento.Text;
                nuevoCliente.FechaExpedicionDocumentoCliente = Convert.ToDateTime(txtEditarFechaExpedicionCliente.Text);
                nuevoCliente.GeneroCliente = listEditarGeneroCliente.Text;
                nuevoCliente.CiudadNacimientoCliente = listEditarCiudadNacimientoCliente.Text;
                if (txtEditarDireccionTrabajoCliente.Text == "")
                {
                    nuevoCliente.DireccionTrabajoCliente = "Null";
                }
                else
                {
                    nuevoCliente.DireccionTrabajoCliente = txtEditarDireccionTrabajoCliente.Text;
                }
                if (txtEditarTelefonoTrabajoCliente.Text == "")
                {
                    nuevoCliente.TelefonoTrabajoCliente = "Null";
                }
                else
                {
                    nuevoCliente.TelefonoTrabajoCliente = txtEditarTelefonoTrabajoCliente.Text;
                }
                nuevoCliente.EmpleoCliente = txtEditarProfesionCliente.Text;
                string idActual;
                idActual = Request.QueryString["DocCliente"];
                if (gestion.EditarClienteAsesor(nuevoCliente, idActual))
                {
                    if (gestionLogin.EditarLoginUser(txtEditarNumDocumentoCliente.Text, idActual))
                    {
                        ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Actualizado!', text: 'El Cliente se actualizo correctamente' ,icon: 'success', type: 'success'}).then(function() {window.location = 'BaseClientesAsesor.aspx';});", true);
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo actualizar el Cliente, inténtalo más tarde', icon: 'error', timer: 2500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                    }
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo actualizar el Cliente, inténtalo más tarde', icon: 'error', timer: 2500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Verifica!',text: 'El Número del Documento ya existe', icon: 'warning', timer: 2000,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                txtEditarNumDocumentoCliente.Focus();
            }
        }

        protected void btnResetPassword_Click(object sender, EventArgs e)
        {
            /*--TRAER ID--*/
            string idActual = txtEditarNumDocumentoCliente.Text;
            if (gestionLogin.EditarLoginClave(idActual))
            {
                /*--MENSAJE DE ALERTA--*/
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Contraseña restablecida!', text: 'Notifica al usuario el cambio', icon: 'success', timer: 3000,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
            }
            else
            {
                /*--MENSAJE DE ALERTA--*/
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo restablecer la contraseña, inténtalo más tarde', icon: 'error', timer: 2500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
            }
        }

        protected void btnDeleteCliente_Click(object sender, EventArgs e)
        {
            /*--TRAER ID--*/
            string idActual;
            idActual = Request.QueryString["DocCliente"].ToString();
            if (gestion.eliminarCliente(idActual))
            {
                if (gestionLogin.eliminarLogin(idActual))
                {
                    /*--MENSAJE DE ALERTA--*/
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Cliente eliminado!', text: 'El usuario fue eliminado correctamente del sistema', icon: 'success', type: 'success'}).then(function() {window.location = 'BaseClientesAsesor.aspx';});", true);
                }
                else
                {
                    /*--MENSAJE DE ALERTA--*/
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo eliminar el Cliente, inténtalo más tarde', icon: 'error', timer: 2500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                }
            }
            else
            {
                /*--MENSAJE DE ALERTA--*/
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo eliminar el Cliente, inténtalo más tarde', icon: 'error', timer: 2500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
            }
        }
    }
}