using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace JAO_Seguros
{
    public class GestionAdmin
    {
        /*--CREAR ATRIBUTOS DE LA CONEXIÓN A LA BASE DE DATOS--*/
        public SqlConnection ConexionAdmin;
        public string Error;
        /*--CONSTRUCTOR DE LA CLASE--*/
        public GestionAdmin()
        {
            this.ConexionAdmin = ConexionSQL.getConexion();
        }
        /*--MÉTODO PARA CONSULTAR ADMINISTRADOR MEDIANTE ID--*/
        public Administrador consultarAdmin(string IDAdministrador)
        {
            string sql = "select * from administrador where IDAdministrador =@IDAdministrador";
            SqlCommand cmd = new SqlCommand(sql, ConexionAdmin);
            cmd.Parameters.AddWithValue("@IDAdministrador", IDAdministrador);
            SqlDataReader registro = cmd.ExecuteReader();
            if (registro.Read())
            {
                Administrador myAdministrador = new Administrador();
                myAdministrador.IDAdministrador = registro.GetString(0);
                myAdministrador.NombreAdmin = registro.GetString(1);
                myAdministrador.ApellidoAdmin = registro.GetString(2);
                myAdministrador.RepresentanteLegalAdmin = registro.GetString(3);
                myAdministrador.CorreoAdmin = registro.GetString(4);
                myAdministrador.TelefonoAdmin = registro.GetString(5);
                registro.Close();
                return myAdministrador;
            }
            else
            {
                registro.Close();
                return null;
            }
        }
        /*--MÉTODO PARA CONSULTAR ID DE ADMINISTRADORES PARA DROPDOWNLIST--*/
        public List<Administrador> listadoIDAdmin()
        {
            List<Administrador> listadoIDAdmin = new List<Administrador>();
            string sql = "SELECT IDAdministrador from administrador";
            SqlCommand cmd = new SqlCommand(sql, ConexionAdmin);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                Administrador administradoresActuales = new Administrador();
                administradoresActuales.IDAdministrador = registro.GetString(0);
                listadoIDAdmin.Add(administradoresActuales);
            }
            registro.Close();
            return listadoIDAdmin;
        }
        /*--MÉTODO PARA LISTAR ADMINISTRADORES, EXCEPTO EL QUE HACE LA SOLICITUD--*/
        public List<Administrador> listadoAdministradores(string IDAdministrador)
        {
            List<Administrador> listadoAdministradores = new List<Administrador>();
            string sql = "select * from administrador";
            SqlCommand cmd = new SqlCommand(sql, ConexionAdmin);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                Administrador administradoresActuales = new Administrador();
                administradoresActuales.IDAdministrador = registro.GetString(0);
                administradoresActuales.NombreAdmin = registro.GetString(1);
                administradoresActuales.ApellidoAdmin = registro.GetString(2);
                administradoresActuales.RepresentanteLegalAdmin = registro.GetString(3);
                administradoresActuales.CorreoAdmin = registro.GetString(4);
                administradoresActuales.TelefonoAdmin = registro.GetString(5);
                if (administradoresActuales.IDAdministrador != IDAdministrador)
                {
                    listadoAdministradores.Add(administradoresActuales);
                }

            }
            registro.Close();
            return listadoAdministradores;
        }
        /*MÉTODO PARA VALIDAR NUMERO DE CLIENTES*/
        public Int32 numeroClientes()
        {

            string sql = "SELECT count(DocumentoCliente) FROM cliente";
            int numeroCliente = 0;
            SqlCommand cmd = new SqlCommand(sql, ConexionAdmin);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                numeroCliente = registro.GetInt32(0);
            }
            registro.Close();
            return numeroCliente;
        }
        /*MÉTODO PARA VALIDAR NUMERO DE REPORTES*/
        public Int32 numeroReportes()
        {
            
            string sql = "SELECT count(IDReporte) FROM reporte";
            int numeroReporte=0;
            SqlCommand cmd = new SqlCommand(sql, ConexionAdmin);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                numeroReporte = registro.GetInt32(0);
            }
            registro.Close();
            return numeroReporte;
        }
        /*MÉTODO PARA VALIDAR NUMERO DE COTIZACIONES*/
        public Int32 numeroCotizaciones()
        {

            string sql = "SELECT count(IDCotizacion) FROM cotizacion";
            int numeroCotizacion = 0;
            SqlCommand cmd = new SqlCommand(sql, ConexionAdmin);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                numeroCotizacion = registro.GetInt32(0);
            }
            registro.Close();
            return numeroCotizacion;
        }
        /*MÉTODO PARA VALIDAR NUMERO DE COTIZACIONES RAMO PYME*/
        public Int32 numeroCotizacionesPyme()
        {

            string sql = "SELECT count(IDCotizacion) FROM cotizacion where RamoCotizacion = 'Póliza Pyme'";
            int numeroCotizacionPyme = 0;
            SqlCommand cmd = new SqlCommand(sql, ConexionAdmin);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                numeroCotizacionPyme = registro.GetInt32(0);
            }
            registro.Close();
            return numeroCotizacionPyme;
        }
        /*MÉTODO PARA VALIDAR NUMERO DE COTIZACIONES RAMO RC*/
        public Int32 numeroCotizacionesRC()
        {

            string sql = "SELECT count(IDCotizacion) FROM cotizacion where RamoCotizacion = 'Póliza RC Médica'";
            int numeroCotizacionRC= 0;
            SqlCommand cmd = new SqlCommand(sql, ConexionAdmin);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                numeroCotizacionRC = registro.GetInt32(0);
            }
            registro.Close();
            return numeroCotizacionRC;
        }
        /*MÉTODO PARA VALIDAR NUMERO DE COTIZACIONES RAMO ESTUDIANTIL*/
        public Int32 numeroCotizacionesEstudiantil()
        {

            string sql = "SELECT count(IDCotizacion) FROM cotizacion where RamoCotizacion = 'Póliza Estudiantil'";
            int numeroCotizacionEstudiantil = 0;
            SqlCommand cmd = new SqlCommand(sql, ConexionAdmin);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                numeroCotizacionEstudiantil = registro.GetInt32(0);
            }
            registro.Close();
            return numeroCotizacionEstudiantil;
        }
        /*MÉTODO PARA VALIDAR NUMERO DE COTIZACIONES RAMO VEHICULAR*/
        public Int32 numeroCotizacionesVehicular()
        {

            string sql = "SELECT count(IDCotizacion) FROM cotizacion where RamoCotizacion = 'Póliza Vehicular'";
            int numeroCotizacionVehicular = 0;
            SqlCommand cmd = new SqlCommand(sql, ConexionAdmin);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                numeroCotizacionVehicular = registro.GetInt32(0);
            }
            registro.Close();
            return numeroCotizacionVehicular;
        }
        /*MÉTODO PARA VALIDAR NUMERO DE COTIZACIONES RAMO HOGAR*/
        public Int32 numeroCotizacionesHogar()
        {

            string sql = "SELECT count(IDCotizacion) FROM cotizacion where RamoCotizacion = 'Póliza Hogar'";
            int numeroCotizacionHogar = 0;
            SqlCommand cmd = new SqlCommand(sql, ConexionAdmin);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                numeroCotizacionHogar = registro.GetInt32(0);
            }
            registro.Close();
            return numeroCotizacionHogar;
        }
        /*MÉTODO PARA VALIDAR NUMERO DE COTIZACIONES RAMO VIDA*/
        public Int32 numeroCotizacionesVida()
        {

            string sql = "SELECT count(IDCotizacion) FROM cotizacion where RamoCotizacion = 'Póliza Vida'";
            int numeroCotizacionVida = 0;
            SqlCommand cmd = new SqlCommand(sql, ConexionAdmin);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                numeroCotizacionVida = registro.GetInt32(0);
            }
            registro.Close();
            return numeroCotizacionVida;
        }
        /*MÉTODO PARA VALIDAR NUMERO DE REPORTES SUGERENCIAS*/
        public Int32 numeroReportesSugerencias()
        {

            string sql = "SELECT COUNT(IDReporte) FROM reporte where TipoReporte = ('Sugerencia')";
            int numeroSugerencias = 0;
            SqlCommand cmd = new SqlCommand(sql, ConexionAdmin);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                numeroSugerencias = registro.GetInt32(0);
            }
            registro.Close();
            return numeroSugerencias;
        }
        /*MÉTODO PARA VALIDAR NUMERO DE REPORTES PETICIONES*/
        public Int32 numeroReportesPeticiones()
        {

            string sql = "SELECT COUNT(IDReporte) FROM reporte where TipoReporte = ('Petición')";
            int numeroReportes = 0;
            SqlCommand cmd = new SqlCommand(sql, ConexionAdmin);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                numeroReportes = registro.GetInt32(0);
            }
            registro.Close();
            return numeroReportes;
        }
        /*MÉTODO PARA VALIDAR NUMERO DE REPORTES QUEJAS*/
        public Int32 numeroReportesQuejas()
        {

            string sql = "SELECT COUNT(IDReporte) FROM reporte where TipoReporte = ('Queja')";
            int numeroQuejas = 0;
            SqlCommand cmd = new SqlCommand(sql, ConexionAdmin);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                numeroQuejas = registro.GetInt32(0);
            }
            registro.Close();
            return numeroQuejas;
        }
        /*MÉTODO PARA VALIDAR NUMERO DE REPORTES RECLAMOS*/
        public Int32 numeroReportesReclamos()
        {

            string sql = "SELECT COUNT(IDReporte) FROM reporte where TipoReporte = ('Reclamo')";
            int numeroReclamos = 0;
            SqlCommand cmd = new SqlCommand(sql, ConexionAdmin);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                numeroReclamos = registro.GetInt32(0);
            }
            registro.Close();
            return numeroReclamos;
        }
        /*MÉTODO PARA VALIDAR NUMERO DE REPORTES FELICITACIONES*/
        public Int32 numeroReportesFelicitaciones()
        {

            string sql = "SELECT COUNT(IDReporte) FROM reporte where TipoReporte = ('Felicitación')";
            int numeroFelicitacion = 0;
            SqlCommand cmd = new SqlCommand(sql, ConexionAdmin);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                numeroFelicitacion = registro.GetInt32(0);
            }
            registro.Close();
            return numeroFelicitacion;
        }


        /*--MÉTODO PARA VALIDAR SI EXISTE EL ADMINISTRADOR--*/
        public Boolean existeAdmin(string IDAdministrador)
        {
            string sql = ("Select * from administrador where IDAdministrador = @IDAdministrador");
            SqlCommand cmd = new SqlCommand(sql, ConexionAdmin);
            cmd.Parameters.AddWithValue("@IDAdministrador", IDAdministrador);
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
        /*--METODO PARA INSERTAR ADMINISTRADOR--*/
        public Boolean InsertarAdmin(Administrador Myadministrador)
        {
            Boolean Estado = false;
            try
            {
                string sql = "insert into administrador (IDAdministrador, NombreAdmin, ApellidoAdmin, RepresentanteLegalAdmin, CorreoAdmin, TelefonoAdmin) values (@IDAdministrador, @NombreAdmin, @ApellidoAdmin, @RepresentanteLegalAdmin, @CorreoAdmin, @TelefonoAdmin)";
                SqlCommand cmd = new SqlCommand(sql, ConexionAdmin);
                cmd.Parameters.AddWithValue("@IDAdministrador", Myadministrador.IDAdministrador);
                cmd.Parameters.AddWithValue("@NombreAdmin", Myadministrador.NombreAdmin);
                cmd.Parameters.AddWithValue("@ApellidoAdmin", Myadministrador.ApellidoAdmin);
                cmd.Parameters.AddWithValue("@RepresentanteLegalAdmin", Myadministrador.RepresentanteLegalAdmin);
                cmd.Parameters.AddWithValue("@CorreoAdmin", Myadministrador.CorreoAdmin);
                cmd.Parameters.AddWithValue("@TelefonoAdmin", Myadministrador.TelefonoAdmin);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {
                this.Error = exception.Message;
            }
            return Estado;
        }


        /*--MÉTODO PARA EDITAR ADMINISTRADOR--*/
        public Boolean EditarAdmin(Administrador Myadministrador, string idActual)
        {
            Boolean Estado = false;
            try
            {

                string sql = "update administrador set IDAdministrador = @IDAdministrador, NombreAdmin = @NombreAdmin, ApellidoAdmin = @ApellidoAdmin, RepresentanteLegalAdmin = @RepresentanteLegalAdmin, CorreoAdmin = @CorreoAdmin, TelefonoAdmin = @TelefonoAdmin where (IDAdministrador = @idActual)";
                SqlCommand cmd = new SqlCommand(sql, ConexionAdmin);
                cmd.Parameters.AddWithValue("@idActual", idActual);
                cmd.Parameters.AddWithValue("@IDAdministrador", Myadministrador.IDAdministrador);
                cmd.Parameters.AddWithValue("@NombreAdmin", Myadministrador.NombreAdmin);
                cmd.Parameters.AddWithValue("@ApellidoAdmin", Myadministrador.ApellidoAdmin);
                cmd.Parameters.AddWithValue("@RepresentanteLegalAdmin", Myadministrador.RepresentanteLegalAdmin);
                cmd.Parameters.AddWithValue("@CorreoAdmin", Myadministrador.CorreoAdmin);
                cmd.Parameters.AddWithValue("@TelefonoAdmin", Myadministrador.TelefonoAdmin);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {
                this.Error = exception.Message;
            }
            return Estado;
            
        }

        /*--MÉTODO PARA ELIMINAR EL ADMINISTRADOR--*/
        public Boolean eliminarAdmin(string IDAdministrador)
        {
            Boolean Estado = false;
            try
            {
                string sql = "delete from administrador where IDAdministrador = @IDAdministrador";
                SqlCommand cmd = new SqlCommand(sql, ConexionAdmin);
                cmd.Parameters.AddWithValue("@IDAdministrador", IDAdministrador);
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