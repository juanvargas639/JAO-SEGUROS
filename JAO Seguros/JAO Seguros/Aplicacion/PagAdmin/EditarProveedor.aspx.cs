using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace JAO_Seguros.Aplicacion.PagAdmin
{
    public partial class EditarProveedor : System.Web.UI.Page
    {
        GestionAseguradora gestionAseguradora = new GestionAseguradora();
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
                    if (Request.QueryString["nit"] == null)
                    {
                        Response.Redirect("Proveedores.aspx");
                    }
                    /*--LLENAR LOS CAMPOS CON LOS DATOS DEL PROVEEDOR SELECCIONADO--*/
                    else
                    {
                        txtEditarNit.Text = Request.QueryString["nit"].ToString();
                        Aseguradora myAseguradora = gestionAseguradora.consultarAseg(txtEditarNit.Text);
                        txtEditarNombre.Text = myAseguradora.NombreAseguradora;
                        txtEditarDireccion.Text = myAseguradora.DireccionAseguradora;
                        txtEditarTelefono.Text = myAseguradora.TelefonoAseguradora;
                        txtEditarCorreo.Text = myAseguradora.CorreoAseguradora;
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

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            /*--VALIDAR SI EXISTE EL PROVEEDOR--*/
            if (!gestionAseguradora.existeAseg(txtEditarNit.Text))
            {
                /*CREAR OBJETO ASEGURADORA*/
                Aseguradora myAseguradora = new Aseguradora();
                myAseguradora.NitAseguradora = txtEditarNit.Text;
                myAseguradora.NombreAseguradora = txtEditarNombre.Text;
                myAseguradora.DireccionAseguradora = txtEditarDireccion.Text;
                myAseguradora.TelefonoAseguradora = txtEditarTelefono.Text;
                myAseguradora.CorreoAseguradora = txtEditarCorreo.Text;
                string nitActual;
                nitActual = Request.QueryString["nit"];
                /*--VALIDAR SI EL PROVEEDOR HA SIDO ACTUALIZADO EN LA BASE--*/
                if (gestionAseguradora.EditarAseg(myAseguradora, nitActual))
                {
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Actualizado!', text: 'El Proveedor se actualizo correctamente' ,icon: 'success', type: 'success'}).then(function() {window.location = 'Proveedores.aspx';});", true);
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo actualizar el Proveedor, inténtalo más tarde', icon: 'error', timer: 2500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);

                }
                /*--VALIDAR SI EL USUARIO VA A CAMBIAR EL ID--*/
            }
            else if (txtEditarNit.Text == Request.QueryString["nit"].ToString())
            {
                /*CREAR OBJETO ASEGURADORA*/
                Aseguradora myAseguradora = new Aseguradora();
                myAseguradora.NitAseguradora = txtEditarNit.Text;
                myAseguradora.NombreAseguradora = txtEditarNombre.Text;
                myAseguradora.DireccionAseguradora = txtEditarDireccion.Text;
                myAseguradora.TelefonoAseguradora = txtEditarTelefono.Text;
                myAseguradora.CorreoAseguradora = txtEditarCorreo.Text;
                string nitActual;
                nitActual = Request.QueryString["nit"];
                /*--VALIDAR SI EL PROVEEDOR HA SIDO ACTUALIZADO EN LA BASE--*/
                if (gestionAseguradora.EditarAseg(myAseguradora, nitActual))
                {
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Actualizado!', text: 'El Proveedor se actualizo correctamente' ,icon: 'success', type: 'success'}).then(function() {window.location = 'Proveedores.aspx';});", true);
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo crear el Proveedor, inténtalo más tarde', icon: 'error', timer: 2500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Verifica!',text: 'El Nit. del Proveedor ingresado ya existe', icon: 'warning', timer: 3000,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                txtEditarNit.Focus();
            }
        }

        protected void btnDeleteProveedor_Click(object sender, EventArgs e)
        {
            /*--TRAER ID--*/
            string idProveedor;
            idProveedor = Request.QueryString["nit"];
            /*--VALIDAR SI SE ELIMINO LA ASEGURADORA-*/
            if (gestionAseguradora.eliminarAseg(idProveedor))
            {
                /*--MENSAJE DE ALERTA--*/
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Proveedor eliminado!', text: 'El proveedor fue eliminado correctamente del sistema', icon: 'success', type: 'success'}).then(function() {window.location = 'Proveedores.aspx';});", true);
            }
            else
            {
                /*--MENSAJE DE ALERTA--*/
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'El Proveedor no ha sido eliminado!',text: 'Verifica que no tenga pólizas relacionadas y vuelve a intentarlo.', icon: 'warning', timer: 2000,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
            }
        }
    }
}