using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace JAO_Seguros
{
    public class GestionReporte
    {
        /*--CREAR ATRIBUTOS DE LA CONEXIÓN A LA BASE DE DATOS--*/
        public SqlConnection ConexionReporte;
        public string Error;
        /*CONTRUCTOR DE LA CLASE*/
        public GestionReporte()
        {
            this.ConexionReporte = ConexionSQL.getConexion();
        }
        /*MÉTODO DE CONSULTA REPORTE*/
        public Reporte consultarReporte(string IDReporte)
        {
            string sql = "select * from reporte where IDReporte =@IDReporte";
            SqlCommand cmd = new SqlCommand(sql, ConexionReporte);
            cmd.Parameters.AddWithValue("@IDReporte", IDReporte);
            SqlDataReader registro = cmd.ExecuteReader();
            if (registro.Read())
            {
                Reporte myReporte = new Reporte();
                myReporte.IDReporte = registro.GetInt32(0);
                myReporte.TipoReporte = registro.GetString(1);
                myReporte.FechaReporte = registro.GetDateTime(2);
                myReporte.DescripcionReporte = registro.GetString(3);
                myReporte.DocumentoCliente = registro.GetString(4);
                myReporte.IDEmpleado = registro.GetString(5);
                myReporte.RespuestaReporte = registro.GetString(6);
                registro.Close();
                return myReporte;
            }
            else
            {
                registro.Close();
                return null;
            }
        }
        /*MÉTODO DE LISTAR REPORTES ACTUALES*/
        public List<Reporte> listadoReportes()
        {
            List<Reporte> listadoReportes = new List<Reporte>();
            string sql = "select * from reporte";
            SqlCommand cmd = new SqlCommand(sql, ConexionReporte);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                Reporte reportesActuales = new Reporte();
                reportesActuales.IDReporte = registro.GetInt32(0);
                reportesActuales.TipoReporte = registro.GetString(1);
                reportesActuales.FechaReporte = registro.GetDateTime(2);
                reportesActuales.DescripcionReporte = registro.GetString(3);
                reportesActuales.DocumentoCliente = registro.GetString(4);
                reportesActuales.IDEmpleado = registro.GetString(5);
                reportesActuales.RespuestaReporte = registro.GetString(6);
                listadoReportes.Add(reportesActuales);
            }
            registro.Close();
            return listadoReportes;

        }
        /*MÉTODO DE LISTAR REPORTES RELACIONADOS AL ASESOR*/
        public List<Reporte> listadoReportesAsesor(string IDEmpleado)
        {
            List<Reporte> listadoReportes = new List<Reporte>();
            string sql = "select * from reporte where (IDEmpleado = @IDEmpleado)";
            SqlCommand cmd = new SqlCommand(sql, ConexionReporte);
            cmd.Parameters.AddWithValue("@IDEmpleado", IDEmpleado);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                Reporte reportesActuales = new Reporte();
                reportesActuales.IDReporte = registro.GetInt32(0);
                reportesActuales.TipoReporte = registro.GetString(1);
                reportesActuales.FechaReporte = registro.GetDateTime(2);
                reportesActuales.DescripcionReporte = registro.GetString(3);
                reportesActuales.DocumentoCliente = registro.GetString(4);
                reportesActuales.IDEmpleado = registro.GetString(5);
                reportesActuales.RespuestaReporte = registro.GetString(6);
                listadoReportes.Add(reportesActuales);
            }
            registro.Close();
            if (listadoReportes == null)
            {
                return null;
            }else
            {
                return listadoReportes;
            }
        }
        /*--METODO PARA INSERTAR ADMINISTRADOR--*/
        public Boolean InsertarReporte(Reporte MyReporte)
        {
            Boolean Estado = false;
            try
            {
                string sql = "insert into reporte (TipoReporte, DescripcionReporte, DocumentoCliente, IDEmpleado, RespuestaReporte) values (@TipoReporte, @DescripcionReporte, @DocumentoCliente, @IDEmpleado, @RespuestaReporte)";
                SqlCommand cmd = new SqlCommand(sql, ConexionReporte);
                cmd.Parameters.AddWithValue("@TipoReporte", MyReporte.TipoReporte);
                cmd.Parameters.AddWithValue("@DescripcionReporte", MyReporte.DescripcionReporte);
                cmd.Parameters.AddWithValue("@DocumentoCliente", MyReporte.DocumentoCliente);
                cmd.Parameters.AddWithValue("@IDEmpleado", MyReporte.IDEmpleado);
                cmd.Parameters.AddWithValue("@RespuestaReporte", MyReporte.RespuestaReporte);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {
                this.Error = exception.Message;
            }
            return Estado;
        }
        /*MÉTODO DE EDITAR EL REPORTE*/
        public Boolean EditarReporte(Reporte myReporte)
        {
            Boolean Estado = false;
            try
            {

                string sql = "update reporte set TipoReporte = @TipoReporte, FechaReporte = @FechaReporte, DescripcionReporte = @DescripcionReporte, DocumentoCliente = @DocumentoCliente, IDEmpleado = @IDEmpleado, RespuestaReporte = @RespuestaReporte where (IDReporte = @IDReporte)";
                SqlCommand cmd = new SqlCommand(sql, ConexionReporte);
                cmd.Parameters.AddWithValue("@IDReporte", myReporte.IDReporte);
                cmd.Parameters.AddWithValue("@TipoReporte", myReporte.TipoReporte);
                cmd.Parameters.AddWithValue("@FechaReporte", myReporte.FechaReporte);
                cmd.Parameters.AddWithValue("@DescripcionReporte", myReporte.DescripcionReporte);
                cmd.Parameters.AddWithValue("@DocumentoCliente", myReporte.DocumentoCliente);
                cmd.Parameters.AddWithValue("@IDEmpleado", myReporte.IDEmpleado);
                cmd.Parameters.AddWithValue("@RespuestaReporte", myReporte.RespuestaReporte);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {
                this.Error = exception.Message;
            }
            return Estado;
        }
        /*MÉTODO DE EDITAR EL REPORTE*/
        public Boolean EditarRespuestaReporte(string idreporte, string respuesta)
        {
            Boolean Estado = false;
            try
            {

                string sql = "update reporte set RespuestaReporte = @RespuestaReporte where (IDReporte = @IDReporte)";
                SqlCommand cmd = new SqlCommand(sql, ConexionReporte);
                cmd.Parameters.AddWithValue("@IDReporte", idreporte);
                cmd.Parameters.AddWithValue("@RespuestaReporte", respuesta);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {
                this.Error = exception.Message;
            }
            return Estado;
        }
        /*MÉTODO DE ELIMINAR REPORTE*/
        public Boolean eliminarReporte(string IDReporte)
        {
            Boolean Estado = false;
            try
            {
                string sql = "delete from reporte where IDReporte = @IDReporte";
                SqlCommand cmd = new SqlCommand(sql, ConexionReporte);
                cmd.Parameters.AddWithValue("@IDReporte", IDReporte);
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