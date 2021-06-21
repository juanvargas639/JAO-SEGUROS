using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace JAO_Seguros.Aplicacion.PagAdmin
{
    public partial class EditarAdmin : System.Web.UI.Page
    {
        /*--LLAMAR LAS CLASES DE GESTIÓN NECESARIAS--*/
        GestionAdmin gestion = new GestionAdmin();
        GestionLogin gestionLogin = new GestionLogin();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                /*--RESTRINGIR AL USUARIO SI ACCEDE A LA PÁGINA SIN LOGUEO--*/
                if (Session["UsuarioAdmin"] == null)
                {
                    Response.Redirect("/Aplicacion/Ingresar.aspx");
                } else
                {
                    if (Request.QueryString["idAdmin"] == null)
                    {
                        Response.Redirect("Administradores.aspx");
                    }
                    else
                    {
                        /*--LLENAR LOS CAMPOS CON LOS DATOS DEL ADMIN SELECCIONADO--*/
                        txtEditarID.Text = Request.QueryString["idAdmin"].ToString();
                        Administrador myAdministrador = gestion.consultarAdmin(txtEditarID.Text);
                        string idAnterior = myAdministrador.IDAdministrador;
                        txtEditarNombreAdmin.Text = myAdministrador.NombreAdmin;
                        txtEditarApellidoAdmin.Text = myAdministrador.ApellidoAdmin;
                        txtEditarRepresentante.Text = myAdministrador.RepresentanteLegalAdmin;
                        txtEditarCorreoAdmin.Text = myAdministrador.CorreoAdmin;
                        txtEditarTelAdmin.Text = myAdministrador.TelefonoAdmin;
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

        protected void btnEditarAdministrador_Click(object sender, EventArgs e)
        {
            /*--VALIDAR SI EXISTE EL ADMINISTRADOR--*/
            if (!gestion.existeAdmin(txtEditarID.Text))
            {
                /*--CREAR OBJETO ADMINISTRADOR--*/
                Administrador myAdministrador = new Administrador();
                myAdministrador.IDAdministrador = txtEditarID.Text;
                myAdministrador.NombreAdmin = txtEditarNombreAdmin.Text;
                myAdministrador.ApellidoAdmin = txtEditarApellidoAdmin.Text;
                myAdministrador.RepresentanteLegalAdmin = txtEditarRepresentante.Text;
                myAdministrador.CorreoAdmin = txtEditarCorreoAdmin.Text;
                myAdministrador.TelefonoAdmin = txtEditarTelAdmin.Text;
                /*--TRAER ID SELECCIONADO--*/
                string idActual;
                idActual = Request.QueryString["idAdmin"];
                /*--VALIDAR SI EL ADMINISTRADOR HA SIDO ACTUALIZADO EN LA BASE--*/
                if (gestion.EditarAdmin(myAdministrador, idActual))
                {
                    /*--VALIDAR SI EL ID DEL ADMINISTRADOR HA SIDO ACTUALIZADO EN LA BASE DEL LOGIN--*/
                    if (gestionLogin.EditarLoginUser(txtEditarID.Text, idActual))
                    {
                        /*--MENSAJE DE ALERTA--*/
                        ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Actualizado!', text: 'El Administrador se actualizo correctamente' ,icon: 'success', type: 'success'}).then(function() {window.location = 'Administradores.aspx';});", true);
                    }
                    else
                    {
                        /*--MENSAJE DE ALERTA--*/
                        ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo actualizar el Administrador, inténtalo más tarde', icon: 'error', timer: 2500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                    }
                }
                else
                {
                    /*--MENSAJE DE ALERTA--*/
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo actualizar el Administrador, inténtalo más tarde', icon: 'error', timer: 2500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                }
            }
            /*--VALIDAR SI EL USUARIO VA A CAMBIAR EL ID--*/
            else if (txtEditarID.Text == Request.QueryString["idAdmin"].ToString())
            {
                /*--CREAR OBJETO ADMINISTRADOR--*/
                Administrador myAdministrador = new Administrador();
                myAdministrador.IDAdministrador = txtEditarID.Text;
                myAdministrador.NombreAdmin = txtEditarNombreAdmin.Text;
                myAdministrador.ApellidoAdmin = txtEditarApellidoAdmin.Text;
                myAdministrador.RepresentanteLegalAdmin = txtEditarRepresentante.Text;
                myAdministrador.CorreoAdmin = txtEditarCorreoAdmin.Text;
                myAdministrador.TelefonoAdmin = txtEditarTelAdmin.Text;
                /*--TRAER ID SELECCIONADO--*/
                string idActual;
                idActual = Request.QueryString["idAdmin"];
                /*--VALIDAR SI EL ADMINISTRADOR HA SIDO ACTUALIZADO EN LA BASE--*/
                if (gestion.EditarAdmin(myAdministrador, idActual))
                {
                    /*--VALIDAR SI EL ID DEL ADMINISTRADOR HA SIDO ACTUALIZADO EN LA BASE DEL LOGIN--*/
                    if (gestionLogin.EditarLoginUser(txtEditarID.Text, idActual))
                    {
                        /*--MENSAJE DE ALERTA--*/
                        ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Actualizado!', text: 'El Administrador se actualizo correctamente' ,icon: 'success', type: 'success'}).then(function() {window.location = 'Administradores.aspx';});", true);
                    }
                    else
                    {
                        /*--MENSAJE DE ALERTA--*/
                        ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo actualizar el administrador, inténtalo más tarde', icon: 'error', timer: 2500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                    }
                }
                else
                {
                    /*--MENSAJE DE ALERTA--*/
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo actualizar el administrador, inténtalo más tarde', icon: 'error', timer: 2500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                }
            }
            else
            {
                /*--MENSAJE DE ALERTA--*/
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Verifica!',text: 'El ID del administrador ingresado ya existe', icon: 'warning', timer: 2000,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                txtEditarID.Focus();
            }
        }

        protected void btnDeleteAdmin_Click(object sender, EventArgs e)
        {
            /*--TRAER ID SELECCIONADO--*/
            string idActual;
            idActual = Request.QueryString["idAdmin"];
            /*--VALIDAR SI EL ADMINISTRADOR HA SIDO ELIMINADO--*/
            if (gestion.eliminarAdmin(idActual))
            {
                /*--VALIDAR SI EL LOGIN DEL EMPLEADO HA SIDO ELIMINADO--*/
                if (gestionLogin.eliminarLogin(idActual))
                {
                    /*--MENSAJE DE ALERTA--*/
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Administrador eliminado!', text: 'El usuario fue eliminado correctamente del sistema', icon: 'success', type: 'success'}).then(function() {window.location = 'Administradores.aspx';});", true);
                }
                else
                {
                    /*--MENSAJE DE ALERTA--*/
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo eliminar el Administrador, inténtalo más tarde', icon: 'error', timer: 2500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                }
            }
            else
            {
                /*--MENSAJE DE ALERTA--*/
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'El Administrador no fue eliminado!',text: 'Verifica que no tenga asesores a cargo y vuelve a intentarlo.', icon: 'warning', timer: 3000,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
            }
        }

        protected void btnResetPassword_Click(object sender, EventArgs e)
        {
            /*--TRAER ID SELECCIONADO--*/
            string idActual;
            idActual = Request.QueryString["idAdmin"];
            /*--VALIDAR SI LA CONTRASEÑA DEL ADMINISTRADOR SE RESTABLECIO--*/
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
    }
}