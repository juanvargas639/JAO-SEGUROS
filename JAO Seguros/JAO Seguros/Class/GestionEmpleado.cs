using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace JAO_Seguros
{
    public class GestionEmpleado
    {
        /*--CREAR ATRIBUTOS DE LA CONEXIÓN A LA BASE DE DATOS--*/
        public SqlConnection ConexionEmpleado;
        public string Error;
        /*CONSTRCTOR DE LA CLASE*/
        public GestionEmpleado()
        {
            this.ConexionEmpleado = ConexionSQL.getConexion();
        }
        /*MÉTODO PARA CONSULTAR EL EMPLEADO MEDIANTE EL IDEMPLEADO*/
        public Empleado consultarEmpleado(string IDEmpleado)
        {
            string sql = "select * from empleado where IDEmpleado =@IDEmpleado";
            SqlCommand cmd = new SqlCommand(sql, ConexionEmpleado);
            cmd.Parameters.AddWithValue("@IDEmpleado", IDEmpleado);
            SqlDataReader registro = cmd.ExecuteReader();
            if (registro.Read())
            {
                Empleado myEmpleado = new Empleado();
                myEmpleado.IDEmpleado = registro.GetString(0);
                myEmpleado.NombreEmpleado = registro.GetString(1);
                myEmpleado.ApellidoEmpleado = registro.GetString(2);
                myEmpleado.TelefonoEmpleado = registro.GetString(3);
                myEmpleado.RolEmpleado = registro.GetString(4);
                myEmpleado.IDAdministrador = registro.GetString(5);
                registro.Close();
                return myEmpleado;
            }
            else
            {
                registro.Close();
                return null;
            }
        }
        /*MÉTODO PARA VALIDAR NUMERO DE CLIENTES*/
        public Int32 numeroClientes(string IDEmpleado)
        {

            string sql = "SELECT count(DocumentoCliente) FROM cliente where IDEmpleado = @IDEmpleado";
            int numeroCliente = 0;
            SqlCommand cmd = new SqlCommand(sql, ConexionEmpleado);
            cmd.Parameters.AddWithValue("@IDEmpleado", IDEmpleado);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                numeroCliente = registro.GetInt32(0);
            }
            registro.Close();
            return numeroCliente;
        }
        /*MÉTODO PARA VALIDAR NUMERO DE REPORTES*/
        public Int32 numeroReportes(string IDEmpleado)
        {

            string sql = "SELECT count(IDReporte) FROM reporte where IDEmpleado = @IDEmpleado";
            int numeroReporte = 0;
            SqlCommand cmd = new SqlCommand(sql, ConexionEmpleado);
            cmd.Parameters.AddWithValue("@IDEmpleado", IDEmpleado);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                numeroReporte = registro.GetInt32(0);
            }
            registro.Close();
            return numeroReporte;
        }

        /*MÉTODO PARA VALIDAR NUMERO DE REPORTES SUGERENCIAS*/
        public Int32 numeroReportesSugerencias(string IDEmpleado)
        {

            string sql = "SELECT count(IDReporte) FROM reporte WHERE (IDEmpleado LIKE @IDEmpleado) AND (TipoReporte LIKE 'Sugerencia')";
            int numeroSugerencias = 0;
            SqlCommand cmd = new SqlCommand(sql, ConexionEmpleado);
            cmd.Parameters.AddWithValue("@IDEmpleado", IDEmpleado);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                numeroSugerencias = registro.GetInt32(0);
            }
            registro.Close();
            return numeroSugerencias;
        }
        /*MÉTODO PARA VALIDAR NUMERO DE REPORTES PETICIONES*/
        public Int32 numeroReportesPeticiones(string IDEmpleado)
        {

            string sql = "SELECT count(IDReporte) FROM reporte WHERE (IDEmpleado LIKE @IDEmpleado) AND (TipoReporte LIKE 'Petición')";
            int numeroReportes = 0;
            SqlCommand cmd = new SqlCommand(sql, ConexionEmpleado);
            cmd.Parameters.AddWithValue("@IDEmpleado", IDEmpleado);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                numeroReportes = registro.GetInt32(0);
            }
            registro.Close();
            return numeroReportes;
        }
        /*MÉTODO PARA VALIDAR NUMERO DE REPORTES QUEJAS*/
        public Int32 numeroReportesQuejas(string IDEmpleado)
        {

            string sql = "SELECT count(IDReporte) FROM reporte WHERE (IDEmpleado LIKE @IDEmpleado) AND (TipoReporte LIKE 'Queja')";
            int numeroQuejas = 0;
            SqlCommand cmd = new SqlCommand(sql, ConexionEmpleado);
            cmd.Parameters.AddWithValue("@IDEmpleado", IDEmpleado);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                numeroQuejas = registro.GetInt32(0);
            }
            registro.Close();
            return numeroQuejas;
        }
        /*MÉTODO PARA VALIDAR NUMERO DE REPORTES RECLAMOS*/
        public Int32 numeroReportesReclamos(string IDEmpleado)
        {

            string sql = "SELECT count(IDReporte) FROM reporte WHERE (IDEmpleado LIKE @IDEmpleado) AND (TipoReporte LIKE 'Reclamo')";
            int numeroReclamos = 0;
            SqlCommand cmd = new SqlCommand(sql, ConexionEmpleado);
            cmd.Parameters.AddWithValue("@IDEmpleado", IDEmpleado);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                numeroReclamos = registro.GetInt32(0);
            }
            registro.Close();
            return numeroReclamos;
        }
        /*MÉTODO PARA VALIDAR NUMERO DE REPORTES FELICITACIONES*/
        public Int32 numeroReportesFelicitaciones(string IDEmpleado)
        {

            string sql = "SELECT count(IDReporte) FROM reporte WHERE (IDEmpleado LIKE @IDEmpleado) AND (TipoReporte LIKE 'Felicitación')";
            int numeroFelicitacion = 0;
            SqlCommand cmd = new SqlCommand(sql, ConexionEmpleado);
            cmd.Parameters.AddWithValue("@IDEmpleado", IDEmpleado);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                numeroFelicitacion = registro.GetInt32(0);
            }
            registro.Close();
            return numeroFelicitacion;
        }

        /*MÉTODO PARA LISTAR LOS EMPLLEADOS ACTUALES*/
        public List<Empleado> listadoEmpleados()
        {
            List<Empleado> listadoEmpleados = new List<Empleado>();
            string sql = "select * from empleado";
            SqlCommand cmd = new SqlCommand(sql, ConexionEmpleado);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                Empleado empleadosActuales = new Empleado();
                empleadosActuales.IDEmpleado = registro.GetString(0);
                empleadosActuales.NombreEmpleado = registro.GetString(1);
                empleadosActuales.ApellidoEmpleado = registro.GetString(2);
                empleadosActuales.TelefonoEmpleado = registro.GetString(3);
                empleadosActuales.RolEmpleado = registro.GetString(4);
                empleadosActuales.IDAdministrador = registro.GetString(5);
                listadoEmpleados.Add(empleadosActuales);
            }
            registro.Close();
            return listadoEmpleados;
        }
        /*MÉTODO PARA LISTAR LOS EMPLLEADOS DEL ADMINISTRADOR*/
        public List<Empleado> listadoEmpleadosAdmin(string IDAdminJefe)
        {
            List<Empleado> listadoEmpleados = new List<Empleado>();
            string sql = "select * from empleado where IDAdministrador=@IDAdminJefe";
            SqlCommand cmd = new SqlCommand(sql, ConexionEmpleado);
            cmd.Parameters.AddWithValue("@IDAdminJefe", IDAdminJefe);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                Empleado empleadosActuales = new Empleado();
                empleadosActuales.IDEmpleado = registro.GetString(0);
                empleadosActuales.NombreEmpleado = registro.GetString(1);
                empleadosActuales.ApellidoEmpleado = registro.GetString(2);
                empleadosActuales.TelefonoEmpleado = registro.GetString(3);
                empleadosActuales.RolEmpleado = registro.GetString(4);
                empleadosActuales.IDAdministrador = registro.GetString(5);
                listadoEmpleados.Add(empleadosActuales);
            }
            registro.Close();
            return listadoEmpleados;
        }
        /*MÉTODO PARA LISTAR LOS ID DE LOS EMPLEADOS PARA DROPDOWNLIST*/
        public List<Empleado> listadoIDEmpleados()
        {
            List<Empleado> listadoIDEmpleados = new List<Empleado>();
            string sql = "SELECT IDEmpleado from empleado";
            SqlCommand cmd = new SqlCommand(sql, ConexionEmpleado);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                Empleado empleadosActuales = new Empleado();
                empleadosActuales.IDEmpleado = registro.GetString(0);
                listadoIDEmpleados.Add(empleadosActuales);
            }
            registro.Close();
            return listadoIDEmpleados;
        }
        /*MÉTODO PARA VALIDAR SI EL EMPLEADO EXISTE*/
        public Boolean existeEmpleado(string IDEmpleado)
        {
            string sql = ("Select * from empleado where IDEmpleado = @IDEmpleado");
            SqlCommand cmd = new SqlCommand(sql, ConexionEmpleado);
            cmd.Parameters.AddWithValue("@IDEmpleado", IDEmpleado);
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
        /*MÉTODO PARA INSERTAR UN NUEVO EMPLEADO*/
        public Boolean InsertarEmpleado(Empleado myEmpleado)
        {
            Boolean Estado = false;
            try
            {
                string sql = "insert into empleado (IDEmpleado, NombreEmpleado, ApellidoEmpleado, TelefonoEmpleado, RolEmpleado, IDAdministrador) values (@IDEmpleado, @NombreEmpleado, @ApellidoEmpleado, @TelefonoEmpleado, @RolEmpleado, @IDAdministrador)";
                SqlCommand cmd = new SqlCommand(sql, ConexionEmpleado);
                cmd.Parameters.AddWithValue("@IDEmpleado", myEmpleado.IDEmpleado);
                cmd.Parameters.AddWithValue("@NombreEmpleado", myEmpleado.NombreEmpleado);
                cmd.Parameters.AddWithValue("@ApellidoEmpleado", myEmpleado.ApellidoEmpleado);
                cmd.Parameters.AddWithValue("@TelefonoEmpleado", myEmpleado.TelefonoEmpleado);
                cmd.Parameters.AddWithValue("@RolEmpleado", myEmpleado.RolEmpleado);
                cmd.Parameters.AddWithValue("@IDAdministrador", myEmpleado.IDAdministrador);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {
                this.Error = exception.Message;
            }
            return Estado;
        }
        /*MÉTODO PARA EDITAR EL EMPLEADO*/
        public Boolean EditarEmpleado(Empleado myEmpleado, string idActual)
        {
            Boolean Estado = false;
            try
            {
                string sql = "update empleado set IDEmpleado = @IDEmpleado, NombreEmpleado = @NombreEmpleado, ApellidoEmpleado = @ApellidoEmpleado, TelefonoEmpleado = @TelefonoEmpleado, RolEmpleado = @RolEmpleado, IDAdministrador = @IDAdministrador where (IDEmpleado = @idActual)";
                SqlCommand cmd = new SqlCommand(sql, ConexionEmpleado);
                cmd.Parameters.AddWithValue("@idActual", idActual);
                cmd.Parameters.AddWithValue("@IDEmpleado", myEmpleado.IDEmpleado);
                cmd.Parameters.AddWithValue("@NombreEmpleado", myEmpleado.NombreEmpleado);
                cmd.Parameters.AddWithValue("@ApellidoEmpleado", myEmpleado.ApellidoEmpleado);
                cmd.Parameters.AddWithValue("@TelefonoEmpleado", myEmpleado.TelefonoEmpleado);
                cmd.Parameters.AddWithValue("@RolEmpleado", myEmpleado.RolEmpleado);
                cmd.Parameters.AddWithValue("IDAdministrador", myEmpleado.IDAdministrador);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {
                this.Error = exception.Message;
            }
            return Estado;
        }
        /*MÉTODO PARA ELIMINAR EL EMPLEADO*/
        public Boolean eliminarEmpleado(string IDEmpleado)
        {
            Boolean Estado = false;
            try
            {
                string sql = "delete from empleado where IDEmpleado = @IDEmpleado";
                SqlCommand cmd = new SqlCommand(sql, ConexionEmpleado);
                cmd.Parameters.AddWithValue("@IDEmpleado", IDEmpleado);
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