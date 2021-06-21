using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace JAO_Seguros
{
    public class GestionPoliza
    {
        /*--CREAR ATRIBUTOS DE LA CONEXIÓN A LA BASE DE DATOS--*/
        public SqlConnection ConexionPoliza;
        public string Error;
        //Constructor
        public GestionPoliza()
        {
            this.ConexionPoliza = ConexionSQL.getConexion();
        }
        /*MÉTODO PARA LISTAR LAS PÓLIZAS ACTUALES*/
        public List<Poliza> listadoPoliza()
        {
            List<Poliza> listadoPoliza = new List<Poliza>();
            string sql = "select * from poliza";
            SqlCommand cmd = new SqlCommand(sql, ConexionPoliza);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                Poliza polizasActuales = new Poliza();
                polizasActuales.CodigoPoliza = registro.GetString(0);
                polizasActuales.NombreTomador = registro.GetString(1);
                polizasActuales.DocumentoTomador = registro.GetString(2);
                polizasActuales.NombreBeneficiario = registro.GetString(3);
                polizasActuales.DocumentoBeneficiario = registro.GetString(4);
                polizasActuales.NombreAsegurado = registro.GetString(5);
                polizasActuales.DocumentoAsegurado = registro.GetString(6);
                polizasActuales.FechaInicioPoliza = registro.GetDateTime(7);
                polizasActuales.FechaFinPoliza = registro.GetDateTime(8);
                polizasActuales.FechaExpedicionPoliza = registro.GetDateTime(9);
                polizasActuales.TipoPagoPoliza = registro.GetString(10);
                polizasActuales.PolizaVirtual = registro.GetString(11);
                polizasActuales.DocumentoCliente = registro.GetString(12);
                polizasActuales.NitAseguradora = registro.GetString(13);
                polizasActuales.TipoPoliza = registro.GetString(14);
                listadoPoliza.Add(polizasActuales);
            }
            registro.Close();
            return listadoPoliza;
        }
        /*MÉTODO PARA CONSULTAR PÓLIZA MEDIANTE EL DOCUMENTO DEL CLIENTE*/
        public List<Poliza> listadoPolizaCliente(string DocumentoCliente)
        {
            List<Poliza> listadoPoliza = new List<Poliza>();
            string sql = "select TipoPoliza, CodigoPoliza from poliza where DocumentoCliente = @DocumentoCliente";
            SqlCommand cmd = new SqlCommand(sql, ConexionPoliza);
            cmd.Parameters.AddWithValue("@DocumentoCliente", DocumentoCliente);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                Poliza polizasTraida = new Poliza();
                polizasTraida.TipoPoliza = registro.GetString(0);
                polizasTraida.CodigoPoliza = registro.GetString(1);
                listadoPoliza.Add(polizasTraida);
            }
            registro.Close();
            return listadoPoliza;
        }
        /*MÉTODO DE CONSULTA DE LAS PÓLIZAS DE LOS CLIENTES RELACIONADOS AL EMPLEADO*/
        public List<Poliza> listadoPolizaAsesor(string IDEmpleado)
        {
            List<Poliza> listadoPoliza = new List<Poliza>();
            string sql = "select CodigoPoliza, NombreTomador, DocumentoTomador, NombreBeneficiario, DocumentoBeneficiario, NombreAsegurado, DocumentoAsegurado, FechaInicioPoliza, FechaFinPoliza, FechaExpedicionPoliza, TipoPagoPoliza, PolizaVirtual, DocumentoCliente, NitAseguradora, TipoPoliza  FROM poliza where DocumentoCliente in(select DocumentoCliente from cliente where IDEmpleado = @IDEmpleado)";
            SqlCommand cmd = new SqlCommand(sql, ConexionPoliza);
            cmd.Parameters.AddWithValue("@IDEmpleado", IDEmpleado);
            SqlDataReader registro = cmd.ExecuteReader();
            while (registro.Read())
            {
                Poliza polizasActuales = new Poliza();
                polizasActuales.CodigoPoliza = registro.GetString(0);
                polizasActuales.NombreTomador = registro.GetString(1);
                polizasActuales.DocumentoTomador = registro.GetString(2);
                polizasActuales.NombreBeneficiario = registro.GetString(3);
                polizasActuales.DocumentoBeneficiario = registro.GetString(4);
                polizasActuales.NombreAsegurado = registro.GetString(5);
                polizasActuales.DocumentoAsegurado = registro.GetString(6);
                polizasActuales.FechaInicioPoliza = registro.GetDateTime(7);
                polizasActuales.FechaFinPoliza = registro.GetDateTime(8);
                polizasActuales.FechaExpedicionPoliza = registro.GetDateTime(9);
                polizasActuales.TipoPagoPoliza = registro.GetString(10);
                polizasActuales.PolizaVirtual = registro.GetString(11);
                polizasActuales.DocumentoCliente = registro.GetString(12);
                polizasActuales.NitAseguradora = registro.GetString(13);
                polizasActuales.TipoPoliza = registro.GetString(14);
                listadoPoliza.Add(polizasActuales);
            }
            registro.Close();
            if (listadoPoliza == null)
            {
                return null;
            } else
            {
                return listadoPoliza;
            }
        }
        /*MÉTODO PARA CONSULTAR POLIZA MEDIANTE EL CODIGOPOLIZA*/
        public Poliza consultarPoliza(string CodigoPoliza)
        {
            string sql = "select * from poliza where CodigoPoliza =@CodigoPoliza";
            SqlCommand cmd = new SqlCommand(sql, ConexionPoliza);
            cmd.Parameters.AddWithValue("@CodigoPoliza", CodigoPoliza);
            SqlDataReader registro = cmd.ExecuteReader();
            if (registro.Read())
            {
                Poliza myPoliza = new Poliza();
                myPoliza.CodigoPoliza = registro.GetString(0);
                myPoliza.NombreTomador = registro.GetString(1);
                myPoliza.DocumentoTomador= registro.GetString(2);
                myPoliza.NombreBeneficiario = registro.GetString(3);
                myPoliza.DocumentoBeneficiario = registro.GetString(4);
                myPoliza.NombreAsegurado = registro.GetString(5);
                myPoliza.DocumentoAsegurado = registro.GetString(6);
                myPoliza.FechaInicioPoliza = registro.GetDateTime(7);
                myPoliza.FechaFinPoliza = registro.GetDateTime(8);
                myPoliza.FechaExpedicionPoliza = registro.GetDateTime(9);
                myPoliza.TipoPagoPoliza = registro.GetString(10);
                myPoliza.PolizaVirtual = registro.GetString(11);
                myPoliza.DocumentoCliente = registro.GetString(12);
                myPoliza.NitAseguradora = registro.GetString(13);
                myPoliza.TipoPoliza = registro.GetString(14);
                registro.Close();
                return myPoliza;
            }
            else
            {
                registro.Close();
                return null;
            }

        }
        /*MÉTODO PARA VALIDAR SI EXISTE LA PÓLIZA*/
        public Boolean existePoliza(string CodigoPoliza)
        {
            string sql = ("Select * from poliza where CodigoPoliza = @CodigoPoliza");
            SqlCommand cmd = new SqlCommand(sql, ConexionPoliza);
            cmd.Parameters.AddWithValue("@CodigoPoliza", CodigoPoliza);
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
        /*MÉTODO PARA INSERTAR UNA NUEVA PÓLIZA*/
        public Boolean InsertarPoliza(Poliza myPoliza)
        {
            Boolean Estado = false;
            try
            {
                string sql = "insert into poliza (CodigoPoliza, NombreTomador, DocumentoTomador, NombreBeneficiario, DocumentoBeneficiario, NombreAsegurado, DocumentoAsegurado, FechaInicioPoliza, FechaFinPoliza, FechaExpedicionPoliza, TipoPagoPoliza, PolizaVirtual, DocumentoCliente, NitAseguradora, TipoPoliza) values (@CodigoPoliza, @NombreTomador, @DocumentoTomador, @NombreBeneficiario, @DocumentoBeneficiario, @NombreAsegurado, @DocumentoAsegurado, @FechaInicioPoliza, @FechaFinPoliza, @FechaExpedicionPoliza, @TipoPagoPoliza, @PolizaVirtual, @DocumentoCliente, @NitAseguradora, @TipoPoliza)";
                SqlCommand cmd = new SqlCommand(sql, ConexionPoliza);
                cmd.Parameters.AddWithValue("@CodigoPoliza", myPoliza.CodigoPoliza);
                cmd.Parameters.AddWithValue("@NombreTomador", myPoliza.NombreTomador);
                cmd.Parameters.AddWithValue("@DocumentoTomador", myPoliza.DocumentoTomador);
                cmd.Parameters.AddWithValue("@NombreBeneficiario", myPoliza.NombreBeneficiario);
                cmd.Parameters.AddWithValue("@DocumentoBeneficiario", myPoliza.DocumentoBeneficiario);
                cmd.Parameters.AddWithValue("@NombreAsegurado", myPoliza.NombreAsegurado);
                cmd.Parameters.AddWithValue("@DocumentoAsegurado", myPoliza.DocumentoAsegurado);
                cmd.Parameters.AddWithValue("@FechaInicioPoliza", myPoliza.FechaInicioPoliza);
                cmd.Parameters.AddWithValue("@FechaFinPoliza", myPoliza.FechaFinPoliza);
                cmd.Parameters.AddWithValue("@FechaExpedicionPoliza", myPoliza.FechaExpedicionPoliza);
                cmd.Parameters.AddWithValue("@TipoPagoPoliza", myPoliza.TipoPagoPoliza);
                cmd.Parameters.AddWithValue("@PolizaVirtual", myPoliza.PolizaVirtual);
                cmd.Parameters.AddWithValue("@DocumentoCliente", myPoliza.DocumentoCliente);
                cmd.Parameters.AddWithValue("@NitAseguradora", myPoliza.NitAseguradora);
                cmd.Parameters.AddWithValue("@TipoPoliza", myPoliza.TipoPoliza);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {
                this.Error = exception.Message;
            }
            return Estado;
        }
        /*MÉTODO PARA EDITAR LA PÓLIZA*/
        public Boolean EditarPoliza(Poliza myPoliza, string codigoActual)
        {
            Boolean Estado = false;
            try
            {

                string sql = "update poliza set CodigoPoliza = @CodigoPoliza, NombreTomador = @NombreTomador, DocumentoTomador = @DocumentoTomador, NombreBeneficiario = @NombreBeneficiario, DocumentoBeneficiario = @DocumentoBeneficiario, NombreAsegurado = @NombreAsegurado, DocumentoAsegurado = @DocumentoAsegurado, FechaInicioPoliza = @FechaInicioPoliza, FechaFinPoliza = @FechaFinPoliza, FechaExpedicionPoliza = @FechaExpedicionPoliza, TipoPagoPoliza = @TipoPagoPoliza, PolizaVirtual = @PolizaVirtual, DocumentoCliente = @DocumentoCliente, NitAseguradora = @NitAseguradora, TipoPoliza = @TipoPoliza where (CodigoPoliza = @codigoActual)";
                SqlCommand cmd = new SqlCommand(sql, ConexionPoliza);
                cmd.Parameters.AddWithValue("@codigoActual", codigoActual);
                cmd.Parameters.AddWithValue("@CodigoPoliza", myPoliza.CodigoPoliza);
                cmd.Parameters.AddWithValue("@NombreTomador", myPoliza.NombreTomador);
                cmd.Parameters.AddWithValue("@DocumentoTomador", myPoliza.DocumentoTomador);
                cmd.Parameters.AddWithValue("@NombreBeneficiario", myPoliza.NombreBeneficiario);
                cmd.Parameters.AddWithValue("@DocumentoBeneficiario", myPoliza.DocumentoBeneficiario);
                cmd.Parameters.AddWithValue("@NombreAsegurado", myPoliza.NombreAsegurado);
                cmd.Parameters.AddWithValue("@DocumentoAsegurado", myPoliza.DocumentoAsegurado);
                cmd.Parameters.AddWithValue("@FechaInicioPoliza", myPoliza.FechaInicioPoliza);
                cmd.Parameters.AddWithValue("@FechaFinPoliza", myPoliza.FechaFinPoliza);
                cmd.Parameters.AddWithValue("@FechaExpedicionPoliza", myPoliza.FechaExpedicionPoliza);
                cmd.Parameters.AddWithValue("@TipoPagoPoliza", myPoliza.TipoPagoPoliza);
                cmd.Parameters.AddWithValue("@PolizaVirtual", myPoliza.PolizaVirtual);
                cmd.Parameters.AddWithValue("@DocumentoCliente", myPoliza.DocumentoCliente);
                cmd.Parameters.AddWithValue("@NitAseguradora", myPoliza.NitAseguradora);
                cmd.Parameters.AddWithValue("@TipoPoliza", myPoliza.TipoPoliza);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {
                this.Error = exception.Message;
            }
            return Estado;


        }
        /*MÉTODO PARA EDITAR LA UBICACIÓN DE LA POLIZA VIRTUAL*/
        public Boolean EditarPolizaVirtual(string codigoActual)
        {
            string elimPoliza = "Sin Poliza";
            Boolean Estado = false;
            try
            {

                string sql = "update poliza set PolizaVirtual = @PolizaVirtual where (CodigoPoliza = @codigoActual)";
                SqlCommand cmd = new SqlCommand(sql, ConexionPoliza);
                cmd.Parameters.AddWithValue("@codigoActual", codigoActual);
                cmd.Parameters.AddWithValue("@PolizaVirtual",elimPoliza);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {
                this.Error = exception.Message;
            }
            return Estado;


        }
        /*MÉTODO PARA ELIMINAR LA POLIZA*/
        public Boolean eliminarPoliza(string CodigoPoliza)
        {
            Boolean Estado = false;
            try
            {
                string sql = "delete from poliza where CodigoPoliza = @CodigoPoliza";
                SqlCommand cmd = new SqlCommand(sql, ConexionPoliza);
                cmd.Parameters.AddWithValue("@CodigoPoliza", CodigoPoliza);
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