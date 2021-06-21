using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace JAO_Seguros
{
    public class GestionCliente
    {
        /*--CREAR ATRIBUTOS DE LA CONEXIÓN A LA BASE DE DATOS--*/
        public SqlConnection ConexionCliente;
        public string Error;
        /*--CONSTRUCTOR DE LA CLASE--*/
        public GestionCliente()
        {
            this.ConexionCliente = ConexionSQL.getConexion();
        }
        /*MÉTODO PARA CONSULTA CLIENTE MEDIANTE EL NÚMERO DE DOCUMENTO*/
        public Cliente consultarCliente(string DocumentoCliente)
        {
            string sql = "select * from cliente where DocumentoCliente =@DocumentoCliente";
            SqlCommand cmd = new SqlCommand(sql, ConexionCliente);
            cmd.Parameters.AddWithValue("@DocumentoCliente", DocumentoCliente);
            SqlDataReader registro = cmd.ExecuteReader();
            if (registro.Read())
            {
                Cliente myCliente = new Cliente();
                myCliente.DocumentoCliente = registro.GetString(0);
                myCliente.NombreCliente = registro.GetString(1);
                myCliente.ApellidoCliente = registro.GetString(2);
                myCliente.DireccionResidenciaCliente = registro.GetString(3);
                myCliente.TelefonoFijoCliente = registro.GetString(4);
                myCliente.TelefonoCelularCliente = registro.GetString(5);
                myCliente.TipoDocumentoCliente = registro.GetString(6);
                myCliente.FechaExpedicionDocumentoCliente = registro.GetDateTime(7);
                myCliente.GeneroCliente = registro.GetString(8);
                myCliente.CiudadNacimientoCliente = registro.GetString(9);
                myCliente.DireccionTrabajoCliente = registro.GetString(10);
                myCliente.TelefonoTrabajoCliente = registro.GetString(11);
                myCliente.EmpleoCliente = registro.GetString(12);
                myCliente.IDEmpleado = registro.GetString(13);
                registro.Close();
                return myCliente;
            }
            else
            {
                registro.Close();
                return null;
            }
        }
        /*MÉTODO PARA LISTAR LOS CLIENTES ACTUALES*/
        public List<Cliente> listadoCliente()
        {
            List<Cliente> listadoCliente = new List<Cliente>();
            string sql = "select * from cliente";
            SqlCommand cmd = new SqlCommand(sql, ConexionCliente);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {

                Cliente clientesTraidos = new Cliente();
                clientesTraidos.DocumentoCliente = registro.GetString(0);
                clientesTraidos.NombreCliente = registro.GetString(1);
                clientesTraidos.ApellidoCliente = registro.GetString(2);
                clientesTraidos.DireccionResidenciaCliente = registro.GetString(3);
                clientesTraidos.TelefonoFijoCliente = registro.GetString(4);
                clientesTraidos.TelefonoCelularCliente = registro.GetString(5);
                clientesTraidos.TipoDocumentoCliente = registro.GetString(6);
                string fecha = (registro.GetDateTime(7)).ToShortDateString();
                clientesTraidos.FechaExpedicionDocumentoCliente = Convert.ToDateTime(fecha);
                clientesTraidos.GeneroCliente = registro.GetString(8);
                clientesTraidos.CiudadNacimientoCliente = registro.GetString(9);
                clientesTraidos.DireccionTrabajoCliente = registro.GetString(10);
                clientesTraidos.TelefonoTrabajoCliente = registro.GetString(11);
                clientesTraidos.EmpleoCliente = registro.GetString(12);
                clientesTraidos.IDEmpleado = registro.GetString(13);
                listadoCliente.Add(clientesTraidos);
            }
            registro.Close();
            return listadoCliente;

        }
        /*MÉTODO PARA LISTAR LOS CLIENTES ACTUALES*/
        public List<Reporte> listadoReportesCliente(string IDCliente)
        {
            List<Reporte> listadoReportesCliente = new List<Reporte>();
            string sql = "select IDReporte, TipoReporte, DescripcionReporte, RespuestaReporte from reporte where DocumentoCliente = @DocumentoCliente";
            SqlCommand cmd = new SqlCommand(sql, ConexionCliente);
            cmd.Parameters.AddWithValue("@DocumentoCliente", IDCliente);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {

                Reporte ReportesActuales = new Reporte();
                ReportesActuales.IDReporte = registro.GetInt32(0);
                ReportesActuales.TipoReporte = registro.GetString(1);
                ReportesActuales.DescripcionReporte = registro.GetString(2);
                ReportesActuales.RespuestaReporte = registro.GetString(3);
                listadoReportesCliente.Add(ReportesActuales);
            }
            registro.Close();
            return listadoReportesCliente;

        }
        /*MÉTODO PARA CREAR REPORTE*/
        public Boolean InsertarReporte(Reporte myReporte)
        {
            Boolean Estado = false;
            try
            {
                string sql = "insert into reporte (TipoReporte, DescripcionReporte, DocumentoCliente, IDEmpleado, RespuestaReporte) values (@TipoReporte, @DescripcionReporte, @DocumentoCliente, @IDEmpleado, @RespuestaReporte)";
                SqlCommand cmd = new SqlCommand(sql, ConexionCliente);
                cmd.Parameters.AddWithValue("@TipoReporte", myReporte.TipoReporte);
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

        /*MÉTODO PARA LISTAR LOS ID DE LOS EMPLEADOS PARA DROPDOWNLIST*/
        public List<Cliente> listadoIDClientesAsesor(string idempleado)
        {
            List<Cliente> listadoIDClientes = new List<Cliente>();
            string sql = "SELECT DocumentoCliente from cliente where IDEmpleado = @IDEmpleado";
            SqlCommand cmd = new SqlCommand(sql, ConexionCliente);
            cmd.Parameters.AddWithValue("@IDEmpleado", idempleado);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                Cliente clientesActuales = new Cliente();
                clientesActuales.DocumentoCliente = registro.GetString(0);
                listadoIDClientes.Add(clientesActuales);
            }
            registro.Close();
            return listadoIDClientes;
        }
        /*MÉTODO PARA LLENAR TABLA REPORTES CLIENTE*/
        public Int32 numeroPolizasCliente(string IDCliente)
        {

            string sql = "SELECT count(CodigoPoliza) FROM poliza where DocumentoCliente = @DocumentoCliente";
            int numeroPolizasCliente = 0;
            SqlCommand cmd = new SqlCommand(sql, ConexionCliente);
            cmd.Parameters.AddWithValue("@DocumentoCliente", IDCliente);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                numeroPolizasCliente = registro.GetInt32(0);
            }
            registro.Close();
            return numeroPolizasCliente;
        }
        /*MÉTODO PARA VALIDAR NUMERO DE CLIENTES*/
        public Int32 numeroReportesCliente(string IDCliente)
        {

            string sql = "SELECT count(IDReporte) FROM reporte where DocumentoCliente = @DocumentoCliente";
            int numeroReportesCliente = 0;
            SqlCommand cmd = new SqlCommand(sql, ConexionCliente);
            cmd.Parameters.AddWithValue("@DocumentoCliente", IDCliente);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                numeroReportesCliente = registro.GetInt32(0);
            }
            registro.Close();
            return numeroReportesCliente;
        }
        /*MÉTODO PARA LISTAR LOS ID DE LOS EMPLEADOS PARA DROPDOWNLIST*/
        public List<Cliente> listadoIDClientes()
        {
            List<Cliente> listadoIDClientes = new List<Cliente>();
            string sql = "SELECT DocumentoCliente from cliente";
            SqlCommand cmd = new SqlCommand(sql, ConexionCliente);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                Cliente clientesActuales = new Cliente();
                clientesActuales.DocumentoCliente = registro.GetString(0);
                listadoIDClientes.Add(clientesActuales);
            }
            registro.Close();
            return listadoIDClientes;
        }
        /*MÉTODO PARA LISTAR LOS CLIENTES ACTUALES DE UN EMPLEADO*/
        public List<Cliente> listadoClienteAsesor(string IDEmpleado)
        {
            List<Cliente> listadoCliente = new List<Cliente>();
            string sql = "select * from cliente where IDEmpleado = @IDEmpleado";
            SqlCommand cmd = new SqlCommand(sql, ConexionCliente);
            cmd.Parameters.AddWithValue("@IDEmpleado", IDEmpleado);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {

                Cliente clientesTraidos = new Cliente();
                clientesTraidos.DocumentoCliente = registro.GetString(0);
                clientesTraidos.NombreCliente = registro.GetString(1);
                clientesTraidos.ApellidoCliente = registro.GetString(2);
                clientesTraidos.DireccionResidenciaCliente = registro.GetString(3);
                clientesTraidos.TelefonoFijoCliente = registro.GetString(4);
                clientesTraidos.TelefonoCelularCliente = registro.GetString(5);
                clientesTraidos.TipoDocumentoCliente = registro.GetString(6);
                clientesTraidos.FechaExpedicionDocumentoCliente = registro.GetDateTime(7);
                clientesTraidos.GeneroCliente = registro.GetString(8);
                clientesTraidos.CiudadNacimientoCliente = registro.GetString(9);
                clientesTraidos.DireccionTrabajoCliente = registro.GetString(10);
                clientesTraidos.TelefonoTrabajoCliente = registro.GetString(11);
                clientesTraidos.EmpleoCliente = registro.GetString(12);
                clientesTraidos.IDEmpleado = registro.GetString(13);
                listadoCliente.Add(clientesTraidos);
            }
            registro.Close();
            return listadoCliente;

        }
        /*MÉTODO PARA VALIDAR SI EXISTE EL CLIENTE*/
        public Boolean existeCliente(string DocumentoCliente)
        {
            string sql = ("Select * from cliente where DocumentoCliente = @DocumentoCliente");
            SqlCommand cmd = new SqlCommand(sql, ConexionCliente);
            cmd.Parameters.AddWithValue("@DocumentoCliente", DocumentoCliente);
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
        /*MÉTODO PARA INSERTAR EL CLIENTE*/
        public Boolean InsertarCliente(Cliente myCliente)
        {
            Boolean Estado = false;
            try
            {
                string sql = "insert into cliente (DocumentoCliente, NombreCliente, ApellidoCliente, DireccionResidenciaCliente, TelefonoFijoCliente, TelefonoCelularCliente, TipoDocumentoCliente, FechaExpedicionDocumentoCliente, GeneroCliente, CiudadNacimientoCliente, DireccionTrabajoCliente, TelefonoTrabajoCliente, EmpleoCliente, IDEmpleado) values (@DocumentoCliente, @NombreCliente, @ApellidoCliente, @DireccionResidenciaCliente, @TelefonoFijoCliente, @TelefonoCelularCliente, @TipoDocumentoCliente, @FechaExpedicionDocumentoCliente, @GeneroCliente, @CiudadNacimientoCliente, @DireccionTrabajoCliente, @TelefonoTrabajoCliente, @EmpleoCliente, @IDEmpleado)";
                SqlCommand cmd = new SqlCommand(sql, ConexionCliente);
                cmd.Parameters.AddWithValue("@DocumentoCliente", myCliente.DocumentoCliente);
                cmd.Parameters.AddWithValue("@NombreCliente", myCliente.NombreCliente);
                cmd.Parameters.AddWithValue("@ApellidoCliente", myCliente.ApellidoCliente);
                cmd.Parameters.AddWithValue("@DireccionResidenciaCliente", myCliente.DireccionResidenciaCliente);
                cmd.Parameters.AddWithValue("@TelefonoFijoCliente", myCliente.TelefonoFijoCliente);
                cmd.Parameters.AddWithValue("@TelefonoCelularCliente", myCliente.TelefonoCelularCliente);
                cmd.Parameters.AddWithValue("@TipoDocumentoCliente", myCliente.TipoDocumentoCliente);
                cmd.Parameters.AddWithValue("@FechaExpedicionDocumentoCliente", myCliente.FechaExpedicionDocumentoCliente);
                cmd.Parameters.AddWithValue("@GeneroCliente", myCliente.GeneroCliente);
                cmd.Parameters.AddWithValue("@CiudadNacimientoCliente", myCliente.CiudadNacimientoCliente);
                cmd.Parameters.AddWithValue("@DireccionTrabajoCliente", myCliente.DireccionTrabajoCliente);
                cmd.Parameters.AddWithValue("@TelefonoTrabajoCliente", myCliente.TelefonoTrabajoCliente);
                cmd.Parameters.AddWithValue("@EmpleoCliente", myCliente.EmpleoCliente);
                cmd.Parameters.AddWithValue("@IDEmpleado", myCliente.IDEmpleado);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {
                this.Error = exception.Message;
            }
            return Estado;
        }

        /*MÉTODO PARA EDITAR UN CLIENTE POR PARTE DEL ADMIN*/
        public Boolean EditarCliente(Cliente myCliente, string docActual)
        {
            Boolean Estado = false;
            try
            {

                string sql = "update cliente set DocumentoCliente = @DocumentoCliente, NombreCliente = @NombreCliente, ApellidoCliente = @ApellidoCliente, DireccionResidenciaCliente = @DireccionResidenciaCliente, TelefonoFijoCliente = @TelefonoFijoCliente, TelefonoCelularCliente = @TelefonoCelularCliente, TipoDocumentoCliente = @TipoDocumentoCliente, FechaExpedicionDocumentoCliente = @FechaExpedicionDocumentoCliente, GeneroCliente = @GeneroCliente, CiudadNacimientoCliente = @CiudadNacimientoCliente, DireccionTrabajoCliente = @DireccionTrabajoCliente, TelefonoTrabajoCliente = @TelefonoTrabajoCliente, EmpleoCliente = @EmpleoCliente, IDEmpleado = @IDEmpleado where (DocumentoCliente = @docActual)";
                SqlCommand cmd = new SqlCommand(sql, ConexionCliente);
                cmd.Parameters.AddWithValue("@docActual", docActual);
                cmd.Parameters.AddWithValue("@DocumentoCliente", myCliente.DocumentoCliente);
                cmd.Parameters.AddWithValue("@NombreCliente", myCliente.NombreCliente);
                cmd.Parameters.AddWithValue("@ApellidoCliente", myCliente.ApellidoCliente);
                cmd.Parameters.AddWithValue("@DireccionResidenciaCliente", myCliente.DireccionResidenciaCliente);
                cmd.Parameters.AddWithValue("@TelefonoFijoCliente", myCliente.TelefonoFijoCliente);
                cmd.Parameters.AddWithValue("@TelefonoCelularCliente", myCliente.TelefonoCelularCliente);
                cmd.Parameters.AddWithValue("@TipoDocumentoCliente", myCliente.TipoDocumentoCliente);
                cmd.Parameters.AddWithValue("@FechaExpedicionDocumentoCliente", myCliente.FechaExpedicionDocumentoCliente);
                cmd.Parameters.AddWithValue("@GeneroCliente", myCliente.GeneroCliente);
                cmd.Parameters.AddWithValue("@CiudadNacimientoCliente", myCliente.CiudadNacimientoCliente);
                cmd.Parameters.AddWithValue("@DireccionTrabajoCliente", myCliente.DireccionTrabajoCliente);
                cmd.Parameters.AddWithValue("@TelefonoTrabajoCliente", myCliente.TelefonoTrabajoCliente);
                cmd.Parameters.AddWithValue("@EmpleoCliente", myCliente.EmpleoCliente);
                cmd.Parameters.AddWithValue("@IDEmpleado", myCliente.IDEmpleado);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {
                this.Error = exception.Message;
            }
            return Estado;


        }

        /*MÉTODO PARA EDITAR EL CLIENTE POR PARTE DEL ASESOR*/
        public Boolean EditarClienteAsesor(Cliente myCliente, string docActual)
        {
            Boolean Estado = false;
            try
            {

                string sql = "update cliente set DocumentoCliente = @DocumentoCliente, NombreCliente = @NombreCliente, ApellidoCliente = @ApellidoCliente, DireccionResidenciaCliente = @DireccionResidenciaCliente, TelefonoFijoCliente = @TelefonoFijoCliente, TelefonoCelularCliente = @TelefonoCelularCliente, TipoDocumentoCliente = @TipoDocumentoCliente, FechaExpedicionDocumentoCliente = @FechaExpedicionDocumentoCliente, GeneroCliente = @GeneroCliente, CiudadNacimientoCliente = @CiudadNacimientoCliente, DireccionTrabajoCliente = @DireccionTrabajoCliente, TelefonoTrabajoCliente = @TelefonoTrabajoCliente, EmpleoCliente = @EmpleoCliente where (DocumentoCliente = @docActual)";
                SqlCommand cmd = new SqlCommand(sql, ConexionCliente);
                cmd.Parameters.AddWithValue("@docActual", docActual);
                cmd.Parameters.AddWithValue("@DocumentoCliente", myCliente.DocumentoCliente);
                cmd.Parameters.AddWithValue("@NombreCliente", myCliente.NombreCliente);
                cmd.Parameters.AddWithValue("@ApellidoCliente", myCliente.ApellidoCliente);
                cmd.Parameters.AddWithValue("@DireccionResidenciaCliente", myCliente.DireccionResidenciaCliente);
                cmd.Parameters.AddWithValue("@TelefonoFijoCliente", myCliente.TelefonoFijoCliente);
                cmd.Parameters.AddWithValue("@TelefonoCelularCliente", myCliente.TelefonoCelularCliente);
                cmd.Parameters.AddWithValue("@TipoDocumentoCliente", myCliente.TipoDocumentoCliente);
                cmd.Parameters.AddWithValue("@FechaExpedicionDocumentoCliente", myCliente.FechaExpedicionDocumentoCliente);
                cmd.Parameters.AddWithValue("@GeneroCliente", myCliente.GeneroCliente);
                cmd.Parameters.AddWithValue("@CiudadNacimientoCliente", myCliente.CiudadNacimientoCliente);
                cmd.Parameters.AddWithValue("@DireccionTrabajoCliente", myCliente.DireccionTrabajoCliente);
                cmd.Parameters.AddWithValue("@TelefonoTrabajoCliente", myCliente.TelefonoTrabajoCliente);
                cmd.Parameters.AddWithValue("@EmpleoCliente", myCliente.EmpleoCliente);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {
                this.Error = exception.Message;
            }
            return Estado;
        }
        /*MÉTODO PARA EDITAR EL CLIENTE POR PARTE DEL ASESOR*/
        public Boolean EditarClienteContacto(string direccionResidencia, string telFijo, string telCel, string telTrabajo, string docActual)
        {
            Boolean Estado = false;
            try
            {

                string sql = "update cliente set DireccionResidenciaCliente = @DireccionResidenciaCliente, TelefonoFijoCliente = @TelefonoFijoCliente, TelefonoCelularCliente = @TelefonoCelularCliente, TelefonoTrabajoCliente = @TelefonoTrabajoCliente where (DocumentoCliente = @docActual)";
                SqlCommand cmd = new SqlCommand(sql, ConexionCliente);
                cmd.Parameters.AddWithValue("@docActual", docActual);
                cmd.Parameters.AddWithValue("@DireccionResidenciaCliente", direccionResidencia);
                cmd.Parameters.AddWithValue("@TelefonoFijoCliente", telFijo);
                cmd.Parameters.AddWithValue("@TelefonoCelularCliente", telCel);
                cmd.Parameters.AddWithValue("@TelefonoTrabajoCliente", telTrabajo);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {
                this.Error = exception.Message;
            }
            return Estado;
        }


        /*MÉTODO PARA ELIMINAR EL CLIENTE*/
        public Boolean eliminarCliente(string DocumentoCliente)
        {
            Boolean Estado = false;
            try
            {
                string sql = "delete from cliente where DocumentoCliente = @DocumentoCliente";
                SqlCommand cmd = new SqlCommand(sql, ConexionCliente);
                cmd.Parameters.AddWithValue("@DocumentoCliente", DocumentoCliente);
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