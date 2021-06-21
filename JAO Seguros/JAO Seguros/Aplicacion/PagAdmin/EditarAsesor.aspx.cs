using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace JAO_Seguros.Aplicacion.PagAdmin
{
    public partial class EditarAsesor : System.Web.UI.Page
    {
        /*--LLAMAR LAS CLASES DE GESTION NECESARIAS--*/
        GestionEmpleado gestionAsesores = new GestionEmpleado();
        GestionAdmin gestionAdmin = new GestionAdmin();
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
                    /*--REDIRECCIONAR SI NO EXISTE UN PROVEEDOR SELECCIONADO--*/
                    if (Request.QueryString["idAsesor"] == null)
                    {
                        Response.Redirect("Asesores.aspx");
                    }
                    /*--LLENAR LOS CAMPOS CON LOS DATOS DEL PROVEEDOR SELECCIONADO--*/
                    else
                    {
                        txtEditarIDA.Text = Request.QueryString["idAsesor"].ToString();
                        Empleado myEmpleado = gestionAsesores.consultarEmpleado(txtEditarIDA.Text);
                        txtEditarNombre.Text = myEmpleado.NombreEmpleado;
                        txtEditarApellido.Text = myEmpleado.ApellidoEmpleado;
                        txtEditarTel.Text = myEmpleado.TelefonoEmpleado;
                        listRolAsesor.Text = myEmpleado.RolEmpleado;
                        txtEditarIDAdAsesor.Text = myEmpleado.IDAdministrador;
                        /*--LLENAR LISTA DE ADMINISTRADORES PARA SELECCION--*/
                        List<Administrador> listaAdministrador = gestionAdmin.listadoIDAdmin();
                        ListItem i;
                        foreach (var item in listaAdministrador)
                        {
                            i = new ListItem(item.IDAdministrador);
                            listaAdmin.Items.Add(i);
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

        protected void btnEditarAsesor_Click(object sender, EventArgs e)
        {
            /*--VALIDAR SI EXISTE EL ID ADMIN--*/
            if (gestionAdmin.existeAdmin(txtEditarIDAdAsesor.Text))
            {
                /*--VALIDAR SI EXISTE EL ID EMPLEADO--*/
                if (!gestionAsesores.existeEmpleado(txtEditarIDA.Text))
                {
                    /*--CREAR OBJETO EMPLEADO--*/
                    Empleado myEmpleado = new Empleado();
                    myEmpleado.IDEmpleado = txtEditarIDA.Text;
                    myEmpleado.NombreEmpleado = txtEditarNombre.Text;
                    myEmpleado.ApellidoEmpleado = txtEditarApellido.Text;
                    myEmpleado.TelefonoEmpleado = txtEditarTel.Text;
                    myEmpleado.RolEmpleado = listRolAsesor.Text;
                    myEmpleado.IDAdministrador = txtEditarIDAdAsesor.Text;
                    /*--TRAER ID DONDE SE VA A ACTUALIZAR CON EL NUEVO OBJETO--*/
                    string idActual;
                    idActual = Request.QueryString["idAsesor"];
                    /*--VALIDAR SI EL EMPLEADO HA SIDO ACTUALIZADO EN LA BASE--*/
                    if (gestionAsesores.EditarEmpleado(myEmpleado, idActual))
                    {
                        /*--VALIDAR SI EL EMPLEADO HA SIDO ACTUALIZADO EN LA BASE DEL LOGIN--*/
                        if (gestionLogin.EditarLoginUser(txtEditarIDA.Text, idActual))
                        {
                            /*--MENSAJE DE ALERTA--*/
                            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Actualizado!', text: 'El Asesor se actualizo correctamente' ,icon: 'success', type: 'success'}).then(function() {window.location = 'Asesores.aspx';});", true);
                        }
                        else
                        {
                            /*--MENSAJE DE ALERTA--*/
                            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo actualizar el empleado, inténtalo más tarde', icon: 'error', timer: 2500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                        }
                    }
                    else
                    {
                        /*--MENSAJE DE ALERTA--*/
                        ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo actualizar el empleado, inténtalo más tarde', icon: 'error', timer: 2500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                    }
                    
                }
                /*--VALIDAR SI EL USUARIO VA A CAMBIAR EL ID DEL EMPLEADO--*/
                else if (txtEditarIDA.Text == Request.QueryString["idAsesor"].ToString())
                {
                    /*--CREAR OBJETO EMPLEADO--*/
                    Empleado myEmpleado = new Empleado();
                    myEmpleado.IDEmpleado = txtEditarIDA.Text;
                    myEmpleado.NombreEmpleado = txtEditarNombre.Text;
                    myEmpleado.ApellidoEmpleado = txtEditarApellido.Text;
                    myEmpleado.TelefonoEmpleado = txtEditarTel.Text;
                    myEmpleado.RolEmpleado = listRolAsesor.Text;
                    myEmpleado.IDAdministrador = txtEditarIDAdAsesor.Text;
                    /*--TRAER ID DONDE SE VA A ACTUALIZAR CON EL NUEVO OBJETO--*/
                    string idActual;
                    idActual = Request.QueryString["idAsesor"];
                    /*--VALIDAR SI EL EMPLEADO HA SIDO ACTUALIZADO EN LA BASE--*/
                    if (gestionAsesores.EditarEmpleado(myEmpleado, idActual))
                    {
                        /*--VALIDAR SI EL EMPLEADO HA SIDO ACTUALIZADO EN LA BASE DEL LOGIN--*/
                        if (gestionLogin.EditarLoginUser(txtEditarIDA.Text, idActual))
                        {
                            /*--MENSAJE DE ALERTA--*/
                            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Actualizado!', text: 'El Asesor se actualizo correctamente' ,icon: 'success', type: 'success'}).then(function() {window.location = 'Asesores.aspx';});", true);
                        }
                        else
                        {
                            /*--MENSAJE DE ALERTA--*/
                            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo actualizar el empleado, inténtalo más tarde', icon: 'error', timer: 2500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                        }
                    }
                    else
                    {
                        /*--MENSAJE DE ALERTA--*/
                        ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo actualizar el empleado, inténtalo más tarde', icon: 'error', timer: 2500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                    }
                }
                else
                {
                    /*--MENSAJE DE ALERTA--*/
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Verifica!',text: 'El ID del Asesor ya existe', icon: 'warning', timer: 3000,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                    txtEditarIDA.Focus();
                }
            }
            else
            {
                /*--MENSAJE DE ALERTA--*/
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Verifica!',text: 'El ID del Administrador no existe', icon: 'warning', timer: 3000,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                txtEditarIDAdAsesor.Focus();
            }
        }

        protected void listaAdmin_SelectedIndexChanged(object sender, EventArgs e)
        {
            /*--SELECCIONAR ID DE ADMINISTRADOR--*/
            txtEditarIDAdAsesor.Text = listaAdmin.SelectedItem.Value;
        }

        public void btnDeleteAsesor_Click(object sender, EventArgs e)
        {
            /*--TRAER ID SELECCIONADO--*/
            string idActual;
            idActual = Request.QueryString["idAsesor"];
            /*--VALIDAR SI EL EMPLEADO HA SIDO ELIMINADO--*/
            if (gestionAsesores.eliminarEmpleado(idActual))
            {
                /*--VALIDAR SI EL LOGIN DEL EMPLEADO HA SIDO ELIMINADO--*/
                if (gestionLogin.eliminarLogin(idActual))
                {
                    /*--MENSAJE DE ALERTA--*/
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Asesor eliminado!', text: 'El usuario fue eliminado correctamente del sistema', icon: 'success', type: 'success'}).then(function() {window.location = 'Asesores.aspx';});", true);
                }
                else
                {
                    /*--MENSAJE DE ALERTA--*/
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo eliminar el empleado, inténtalo más tarde', icon: 'error', timer: 2500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                }
            }
            else
            {
                /*--MENSAJE DE ALERTA--*/
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Asesor no eliminado!',text: 'Verifica que no tenga clientes a cargo y vuelve a intentarlo.', icon: 'warning', timer: 3000,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
            }
        }

        public void btnResetPassword_Click(object sender, EventArgs e)
        {
            /*--TRAER ID SELECCIONADO--*/
            string idActual;
            idActual = Request.QueryString["idAsesor"];
            /*--VALIDAR SI LA CONTRASEÑA DEL ASESOR SE RESTABLECIO--*/
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