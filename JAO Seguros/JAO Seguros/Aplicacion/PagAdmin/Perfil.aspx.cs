using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace JAO_Seguros.Aplicacion.PagAdmin
{
    public partial class Perfil : System.Web.UI.Page
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
                else
                {
                    string IDAdminLogueado = "";
                    /*--TRAER DATOS DEL ADMINISTRADOR LOGUEADO--*/
                    IDAdminLogueado = Convert.ToString(Session["UsuarioAdmin"]);
                    Administrador AdministradorUsuario = gestionAdministradores.consultarAdmin(IDAdminLogueado);
                    lbNombreAdminUsuario.Text = AdministradorUsuario.NombreAdmin;
                    lbApellidoAdminUsuario.Text = AdministradorUsuario.ApellidoAdmin;
                    lbIDAdminUsuario.Text = AdministradorUsuario.IDAdministrador;
                    lbCorreoAdminUsuario.Text = AdministradorUsuario.CorreoAdmin;
                    lbTelAdminUsuario.Text = AdministradorUsuario.TelefonoAdmin;
                    lbRepresentanteAdminUsuario.Text = AdministradorUsuario.RepresentanteLegalAdmin;
                    /*--LLENAR TEXTBOX PERFIL--*/
                    txtIDAdmin.Text = AdministradorUsuario.IDAdministrador;
                    txtNombre.Text = AdministradorUsuario.NombreAdmin;
                    txtApellidoPerfil.Text = AdministradorUsuario.ApellidoAdmin;
                    txtCorreo.Text = AdministradorUsuario.CorreoAdmin;
                    txtRepresentante.Text = AdministradorUsuario.RepresentanteLegalAdmin;
                    txtTel.Text = AdministradorUsuario.TelefonoAdmin;
                    txtPassword1.Text = "";
                    txtPassword2.Text = "";

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

        protected void btnCambiarClave_Click(object sender, EventArgs e)
        {
            if (txtPassword1.Text == txtPassword2.Text)
            {
                /*--VALIDAR QUE LAS CONTRASEÑAS SEAN IGUALES--*/
                string IDAdminLogueado = Convert.ToString(Session["UsuarioAdmin"]);
                if (gestionLogin.EditarLoginClavePerfil(IDAdminLogueado, txtPassword1.Text))
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

        protected void btnEditarPerfil_Click(object sender, EventArgs e)
        {
            string IDAdminLogueado = Convert.ToString(Session["UsuarioAdmin"]);
            if (IDAdminLogueado == txtIDAdmin.Text)
            {
                /*--CREAR OBJETO ADMINISTRADOR--*/
                Administrador myAdministrador = new Administrador();
                myAdministrador.IDAdministrador = txtIDAdmin.Text;
                myAdministrador.NombreAdmin = txtNombre.Text;
                myAdministrador.ApellidoAdmin = txtApellidoPerfil.Text;
                myAdministrador.RepresentanteLegalAdmin = txtRepresentante.Text;
                myAdministrador.CorreoAdmin = txtCorreo.Text;
                myAdministrador.TelefonoAdmin = txtTel.Text;
                string idActual;
                idActual = Convert.ToString(Session["UsuarioAdmin"]);
                /*--VALIDAR SI EL ADMINISTRADOR HA SIDO ACTUALIZADO EN LA BASE--*/
                if (gestionAdministradores.EditarAdmin(myAdministrador, idActual))
                {
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Perfil Actualizado!',text: 'Se actualizaron correctamente tus datos' ,icon: 'success', type: 'success'}).then(function() {window.location = 'Perfil.aspx';});", true);
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo actualizar el perfil, inténtalo más tarde', icon: 'error', timer: 1500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                }
            }
            else if (gestionAdministradores.existeAdmin(txtIDAdmin.Text))
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Verifica!',text: 'El ID ingresado ya existe!', icon: 'warning', timer: 2000,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                txtIDAdmin.Focus();
            }
        }
    }
}