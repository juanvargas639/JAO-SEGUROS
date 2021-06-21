using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace JAO_Seguros.Aplicacion.PagCliente
{
    public partial class Perfil : System.Web.UI.Page
    {
        /*--LLAMAR LAS CLASES DE GESTION NECESARIAS--*/
        GestionEmpleado gestionEmpleado = new GestionEmpleado();
        GestionLogin gestionLogin = new GestionLogin();
        GestionCliente gestionCliente = new GestionCliente();
        /*--------------------------------------*/
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
                    string IDClienteLogueado = "";
                    /*--TRAER DATOS DEL ADMINISTRADOR LOGUEADO--*/
                    IDClienteLogueado = Convert.ToString(Session["UsuarioCliente"]);
                    Cliente clienteUsuario = gestionCliente.consultarCliente(IDClienteLogueado);
                    lbNombreClienteUsuario.Text = clienteUsuario.NombreCliente;
                    lbApellidoClienteUsuario.Text = clienteUsuario.ApellidoCliente;
                    lbDocumentoClienteUsuario.Text = clienteUsuario.DocumentoCliente;
                    lbTipoDocumentoClienteUsuario.Text = clienteUsuario.TipoDocumentoCliente;
                    lbFechaExpClienteUsuario.Text = clienteUsuario.FechaExpedicionDocumentoCliente.ToString("dd/MM/yyyy");
                    lbCiudadNacimientoClienteUsuario.Text = clienteUsuario.CiudadNacimientoCliente;
                    lbDireccionResidenciaClienteUsuario.Text = clienteUsuario.DireccionResidenciaCliente;
                    if (clienteUsuario.TelefonoFijoCliente == "Null")
                    {
                        lbTelFijoClienteUsuario.Text = "No registrado";
                    } else
                    {
                        lbTelFijoClienteUsuario.Text = clienteUsuario.TelefonoFijoCliente;
                    }
                    lbGeneroClienteUsuario.Text = clienteUsuario.GeneroCliente;
                    lbTelCelularClienteUsuario.Text = clienteUsuario.TelefonoCelularCliente;
                    lbIDAsesorClienteUsuario.Text = clienteUsuario.IDEmpleado;
                    Empleado empleadoCliente = gestionEmpleado.consultarEmpleado(lbIDAsesorClienteUsuario.Text);
                    lbNombreAsesorClienteUsuario.Text = empleadoCliente.NombreEmpleado;
                    lbApellidoAsesorClienteUsuario.Text = empleadoCliente.ApellidoEmpleado;
                    /*--LLENAR TEXTBOX PERFIL--*/
                    txtdireccionResidencia.Text = clienteUsuario.DireccionResidenciaCliente;
                    txttelCelular.Text = clienteUsuario.TelefonoCelularCliente;
                    if (clienteUsuario.TelefonoFijoCliente == "Null")
                    {
                        txttelfijo.Text = "";
                    } else
                    {
                        txttelfijo.Text = clienteUsuario.TelefonoFijoCliente;
                    }
                    if (clienteUsuario.TelefonoTrabajoCliente == "Null")
                    {
                        txttelProfesion.Text = "";
                    }
                    else
                    {
                        txttelProfesion.Text = clienteUsuario.TelefonoTrabajoCliente;
                    }
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

        protected void btnEditarPerfil_Click(object sender, EventArgs e)
        {
            
            /*--ASIGNAR SI NO EXISTE--*/
            if (txttelProfesion.Text == "")
            {
                txttelProfesion.Text = "Null";
            }
            if (txttelfijo.Text == "")
            {
                txttelfijo.Text = "Null";
            }
            string IDClienteLogueado = "";
            IDClienteLogueado = Convert.ToString(Session["UsuarioCliente"]);
            /*-EDITAR DATOS CONTACTO CLIENTE-*/
            if (gestionCliente.EditarClienteContacto(txtdireccionResidencia.Text, txttelfijo.Text, txttelCelular.Text, txttelProfesion.Text, IDClienteLogueado))
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Perfil Actualizado!',text: 'Se actualizaron correctamente tus datos' ,icon: 'success', type: 'success'}).then(function() {window.location = 'Perfil.aspx';});", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo actualizar el perfil, inténtalo más tarde', icon: 'error', timer: 1500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
            }

        }

        protected void btnCambiarClave_Click(object sender, EventArgs e)
        {
            if (txtPassword1.Text == txtPassword2.Text)
            {
                /*--VALIDAR QUE LAS CONTRASEÑAS SEAN IGUALES--*/
                string IDClienteLogueado = Convert.ToString(Session["UsuarioCliente"]);
                if (gestionLogin.EditarLoginClavePerfil(IDClienteLogueado, txtPassword1.Text))
                {
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Contraseña Actualizada!',text: 'Se actualizo la contraseña correctamente' ,icon: 'success', type: 'success'}).then(function() {window.location = 'Perfil.aspx';});", true);
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo actualizar la contraseña, inténtalo más tarde', icon: 'error', timer: 1500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Verifica!',text: 'Las contraseñas deben coincidir', icon: 'warning', timer: 2000,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                txtPassword1.Text = "";
                txtPassword2.Text = "";
            }
        }
    }
}