using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace JAO_Seguros
{
    public class GestionLogin
    {
        /*--CREAR ATRIBUTOS DE LA CONEXIÓN A LA BASE DE DATOS--*/
        public SqlConnection ConexionLogin;
        public string Error;
        /*CONSTRUCTOR DE LA CLASE*/
        public GestionLogin()
        {
            this.ConexionLogin = ConexionSQL.getConexion();
        }
        /*CONSULTAR EL LOGIN DEL USUARIO*/
        public Login consultarUser(string Usuario)
        {
            string sql = ("select * from login where Usuario = @Usuario");
            SqlCommand cmd = new SqlCommand(sql, ConexionLogin);
            cmd.Parameters.AddWithValue("@Usuario", Usuario);
            SqlDataReader registro = cmd.ExecuteReader();
            if (registro.Read())
            {
                Login myLogin = new Login();
                myLogin.Usuario = registro.GetString(0);
                myLogin.Clave = registro.GetString(1);
                myLogin.Tipousuario = registro.GetString(2);
                registro.Close();
                return myLogin;
            }
            else
            {
                registro.Close();
                return null;
            }
        }

        /*MÉTODO PARA VALIDAR SI EXISTE EL USUARIO*/
        public Login existeUser(Login newLogin)
        {
            string sql = ("select * from login where Usuario = @Usuario and Clave = @Clave");
            SqlCommand cmd = new SqlCommand(sql, ConexionLogin);
            cmd.Parameters.AddWithValue("@Usuario", newLogin.Usuario);
            cmd.Parameters.AddWithValue("@Constraseña", newLogin.Clave);
            SqlDataReader registro = cmd.ExecuteReader();
            if (registro.Read())
            {
                Login myLogin = new Login();
                myLogin.Usuario = registro.GetString(0);
                myLogin.Clave = registro.GetString(1);
                myLogin.Tipousuario = registro.GetString(2);
                registro.Close();
                return myLogin;
            }
            else
            {
                registro.Close();
                return null;
            }
        }
        /*INSERTAR UN NUEVO LOGIN*/
        public Boolean InsertarLogin(Login myLogin, string tipoUsuario)
        {
            Boolean Estado = false;
            try
            {
                string sql = "insert into login (Usuario, Clave, TipoUsuario) values (@Usuario, @Clave, @TipoUsuario)";
                SqlCommand cmd = new SqlCommand(sql, ConexionLogin);
                cmd.Parameters.AddWithValue("@Usuario", myLogin.Usuario);
                cmd.Parameters.AddWithValue("@Clave", myLogin.Clave);
                cmd.Parameters.AddWithValue("@TipoUsuario", tipoUsuario);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {
                this.Error = exception.Message;
            }
            return Estado;
        }
        /*MÉTODO PARA EDITAR EL USUARIO DEL LOGIN*/
        public Boolean EditarLoginUser(string user, string logActual)
        {
            Boolean Estado = false;
            try
            {

                string sql = "update login set Usuario = @User where (Usuario = @logActual)";
                SqlCommand cmd = new SqlCommand(sql, ConexionLogin);
                cmd.Parameters.AddWithValue("@logActual", logActual);
                cmd.Parameters.AddWithValue("@User", user);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {
                this.Error = exception.Message;
            }
            return Estado;
        }
        /*MÉTODO PARA EDITAR EL USUARIO Y CONTRASEÑA DEL USUARIO*/
        public Boolean EditarLoginClavePerfil(string Usuario, string Clave)
        {
            Boolean Estado = false;
            try
            {

                string sql = "update login set Clave = @password where (Usuario = @Usuario)";
                SqlCommand cmd = new SqlCommand(sql, ConexionLogin);
                cmd.Parameters.AddWithValue("@Usuario", Usuario);
                cmd.Parameters.AddWithValue("@password", Clave);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {
                this.Error = exception.Message;
            }
            return Estado;
        }
        /*MÉTODO PARA RESTABLECER LA CONTRASEÑA DEL LOGIN*/
        public Boolean EditarLoginClave(string Usuario)
        {
            Boolean Estado = false;
            try
            {

                string sql = "update login set Clave = @password where (Usuario = @Usuario)";
                SqlCommand cmd = new SqlCommand(sql, ConexionLogin);
                cmd.Parameters.AddWithValue("@Usuario", Usuario);
                cmd.Parameters.AddWithValue("@password", Usuario);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {
                this.Error = exception.Message;
            }
            return Estado;
        }
        
        
        /*ELIMINAR EL LOGIN DEL USUARIO*/
        public Boolean eliminarLogin(string Usuario)
        {
            Boolean Estado = false;
            try
            {
                string sql = "delete from login where Usuario = @Usuario";
                SqlCommand cmd = new SqlCommand(sql, ConexionLogin);
                cmd.Parameters.AddWithValue("@Usuario", Usuario);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {

                this.Error = exception.Message;
            }

            return Estado;
        }
        

    }
}