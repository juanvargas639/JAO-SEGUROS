using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace JAO_Seguros.Aplicacion.PagAsesor
{
    public partial class Perfil1 : System.Web.UI.Page
    {
        /*--LLAMAR LAS CLASES DE GESTION NECESARIAS--*/
        GestionEmpleado gestionEmpleado = new GestionEmpleado();
        GestionLogin gestionLogin = new GestionLogin();
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
                    string IDAsesorLogueado = "";
                    /*--TRAER DATOS DEL ADMINISTRADOR LOGUEADO--*/
                    IDAsesorLogueado = Convert.ToString(Session["UsuarioAsesor"]);
                    Empleado EmpleadoUsuario = gestionEmpleado.consultarEmpleado(IDAsesorLogueado);
                    lbNombreAsesorPerfil.Text = EmpleadoUsuario.NombreEmpleado;
                    lbApellidoAsesorPerfil.Text = EmpleadoUsuario.ApellidoEmpleado;
                    lbIDAdminPerfilAsesor.Text = EmpleadoUsuario.IDAdministrador;
                    lbTelPerfilAsesor.Text = EmpleadoUsuario.TelefonoEmpleado;
                    lbRolPerfilAsesor.Text = EmpleadoUsuario.RolEmpleado;
                    lbIDPerfilAsesor.Text = EmpleadoUsuario.IDEmpleado;
                    /*--LLENAR TEXTBOX PERFIL--*/
                    txtIDAdminAsesor.Text = EmpleadoUsuario.IDAdministrador;
                    txtPerfilApellido.Text = EmpleadoUsuario.ApellidoEmpleado;
                    txtPerfilIDA.Text = EmpleadoUsuario.IDEmpleado;
                    txtPerfilNombre.Text = EmpleadoUsuario.NombreEmpleado;
                    txtRolAsesor.Text = EmpleadoUsuario.RolEmpleado;
                    txtPerfilTel.Text = EmpleadoUsuario.TelefonoEmpleado;
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

        protected void btnEditarPerfil_Click(object sender, EventArgs e)
        {
            /*--CREAR OBJETO EMPLEADO--*/
            Empleado myEmpleado = new Empleado();
            myEmpleado.IDEmpleado = txtPerfilIDA.Text;
            myEmpleado.NombreEmpleado = txtPerfilNombre.Text;
            myEmpleado.ApellidoEmpleado = txtPerfilApellido.Text;
            myEmpleado.TelefonoEmpleado = txtPerfilTel.Text;
            myEmpleado.RolEmpleado = txtRolAsesor.Text;
            myEmpleado.IDAdministrador = txtIDAdminAsesor.Text;
            string idActual;
            idActual = Convert.ToString(Session["UsuarioAsesor"]);
            /*--VALIDAR SI EL ADMINISTRADOR HA SIDO ACTUALIZADO EN LA BASE--*/
            if (gestionEmpleado.EditarEmpleado(myEmpleado, idActual))
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
                string IDAsesorLogueado = Convert.ToString(Session["UsuarioAsesor"]);
                if (gestionLogin.EditarLoginClavePerfil(IDAsesorLogueado, txtPassword1.Text))
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