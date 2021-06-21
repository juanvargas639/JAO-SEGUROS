using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace JAO_Seguros.Aplicacion.PagAdmin
{
    public partial class CrearAsesor : System.Web.UI.Page
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
                    /*-LLENAR LIST CON ID ADMINISTRADORES-*/
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

        protected void btnCrearAsesor_Click(object sender, EventArgs e)
        {
            /*--VALIDAR SI EXISTE EL ADMIN--*/
            if (gestionAdmin.existeAdmin(txtCrearIDAdAsesor.Text))
            {
                /*--VALIDAR SI EXISTE EL EMPLEADO--*/
                if (!gestionAsesores.existeEmpleado(txtCrearIDA.Text))
                {
                    /*--CREAR OBJETO EMPLEADO--*/
                    Empleado nuevoEmpleado = new Empleado();
                    nuevoEmpleado.IDEmpleado = txtCrearIDA.Text;
                    nuevoEmpleado.NombreEmpleado = txtCrearNombre.Text;
                    nuevoEmpleado.ApellidoEmpleado = txtCrearApellido.Text;
                    nuevoEmpleado.TelefonoEmpleado = txtCrearTel.Text;
                    nuevoEmpleado.RolEmpleado = listRolAsesor.Text;
                    nuevoEmpleado.IDAdministrador = txtCrearIDAdAsesor.Text;
                    /*--CREAR OBJETO LOGIN--*/
                    Login nuevoLogin = new Login();
                    nuevoLogin.Usuario = txtCrearIDA.Text;
                    nuevoLogin.Clave = txtCrearIDA.Text;
                    string tipoUsuario = "Asesor";
                    /*--VALIDAR SI SE INSERTO EL EMPLEADO--*/
                    if (gestionAsesores.InsertarEmpleado(nuevoEmpleado))
                    {
                        /*--VALIDAR SI SE INSERTO EL LOGIN DEL EMPLEADO--*/
                        if (gestionLogin.InsertarLogin(nuevoLogin, tipoUsuario))
                        {
                            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Creado!', text: 'El Asesor se creo correctamente' ,icon: 'success', type: 'success'}).then(function() {window.location = 'Asesores.aspx';});", true);
                        }
                        else
                        {
                            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo crear el empleado, inténtalo más tarde', icon: 'error', timer: 1500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                        }
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo crear el Asesor, inténtalo más tarde', icon: 'error', timer: 1500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                    }
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Verifica!',text: 'El ID del Asesor ya existe', icon: 'warning', timer: 1500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                    txtCrearIDA.Focus();
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Verifica!',text: 'El ID del Administrador no existe', icon: 'warning', timer: 1500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
                txtCrearIDAdAsesor.Focus();
            }
        }

        protected void btnCerrarSesion_ServerClick(object sender, EventArgs e)
        {
            /*ELIMINAR LA VARIABLE SESSION*/
            Session.Remove("UsuarioAdmin");
            /*REDIRECCIONAR A LA PÁGINA PRINCIPAL*/
            Response.Redirect("/Aplicacion/Ingresar.aspx");
        }

        protected void listaAdmin_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtCrearIDAdAsesor.Text = listaAdmin.SelectedItem.Value;
        }
    }
}