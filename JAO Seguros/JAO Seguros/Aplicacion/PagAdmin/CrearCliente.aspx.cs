using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace JAO_Seguros.Aplicacion.PagAdmin
{
    public partial class CrearCliente : System.Web.UI.Page
    {
        /*--LLAMAR LAS CLASES DE GESTION NECESARIAS--*/
        GestionCliente gestion = new GestionCliente();
        GestionLogin gestionLogin = new GestionLogin();
        GestionEmpleado GestionEmpleado = new GestionEmpleado();

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
                    /*LLENAR LISTA EMPLEADO*/
                    List<Empleado> listaEmpleado = GestionEmpleado.listadoIDEmpleados();
                    ListItem i;
                    foreach (var item in listaEmpleado)
                    {
                        i = new ListItem(item.IDEmpleado);
                        listaAsesor.Items.Add(i);
                    }
                }
            }
        }

        protected void btnCrearCliente_Click(object sender, EventArgs e)
        {
            if (GestionEmpleado.existeEmpleado(txtCrearIDEmpleadoCliente.Text))
            {
                if (!gestion.existeCliente(txtNumDocumentoCliente.Text))
                {
                    Cliente nuevoCliente = new Cliente();
                    nuevoCliente.DocumentoCliente = txtNumDocumentoCliente.Text;
                    nuevoCliente.NombreCliente = txtNombreCliente.Text;
                    nuevoCliente.ApellidoCliente = txtApellidoCliente.Text;
                    nuevoCliente.DireccionResidenciaCliente = txtDireccionResidenciaCliente.Text;
                    if (txtTelefonoFijoCliente.Text == "")
                    {
                        nuevoCliente.TelefonoFijoCliente = "Null";
                    }
                    else
                    {
                        nuevoCliente.TelefonoFijoCliente = txtTelefonoFijoCliente.Text;
                    }
                    nuevoCliente.TelefonoCelularCliente = txtTelefonoCelularCliente.Text;
                    nuevoCliente.TipoDocumentoCliente = listTipoDocumento.Text;
                    nuevoCliente.FechaExpedicionDocumentoCliente = Convert.ToDateTime(txtFechaExpedicionCliente.Text);
                    nuevoCliente.GeneroCliente = listGeneroCliente.Text;
                    nuevoCliente.CiudadNacimientoCliente = listCiudadNacimientoCliente.Text;
                    if (txtDireccionTrabajoCliente.Text == "")
                    {
                        nuevoCliente.DireccionTrabajoCliente = "Null";
                    }
                    else
                    {
                        nuevoCliente.DireccionTrabajoCliente = txtDireccionTrabajoCliente.Text;
                    }
                    if (txtTelefonoTrabajoCliente.Text == "")
                    {
                        nuevoCliente.TelefonoTrabajoCliente = "Null";
                    }
                    else
                    {
                        nuevoCliente.TelefonoTrabajoCliente = txtTelefonoTrabajoCliente.Text;
                    }
                    nuevoCliente.EmpleoCliente = txtProfesionCliente.Text;
                    nuevoCliente.IDEmpleado = txtCrearIDEmpleadoCliente.Text;
                    Login nuevoLogin = new Login();
                    nuevoLogin.Usuario = txtNumDocumentoCliente.Text;
                    nuevoLogin.Clave = txtNumDocumentoCliente.Text;
                    string tipoUsuario = "Cliente";
                    if (gestion.InsertarCliente(nuevoCliente))
                    {
                        if (gestionLogin.InsertarLogin(nuevoLogin, tipoUsuario))
                        {
                            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Creado!', text: 'El Cliente se creo correctamente' ,icon: 'success', type: 'success'}).then(function() {window.location = 'BaseClientes.aspx';});", true);
                        }
                        else
                        {
                            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo crear el Cliente, inténtalo más tarde', icon: 'error', timer: 1500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                        }
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo crear el Cliente, inténtalo más tarde', icon: 'error', timer: 1500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                    }

                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Verifica!',text: 'El Número del Documento ya existe', icon: 'warning', timer: 2000,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                    txtNumDocumentoCliente.Focus();
                }

            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Verifica!',text: 'El ID del Asesor no existe', icon: 'warning', timer: 2000,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                txtCrearIDEmpleadoCliente.Focus();
            }
        }

        protected void btnCerrarSesion_ServerClick(object sender, EventArgs e)
        {
            /*ELIMINAR LA VARIABLE SESSION*/
            Session.Remove("UsuarioAdmin");
            /*REDIRECCIONAR A LA PÁGINA PRINCIPAL*/
            Response.Redirect("/Aplicacion/Ingresar.aspx");
        }

        protected void listaAsesor_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtCrearIDEmpleadoCliente.Text = listaAsesor.SelectedItem.Value;
        }
    }
}