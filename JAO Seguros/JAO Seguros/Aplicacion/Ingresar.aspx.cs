using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Data;

namespace JAO_Seguros.Aplicacion
{
    public partial class Ingresar1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void btnIngreso_Click(object sender, EventArgs e)
        { 
            SqlConnection ConexionPrincipal = new SqlConnection(@"Data Source=DESKTOP-J5CQ0QE\SQLEXPRESS;Initial Catalog=jaoseguros;User ID=juan;Password=7831155");
            ConexionPrincipal.Open();
            SqlCommand codigo = new SqlCommand();
            SqlConnection conectamos = new SqlConnection();
            codigo.Connection = ConexionPrincipal;
            codigo.CommandText = ("select * from login where Usuario = '" + txtUsuario.Text + "'and Clave = '" + txtClave.Text + "'");
            SqlDataReader leer = codigo.ExecuteReader();
            if (leer.Read())
            {
                Login myLogin = new Login();
                myLogin.Usuario = leer.GetString(0);
                myLogin.Clave = leer.GetString(1);
                myLogin.Tipousuario = leer.GetString(2);
                if (myLogin.Tipousuario == "Administrador")
                {
                    Response.Redirect("PagAdmin/DefaultAdmin.aspx?user=" + myLogin.Usuario);
                }
                else if (myLogin.Tipousuario == "Asesor")
                {
                    Response.Redirect("PagAsesor/DefaultAsesor.aspx?user=" + myLogin.Usuario);
                }
                else if (myLogin.Tipousuario == "Cliente")
                {
                    Response.Redirect("PagCliente/DefaultCliente.aspx?user=" + myLogin.Usuario);
                }

            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Usuario y/o Contraseña incorrectos!',text: 'Verifica los datos de ingreso', icon: 'warning', timer: 2500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);

            }
            ConexionPrincipal.Close();
        }
    }
}