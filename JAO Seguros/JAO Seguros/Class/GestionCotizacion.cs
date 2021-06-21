using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace JAO_Seguros
{
    public class GestionCotizacion
    {
        /*--CREAR ATRIBUTOS DE LA CONEXIÓN A LA BASE DE DATOS--*/
        public SqlConnection ConexionCotizacion;
        public string Error;
        /*CONSTRUCTOR DE LA CLASE*/
        public GestionCotizacion()
        {
            this.ConexionCotizacion = ConexionSQL.getConexion();
        }
        /*MÉTODO PARA CONSULTAR COTIZACION MEDIANTE EL IDCOTIZACION*/
        public Cotizacion consultarCotizacion(string IDCotizacion)
        {
            string sql = "select * from cotizacion where IDCotizacion =@IDCotizacion";
            SqlCommand cmd = new SqlCommand(sql, ConexionCotizacion);
            cmd.Parameters.AddWithValue("@IDCotizacion", IDCotizacion);
            SqlDataReader registro = cmd.ExecuteReader();
            if (registro.Read())
            {
                Cotizacion myCotizacion = new Cotizacion();
                myCotizacion.IDCotizacion = registro.GetInt32(0);
                myCotizacion.NombreProspecto = registro.GetString(1);
                myCotizacion.ApellidoProspecto = registro.GetString(2);
                myCotizacion.DescripcionCotizacion = registro.GetString(3);
                myCotizacion.RamoCotizacion = registro.GetString(4);
                myCotizacion.CorreoProspecto = registro.GetString(5);
                myCotizacion.FechaCotizacion = registro.GetDateTime(6);
                myCotizacion.EnviadaCotizacion = registro.GetString(7);
                registro.Close();
                return myCotizacion;
            }
            else
            {
                registro.Close();
                return null;
            }
        }

        /*MÉTODO PARA LISTAR LAS COTIZACIONES ACTUALES*/
        public List<Cotizacion> listadoCotizaciones()
        {
            List<Cotizacion> listadoCotizaciones = new List<Cotizacion>();
            string sql = "select * from cotizacion";
            SqlCommand cmd = new SqlCommand(sql, ConexionCotizacion);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                Cotizacion cotizacionesTraidas = new Cotizacion();
                cotizacionesTraidas.IDCotizacion = registro.GetInt32(0);
                cotizacionesTraidas.NombreProspecto = registro.GetString(1);
                cotizacionesTraidas.ApellidoProspecto = registro.GetString(2);
                cotizacionesTraidas.DescripcionCotizacion = registro.GetString(3);
                cotizacionesTraidas.RamoCotizacion = registro.GetString(4);
                cotizacionesTraidas.CorreoProspecto = registro.GetString(5);
                cotizacionesTraidas.FechaCotizacion = registro.GetDateTime(6);
                cotizacionesTraidas.EnviadaCotizacion = registro.GetString(7);
                listadoCotizaciones.Add(cotizacionesTraidas);
            }
            registro.Close();
            return listadoCotizaciones;

        }
        
        /*MÉTODO PARA CONSULTAR LAS COTIZACIONES DE UN ASESOR*/
        public Cotizacion consultarCotizacionAsesor(string IDCotizacion)
        {
            string sql = "select * from empleado_cotizacion where IDCotizacion =@IDCotizacion";
            SqlCommand cmd = new SqlCommand(sql, ConexionCotizacion);
            cmd.Parameters.AddWithValue("@IDCotizacion", IDCotizacion);
            SqlDataReader registro = cmd.ExecuteReader();
            if (registro.Read())
            {
                Cotizacion myCotizacion = new Cotizacion();
                myCotizacion.NombreProspecto = registro.GetString(0);
                myCotizacion.IDCotizacion = registro.GetInt32(1);
                string asesor = registro.GetString(0);
                registro.Close();
                return myCotizacion;
            }
            else
            {
                registro.Close();
                return null;
            }
        }
        /*MÉTODO PARA INSERTAR UNA NUEVA COTIZACION*/
        public Boolean NuevaCotizacion(Cotizacion cotizacionEnviada)
        {
            Boolean Estado = false;
            try
            {
                string sql = "insert into cotizacion (NombreProspecto, ApellidoProspecto, DescripcionCotizacion, RamoCotizacion, CorreoProspecto, EnviadaCotizacion) values (@NombreProspecto, @ApellidoProspecto, @DescripcionCotizacion, @RamoCotizacion, @CorreoProspecto, @EnviadaCotizacion)";
                SqlCommand cmd = new SqlCommand(sql, ConexionCotizacion);
                cmd.Parameters.AddWithValue("@NombreProspecto", cotizacionEnviada.NombreProspecto);
                cmd.Parameters.AddWithValue("@ApellidoProspecto", cotizacionEnviada.ApellidoProspecto);
                cmd.Parameters.AddWithValue("@DescripcionCotizacion", cotizacionEnviada.DescripcionCotizacion);
                cmd.Parameters.AddWithValue("@RamoCotizacion", cotizacionEnviada.RamoCotizacion);
                cmd.Parameters.AddWithValue("@CorreoProspecto", cotizacionEnviada.CorreoProspecto);
                cmd.Parameters.AddWithValue("@EnviadaCotizacion", cotizacionEnviada.EnviadaCotizacion);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {

                this.Error = exception.Message;
            }
            return Estado;

        }
        /*MÉTODO PARA EDITAR EL ENVIO DE LA COTIZACION*/
        public Boolean editarCotizacion(string IDCotizacion, string IDEmpleado, string EnviadaCotizacion)
        {
            Boolean Estado = false;
            try
            {
                if (EnviadaCotizacion == "Verdadero")
                {
                    string sql = "update cotizacion set EnviadaCotizacion = @EnviadaCotizacion where (IDCotizacion = @IDCotizacion);";
                    string sqlinsert = "insert into empleado_cotizacion (IDEmpleado, IDCotizacion) values(@IDEmpleado, @IDCotizacion)";
                    SqlCommand cmd = new SqlCommand(sql, ConexionCotizacion);
                    SqlCommand cmd2 = new SqlCommand(sqlinsert, ConexionCotizacion);
                    cmd.Parameters.AddWithValue("@IDCotizacion", IDCotizacion);
                    cmd.Parameters.AddWithValue("@EnviadaCotizacion", EnviadaCotizacion);
                    cmd2.Parameters.AddWithValue("@IDEmpleado", IDEmpleado);
                    cmd2.Parameters.AddWithValue("@IDCotizacion", IDCotizacion);
                    cmd.ExecuteNonQuery();
                    cmd2.ExecuteNonQuery();
                    Estado = true;
                } else
                {
                    string sql = "select * from empleado_cotizacion where IDCotizacion =@IDCotizacion";
                    SqlCommand cmd = new SqlCommand(sql, ConexionCotizacion);
                    cmd.Parameters.AddWithValue("@IDCotizacion", IDCotizacion);
                    SqlDataReader registro = cmd.ExecuteReader();
                    if (registro.Read())
                    {
                        registro.Close();
                        string sql2 = "update cotizacion set EnviadaCotizacion = @EnviadaCotizacion where (IDCotizacion = @IDCotizacion);";
                        string sqlinsert = "delete from empleado_cotizacion where (IDCotizacion = @IDCotizacion)";
                        SqlCommand cmd2 = new SqlCommand(sql2, ConexionCotizacion);
                        SqlCommand cmd3 = new SqlCommand(sqlinsert, ConexionCotizacion);
                        cmd2.Parameters.AddWithValue("@IDCotizacion", IDCotizacion);
                        cmd2.Parameters.AddWithValue("@EnviadaCotizacion", EnviadaCotizacion);
                        cmd3.Parameters.AddWithValue("@IDCotizacion", IDCotizacion);
                        cmd2.ExecuteNonQuery();
                        cmd3.ExecuteNonQuery();
                        Estado = true; 
                    } else
                    {
                        registro.Close();
                        string sql2 = "update cotizacion set EnviadaCotizacion = @EnviadaCotizacion where (IDCotizacion = @IDCotizacion);";
                        SqlCommand cmd2 = new SqlCommand(sql2, ConexionCotizacion);
                        cmd2.Parameters.AddWithValue("@IDCotizacion", IDCotizacion);
                        cmd2.Parameters.AddWithValue("@EnviadaCotizacion", EnviadaCotizacion);
                        cmd2.ExecuteNonQuery();
                        Estado = true;
                    }
                   
                }
            }
            catch (SqlException exception)
            {

                this.Error = exception.Message;
            }

            return Estado;
        }
        /*MÉTODO PARA ELIMINAR UNA COTIZACIÓN*/
        public Boolean eliminarCotizacion(string IDCotizacion)
        {
            Boolean Estado = false;
            try
            {
                string sql = "delete from cotizacion where IDCotizacion = @IDCotizacion";
                SqlCommand cmd = new SqlCommand(sql, ConexionCotizacion);
                cmd.Parameters.AddWithValue("@IDCotizacion", IDCotizacion);
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