using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace JAO_Seguros.Aplicacion.PagAdmin
{
    public partial class CrearAdmin : System.Web.UI.Page
    {
        /*--LLAMAR LAS CLASES DE GESTION NECESARIAS--*/
        GestionAdmin gestionAdministradores = new GestionAdmin();
        GestionLogin gestionLogin = new GestionLogin();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                /*--RESTRINGIR AL USUARIO SI ACCEDE A LA PÁGINA SIN LOGUEO--*/
                if (Session["UsuarioAdmin"] == null)
                {
                    Response.Redirect("/Aplicacion/Ingresar.aspx");
                }
            }
        }

        protected void btnCrearAdministrador_Click(object sender, EventArgs e)
        {
            /*--VALIDAR SI EXISTE EL ADMINISTRADOR--*/
            if (!gestionAdministradores.existeAdmin(txtCrearID.Text))
            {
                /*--CREAR OBJETO ADMINISTRADOR--*/
                Administrador nuevoAdministrador = new Administrador();
                nuevoAdministrador.IDAdministrador = txtCrearID.Text;
                nuevoAdministrador.NombreAdmin = txtCrearNombreAdmin.Text;
                nuevoAdministrador.ApellidoAdmin = txtCrearApellidoAdmin.Text;
                nuevoAdministrador.RepresentanteLegalAdmin = txtCrearRepresentante.Text;
                nuevoAdministrador.CorreoAdmin = txtCrearCorreoAdmin.Text;
                nuevoAdministrador.TelefonoAdmin = txtCrearTelAdmin.Text;
                Login nuevoLogin = new Login();
                nuevoLogin.Usuario = txtCrearID.Text;
                nuevoLogin.Clave = txtCrearID.Text;
                string tipoUsuario = "Administrador";
                /*--VALIDAR SI EL ADMINISTRADOR HA SIDO INSERTADO EN LA BASE--*/
                if (gestionAdministradores.InsertarAdmin(nuevoAdministrador))
                {
                    if (gestionLogin.InsertarLogin(nuevoLogin, tipoUsuario))
                    {
                        ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Creado!', text: 'El Administrador se creo correctamente' ,icon: 'success', type: 'success'}).then(function() {window.location = 'Administradores.aspx';});", true);
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo crear el Administrador, inténtalo más tarde', icon: 'error', timer: 1500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                    }
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo crear el Administrador, inténtalo más tarde', icon: 'error', timer: 1500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                }
            }
            else
            {
                
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Verifica!',text: 'El ID del Administrador ya existe', icon: 'warning', timer: 2000,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                txtCrearID.Focus();
                

            }
        }

        protected void btnCerrarSesion_ServerClick(object sender, EventArgs e)
        {
            /*ELIMINAR LA VARIABLE SESSION*/
            Session.Remove("UsuarioAdmin");
            /*REDIRECCIONAR A LA PÁGINA PRINCIPAL*/
            Response.Redirect("/Aplicacion/Ingresar.aspx");
        }
    }
}