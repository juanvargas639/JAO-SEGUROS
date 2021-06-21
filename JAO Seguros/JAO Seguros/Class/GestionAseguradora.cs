using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace JAO_Seguros
{
    public class GestionAseguradora
    {
        /*--CREAR ATRIBUTOS DE LA CONEXIÓN A LA BASE DE DATOS--*/
        public SqlConnection ConexionAseguradora;
        public string Error;
        /*--CONSTRUCTOR DE LA CLASE--*/
        public GestionAseguradora()
        {
            this.ConexionAseguradora = ConexionSQL.getConexion();
        }
        /*--MÉTODO PARA CONSULTAR ASEGURADORA MEDIANTE NIT--*/
        public Aseguradora consultarAseg(string NitAseguradora)
        {
            string sql = "select * from aseguradora where NitAseguradora = @NitAseguradora";
            SqlCommand cmd = new SqlCommand(sql, ConexionAseguradora);
            cmd.Parameters.AddWithValue("@NitAseguradora", NitAseguradora);
            SqlDataReader registro = cmd.ExecuteReader();
            if (registro.Read())
            {
                Aseguradora myAseguradora = new Aseguradora();
                myAseguradora.NitAseguradora = registro.GetString(0);
                myAseguradora.NombreAseguradora = registro.GetString(1);
                myAseguradora.DireccionAseguradora = registro.GetString(2);
                myAseguradora.TelefonoAseguradora = registro.GetString(3);
                myAseguradora.CorreoAseguradora = registro.GetString(4);
                registro.Close();
                return myAseguradora;
            }
            else
            {
                registro.Close();
                return null;
            }
        }

        /*MÉTODO PARA LISTAR LAS ASEGURADORAS ACTUALES*/
        public List<Aseguradora> listadoAseguradora()
        {
            List<Aseguradora> listadoAseguradora = new List<Aseguradora>();
            string sql = "select * from aseguradora";
            SqlCommand cmd = new SqlCommand(sql, ConexionAseguradora);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                Aseguradora aseguradorasActuales = new Aseguradora();
                aseguradorasActuales.NitAseguradora = registro.GetString(0);
                aseguradorasActuales.NombreAseguradora = registro.GetString(1);
                aseguradorasActuales.DireccionAseguradora = registro.GetString(2);
                aseguradorasActuales.TelefonoAseguradora = registro.GetString(3);
                aseguradorasActuales.CorreoAseguradora = registro.GetString(4);

                listadoAseguradora.Add(aseguradorasActuales);
            }
            registro.Close();
            return listadoAseguradora;

        }
        /*MÉTODO PARA CONSULTAR NIT DE LAS ASEGURADORAS PARA DROPDOWNLIST*/
        public List<Aseguradora> listadoNitAseguradoras()
        {
            List<Aseguradora> listadoNitAseguradoras = new List<Aseguradora>();
            string sql = "select NitAseguradora from aseguradora";
            SqlCommand cmd = new SqlCommand(sql, ConexionAseguradora);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                Aseguradora NitaseguradorasActuales = new Aseguradora();
                NitaseguradorasActuales.NitAseguradora = registro.GetString(0);

                listadoNitAseguradoras.Add(NitaseguradorasActuales);
            }
            registro.Close();
            return listadoNitAseguradoras;

        }
        /*MÉTODO PARA VALIDAR SI EXISTE LA ASEGURADORA*/
        public Boolean existeAseg(string NitAseguradora)
        {
            string sql = ("Select * from aseguradora where NitAseguradora = @NitAseguradora");
            SqlCommand cmd = new SqlCommand(sql, ConexionAseguradora);
            cmd.Parameters.AddWithValue("@NitAseguradora", NitAseguradora);
            SqlDataReader registro = cmd.ExecuteReader();
            if (registro.Read())
            {
                registro.Close();
                return true;
            }
            else
            {
                registro.Close();
                return false;
            }
        }
        /*MÉTODO PARA INSERTAR UNA NUEVA ASEGURADORA*/
        public Boolean InsertarAseg(Aseguradora Myaseguradora)
        {
            Boolean Estado = false;
            try
            {
                string sql = "insert into aseguradora (NitAseguradora, NombreAseguradora, DireccionAseguradora, TelefonoAseguradora, CorreoAseguradora) values (@NitAseguradora, @NombreAseguradora, @DireccionAseguradora, @TelefonoAseguradora, @CorreoAseguradora)";
                SqlCommand cmd = new SqlCommand(sql, ConexionAseguradora);
                cmd.Parameters.AddWithValue("@NitAseguradora", Myaseguradora.NitAseguradora);
                cmd.Parameters.AddWithValue("@NombreAseguradora", Myaseguradora.NombreAseguradora);
                cmd.Parameters.AddWithValue("@DireccionAseguradora", Myaseguradora.DireccionAseguradora);
                cmd.Parameters.AddWithValue("@TelefonoAseguradora", Myaseguradora.TelefonoAseguradora);
                cmd.Parameters.AddWithValue("@CorreoAseguradora", Myaseguradora.CorreoAseguradora);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {
                this.Error = exception.Message;
            }
            return Estado;
        }
        /*MÉTODO PARA EDITAR ASEGURADORA*/
        public Boolean EditarAseg(Aseguradora Myaseguradora, string nitActual)
        {
            Boolean Estado = false;
            try
            {

                string sql = "update aseguradora set NitAseguradora = @NitAseguradora, NombreAseguradora = @NombreAseguradora, DireccionAseguradora = @DireccionAseguradora, TelefonoAseguradora = @TelefonoAseguradora, CorreoAseguradora = @CorreoAseguradora where (NitAseguradora = @nitActual)";
                SqlCommand cmd = new SqlCommand(sql, ConexionAseguradora);
                cmd.Parameters.AddWithValue("@nitActual", nitActual);
                cmd.Parameters.AddWithValue("@NitAseguradora", Myaseguradora.NitAseguradora);
                cmd.Parameters.AddWithValue("@NombreAseguradora", Myaseguradora.NombreAseguradora);
                cmd.Parameters.AddWithValue("@DireccionAseguradora", Myaseguradora.DireccionAseguradora);
                cmd.Parameters.AddWithValue("@TelefonoAseguradora", Myaseguradora.TelefonoAseguradora);
                cmd.Parameters.AddWithValue("@CorreoAseguradora", Myaseguradora.CorreoAseguradora);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {
                this.Error = exception.Message;
            }
            return Estado;


        }
        /*MÉTODO PARA ELIMINAR ASEGURADORA*/
        public Boolean eliminarAseg(string NitAseguradora)
        {
            Boolean Estado = false;
            try
            {
                string sql = "delete from aseguradora where NitAseguradora = @NitAseguradora";
                SqlCommand cmd = new SqlCommand(sql, ConexionAseguradora);
                cmd.Parameters.AddWithValue("@NitAseguradora", NitAseguradora);
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