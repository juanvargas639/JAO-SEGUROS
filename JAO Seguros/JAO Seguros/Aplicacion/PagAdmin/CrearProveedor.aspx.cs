using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace JAO_Seguros.Aplicacion.PagAdmin
{
    public partial class CrearProveedor : System.Web.UI.Page
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
            }
        }

        protected void btnCerrarSesion_ServerClick(object sender, EventArgs e)
        {
            /*ELIMINAR LA VARIABLE SESSION*/
            Session.Remove("UsuarioAdmin");
            /*REDIRECCIONAR A LA PÁGINA PRINCIPAL*/
            Response.Redirect("/Aplicacion/Ingresar.aspx");
        }

        protected void btnCrear_Click(object sender, EventArgs e)
        {
            if (!gestionAseguradora.existeAseg(txtCrearNit.Text))
            {
                Aseguradora nuevaAseguradora = new Aseguradora();
                nuevaAseguradora.NitAseguradora = txtCrearNit.Text;
                nuevaAseguradora.NombreAseguradora = txtCrearNombre.Text;
                nuevaAseguradora.DireccionAseguradora = txtCrearDireccion.Text;
                nuevaAseguradora.TelefonoAseguradora = txtCrearTelefono.Text;
                nuevaAseguradora.CorreoAseguradora = txtCrearCorreo.Text;
                if (gestionAseguradora.InsertarAseg(nuevaAseguradora))
                {
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Creado!', text: 'El Proveedor se creo correctamente' ,icon: 'success', type: 'success'}).then(function() {window.location = 'Proveedores.aspx';});", true);
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo crear el Proveedor, inténtalo más tarde', icon: 'error', timer: 1500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                }

            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Verifica!',text: 'El Nit. del Proveedor ingresado ya existe', icon: 'warning', timer: 2000,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                txtCrearNit.Focus();
            }
        }
    }
}