using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace JAO_Seguros
{
    public class GestionPolizaTipo
    {
        /*--CREAR ATRIBUTOS DE LA CONEXIÓN A LA BASE DE DATOS--*/
        public SqlConnection ConexionPolizaTipo;
        public string Error;
        /*CONTRUCTOR DE LA CLASE*/
        public GestionPolizaTipo()
        {
            this.ConexionPolizaTipo = ConexionSQL.getConexion();
        }
        /*MÉTODO PARA CONSULTAR PÓLIZA DE TIPO ESTUDIANTIL*/
        public PolizaTipoEstudiantil consultarPolizaEstudiantil(string CodigoPoliza)
        {
            string sql = "select * from poliza_estudiantil where CodigoPoliza =@CodigoPoliza";
            SqlCommand cmd = new SqlCommand(sql, ConexionPolizaTipo);
            cmd.Parameters.AddWithValue("@CodigoPoliza", CodigoPoliza);
            SqlDataReader registro = cmd.ExecuteReader();
            if (registro.Read())
            {
                PolizaTipoEstudiantil myPoliza = new PolizaTipoEstudiantil();
                myPoliza.CodigoPoliza = registro.GetString(0);
                myPoliza.FechaNacimiento = registro.GetDateTime(1);
                myPoliza.Institucion = registro.GetString(2);
                myPoliza.AnuarioCursado = registro.GetString(3);
                myPoliza.CursoSemestre = registro.GetString(4);
                registro.Close();
                return myPoliza;
            }
            else
            {
                registro.Close();
                return null;
            }

        }
        /*MÉTODO PARA CONSULTAR PÓLIZA DE TIPO HOGAR*/
        public PolizaTipoHogar consultarPolizaHogar(string CodigoPoliza)
        {
            string sql = "select * from poliza_hogar where CodigoPoliza =@CodigoPoliza";
            SqlCommand cmd = new SqlCommand(sql, ConexionPolizaTipo);
            cmd.Parameters.AddWithValue("@CodigoPoliza", CodigoPoliza);
            SqlDataReader registro = cmd.ExecuteReader();
            if (registro.Read())
            {
                PolizaTipoHogar myPoliza = new PolizaTipoHogar();
                myPoliza.CodigoPoliza = registro.GetString(0);
                myPoliza.FechaNacimiento = registro.GetDateTime(1);
                myPoliza.ValorEnseres = registro.GetString(2);
                myPoliza.ValorConstruccion = registro.GetString(3);
                myPoliza.Localidad = registro.GetString(4);
                registro.Close();
                return myPoliza;
            }
            else
            {
                registro.Close();
                return null;
            }

        }
        /*MÉTODO PARA CONSULTAR PÓLIZA DE TIPO PYME*/
        public PolizaTipoPyme consultarPolizaPyme(string CodigoPoliza)
        {
            string sql = "select * from poliza_pyme where CodigoPoliza =@CodigoPoliza";
            SqlCommand cmd = new SqlCommand(sql, ConexionPolizaTipo);
            cmd.Parameters.AddWithValue("@CodigoPoliza", CodigoPoliza);
            SqlDataReader registro = cmd.ExecuteReader();
            if (registro.Read())
            {
                PolizaTipoPyme myPoliza = new PolizaTipoPyme();
                myPoliza.CodigoPoliza = registro.GetString(0);
                myPoliza.ValorAsegurado = registro.GetString(1);
                myPoliza.TipoNegocio = registro.GetString(2);
                myPoliza.NombreNegocio = registro.GetString(3);
                myPoliza.LocalidadNegocio = registro.GetString(4);
                registro.Close();
                return myPoliza;
            }
            else
            {
                registro.Close();
                return null;
            }

        }
        /*MÉTODO PARA CONSULTAR PÓLIZA DE TIPO ESTUDIANTIL*/
        public PolizaTipoRCMedica consultarPolizaRCMedica(string CodigoPoliza)
        {
            string sql = "select * from poliza_rcmedica where CodigoPoliza =@CodigoPoliza";
            SqlCommand cmd = new SqlCommand(sql, ConexionPolizaTipo);
            cmd.Parameters.AddWithValue("@CodigoPoliza", CodigoPoliza);
            SqlDataReader registro = cmd.ExecuteReader();
            if (registro.Read())
            {
                PolizaTipoRCMedica myPoliza = new PolizaTipoRCMedica();
                myPoliza.CodigoPoliza = registro.GetString(0);
                myPoliza.FechaNacimiento = registro.GetDateTime(1);
                myPoliza.TarjetaProfesional = registro.GetString(2);
                myPoliza.FechaExpedicion = registro.GetDateTime(3);
                registro.Close();
                return myPoliza;
            }
            else
            {
                registro.Close();
                return null;
            }

        }
        /*MÉTODO PARA CONSULTAR PÓLIZA DE TIPO VEHICULAR*/
        public PolizaTipoVehicular consultarPolizaVehicular(string CodigoPoliza)
        {
            string sql = "select * from poliza_vehicular where CodigoPoliza =@CodigoPoliza";
            SqlCommand cmd = new SqlCommand(sql, ConexionPolizaTipo);
            cmd.Parameters.AddWithValue("@CodigoPoliza", CodigoPoliza);
            SqlDataReader registro = cmd.ExecuteReader();
            if (registro.Read())
            {
                PolizaTipoVehicular myPoliza = new PolizaTipoVehicular();
                myPoliza.CodigoPoliza = registro.GetString(0);
                myPoliza.FechaNacimiento = registro.GetDateTime(1);
                myPoliza.TipoAuto = registro.GetString(2);
                myPoliza.Placa = registro.GetString(3);
                registro.Close();
                return myPoliza;
            }
            else
            {
                registro.Close();
                return null;
            }

        }
        /*MÉTODO PARA CONSULTAR PÓLIZA DE TIPO VIDA*/
        public PolizaTipoVida consultarPolizaVida(string CodigoPoliza)
        {
            string sql = "select * from poliza_vida where CodigoPoliza =@CodigoPoliza";
            SqlCommand cmd = new SqlCommand(sql, ConexionPolizaTipo);
            cmd.Parameters.AddWithValue("@CodigoPoliza", CodigoPoliza);
            SqlDataReader registro = cmd.ExecuteReader();
            if (registro.Read())
            {
                PolizaTipoVida myPoliza = new PolizaTipoVida();
                myPoliza.CodigoPoliza = registro.GetString(0);
                myPoliza.ValorBeneficiario = registro.GetString(1);
                myPoliza.FechaNacimiento = registro.GetDateTime(2);
                registro.Close();
                return myPoliza;
            }
            else
            {
                registro.Close();
                return null;
            }

        }
        /*MÉTODO PARA EDITAR LA PÓLIZA ESTUDIANTIL*/
        public Boolean EditarPolizaEstudiantil(PolizaTipoEstudiantil myPoliza)
        {
            Boolean Estado = false;
            try
            {

                string sql = "update poliza_estudiantil set CodigoPoliza = @CodigoPoliza, FechaNacimiento = @FechaNacimiento, Institucion = @Institucion, AnuarioCursado = @AnuarioCursado, CursoSemestre = @CursoSemestre where (CodigoPoliza = @CodigoPoliza)";
                SqlCommand cmd = new SqlCommand(sql, ConexionPolizaTipo);
                cmd.Parameters.AddWithValue("@CodigoPoliza", myPoliza.CodigoPoliza);
                cmd.Parameters.AddWithValue("@FechaNacimiento", myPoliza.FechaNacimiento);
                cmd.Parameters.AddWithValue("@Institucion", myPoliza.Institucion);
                cmd.Parameters.AddWithValue("@AnuarioCursado", myPoliza.AnuarioCursado);
                cmd.Parameters.AddWithValue("@CursoSemestre", myPoliza.CursoSemestre);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {
                this.Error = exception.Message;
            }
            return Estado;
        }
        /*MÉTODO PARA EDITAR LA PÓLIZA HOGAR*/
        public Boolean EditarPolizaHogar(PolizaTipoHogar myPoliza)
        {
            Boolean Estado = false;
            try
            {

                string sql = "update poliza_hogar set CodigoPoliza = @CodigoPoliza, FechaNacimiento = @FechaNacimiento, ValorEnseres = @ValorEnseres, ValorConstruccion = @ValorConstruccion, Localidad = @Localidad where (CodigoPoliza = @CodigoPoliza)";
                SqlCommand cmd = new SqlCommand(sql, ConexionPolizaTipo);
                cmd.Parameters.AddWithValue("@CodigoPoliza", myPoliza.CodigoPoliza);
                cmd.Parameters.AddWithValue("@FechaNacimiento", myPoliza.FechaNacimiento);
                cmd.Parameters.AddWithValue("@ValorEnseres", myPoliza.ValorEnseres);
                cmd.Parameters.AddWithValue("@ValorConstruccion", myPoliza.ValorConstruccion);
                cmd.Parameters.AddWithValue("@Localidad", myPoliza.Localidad);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {
                this.Error = exception.Message;
            }
            return Estado;
        }
        /*MÉTODO PARA EDITAR LA PÓLIZA PYME*/
        public Boolean EditarPolizaPyme(PolizaTipoPyme myPoliza)
        {
            Boolean Estado = false;
            try
            {

                string sql = "update poliza_pyme set CodigoPoliza = @CodigoPoliza, ValorAsegurado = @ValorAsegurado, TipoNegocio = @TipoNegocio, NombreNegocio = @NombreNegocio, LocalidadNegocio = @LocalidadNegocio where (CodigoPoliza = @CodigoPoliza)";
                SqlCommand cmd = new SqlCommand(sql, ConexionPolizaTipo);
                cmd.Parameters.AddWithValue("@CodigoPoliza", myPoliza.CodigoPoliza);
                cmd.Parameters.AddWithValue("@ValorAsegurado", myPoliza.ValorAsegurado);
                cmd.Parameters.AddWithValue("@TipoNegocio", myPoliza.TipoNegocio);
                cmd.Parameters.AddWithValue("@NombreNegocio", myPoliza.NombreNegocio);
                cmd.Parameters.AddWithValue("@LocalidadNegocio", myPoliza.LocalidadNegocio);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {
                this.Error = exception.Message;
            }
            return Estado;
        }
        /*MÉTODO PARA EDITAR LA PÓLIZA RC MÉDICA*/
        public Boolean EditarPolizaRC(PolizaTipoRCMedica myPoliza)
        {
            Boolean Estado = false;
            try
            {

                string sql = "update poliza_rcmedica set CodigoPoliza = @CodigoPoliza, FechaNacimiento = @FechaNacimiento, TarjetaProfesional = @TarjetaProfesional, FechaExpedicion = @FechaExpedicion where (CodigoPoliza = @CodigoPoliza)";
                SqlCommand cmd = new SqlCommand(sql, ConexionPolizaTipo);
                cmd.Parameters.AddWithValue("@CodigoPoliza", myPoliza.CodigoPoliza);
                cmd.Parameters.AddWithValue("@FechaNacimiento", myPoliza.FechaNacimiento);
                cmd.Parameters.AddWithValue("@TarjetaProfesional", myPoliza.TarjetaProfesional);
                cmd.Parameters.AddWithValue("@FechaExpedicion", myPoliza.FechaExpedicion);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {
                this.Error = exception.Message;
            }
            return Estado;
        }
        /*MÉTODO PARA EDITAR LA PÓLIZA VEHICULAR*/
        public Boolean EditarPolizaVehicular(PolizaTipoVehicular myPoliza)
        {
            Boolean Estado = false;
            try
            {

                string sql = "update poliza_vehicular set CodigoPoliza = @CodigoPoliza, FechaNacimiento = @FechaNacimiento, TipoAuto = @TipoAuto, Placa = @Placa where (CodigoPoliza = @CodigoPoliza)";
                SqlCommand cmd = new SqlCommand(sql, ConexionPolizaTipo);
                cmd.Parameters.AddWithValue("@CodigoPoliza", myPoliza.CodigoPoliza);
                cmd.Parameters.AddWithValue("@FechaNacimiento", myPoliza.FechaNacimiento);
                cmd.Parameters.AddWithValue("@TipoAuto", myPoliza.TipoAuto);
                cmd.Parameters.AddWithValue("@Placa", myPoliza.Placa);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {
                this.Error = exception.Message;
            }
            return Estado;
        }
        /*MÉTODO PARA EDITAR LA PÓLIZA VIDA*/
        public Boolean EditarPolizaVida(PolizaTipoVida myPoliza)
        {
            Boolean Estado = false;
            try
            {

                string sql = "update poliza_vida set CodigoPoliza = @CodigoPoliza, FechaNacimiento = @FechaNacimiento, ValorBeneficiario = @ValorBeneficiario where (CodigoPoliza = @CodigoPoliza)";
                SqlCommand cmd = new SqlCommand(sql, ConexionPolizaTipo);
                cmd.Parameters.AddWithValue("@CodigoPoliza", myPoliza.CodigoPoliza);
                cmd.Parameters.AddWithValue("@FechaNacimiento", myPoliza.FechaNacimiento);
                cmd.Parameters.AddWithValue("@ValorBeneficiario", myPoliza.ValorBeneficiario); 
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {
                this.Error = exception.Message;
            }
            return Estado;
        }
        /*MÉTODO PARA INSERTAR LA PÓLIZA ESTUDIANTIL*/
        public Boolean InsertarPolizaEstudiantil(PolizaTipoEstudiantil myPoliza)
        {
            Boolean Estado = false;
            try
            {
                string sql = "insert into poliza_estudiantil (CodigoPoliza, FechaNacimiento, Institucion, AnuarioCursado, CursoSemestre) values (@CodigoPoliza, @FechaNacimiento, @Institucion, @AnuarioCursado, @CursoSemestre)";
                SqlCommand cmd = new SqlCommand(sql, ConexionPolizaTipo);
                cmd.Parameters.AddWithValue("@CodigoPoliza", myPoliza.CodigoPoliza);
                cmd.Parameters.AddWithValue("@FechaNacimiento", myPoliza.FechaNacimiento);
                cmd.Parameters.AddWithValue("@Institucion", myPoliza.Institucion);
                cmd.Parameters.AddWithValue("@AnuarioCursado", myPoliza.AnuarioCursado);
                cmd.Parameters.AddWithValue("@CursoSemestre", myPoliza.CursoSemestre);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {
                this.Error = exception.Message;
            }
            return Estado;
        }
        /*MÉTODO PARA INSERTAR LA PÓLIZA HOGAR*/
        public Boolean InsertarPolizaHogar(PolizaTipoHogar myPoliza)
        {
            Boolean Estado = false;
            try
            {
                string sql = "insert into poliza_hogar (CodigoPoliza, FechaNacimiento, ValorEnseres, ValorConstruccion, Localidad) values (@CodigoPoliza, @FechaNacimiento, @ValorEnseres, @ValorConstruccion, @Localidad)";
                SqlCommand cmd = new SqlCommand(sql, ConexionPolizaTipo);
                cmd.Parameters.AddWithValue("@CodigoPoliza", myPoliza.CodigoPoliza);
                cmd.Parameters.AddWithValue("@FechaNacimiento", myPoliza.FechaNacimiento);
                cmd.Parameters.AddWithValue("@ValorEnseres", myPoliza.ValorEnseres);
                cmd.Parameters.AddWithValue("@ValorConstruccion", myPoliza.ValorConstruccion);
                cmd.Parameters.AddWithValue("@Localidad", myPoliza.Localidad);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {
                this.Error = exception.Message;
            }
            return Estado;
        }
        /*MÉTODO PARA INSERTAR LA PÓLIZA ESTUDIANTIL*/
        public Boolean InsertarPolizaPyme(PolizaTipoPyme myPoliza)
        {
            Boolean Estado = false;
            try
            {
                string sql = "insert into poliza_pyme (CodigoPoliza, ValorAsegurado, TipoNegocio, NombreNegocio, LocalidadNegocio) values (@CodigoPoliza, @ValorAsegurado, @TipoNegocio, @NombreNegocio, @LocalidadNegocio)";
                SqlCommand cmd = new SqlCommand(sql, ConexionPolizaTipo);
                cmd.Parameters.AddWithValue("@CodigoPoliza", myPoliza.CodigoPoliza);
                cmd.Parameters.AddWithValue("@ValorAsegurado", myPoliza.ValorAsegurado);
                cmd.Parameters.AddWithValue("@TipoNegocio", myPoliza.TipoNegocio);
                cmd.Parameters.AddWithValue("@NombreNegocio", myPoliza.NombreNegocio);
                cmd.Parameters.AddWithValue("@LocalidadNegocio", myPoliza.LocalidadNegocio);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {
                this.Error = exception.Message;
            }
            return Estado;
        }
        /*MÉTODO PARA INSERTAR LA PÓLIZA RC MÉDICA*/
        public Boolean InsertarPolizaRCMedica(PolizaTipoRCMedica myPoliza)
        {
            Boolean Estado = false;
            try
            {
                string sql = "insert into poliza_rcmedica (CodigoPoliza, FechaNacimiento, TarjetaProfesional, FechaExpedicion) values (@CodigoPoliza, @FechaNacimiento, @TarjetaProfesional, @FechaExpedicion)";
                SqlCommand cmd = new SqlCommand(sql, ConexionPolizaTipo);
                cmd.Parameters.AddWithValue("@CodigoPoliza", myPoliza.CodigoPoliza);
                cmd.Parameters.AddWithValue("@FechaNacimiento", myPoliza.FechaNacimiento);
                cmd.Parameters.AddWithValue("@TarjetaProfesional", myPoliza.TarjetaProfesional);
                cmd.Parameters.AddWithValue("@FechaExpedicion", myPoliza.FechaExpedicion);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {
                this.Error = exception.Message;
            }
            return Estado;
        }
        /*MÉTODO PARA INSERTAR LA PÓLIZA VEHICULAR*/
        public Boolean InsertarPolizaVehicular(PolizaTipoVehicular myPoliza)
        {
            Boolean Estado = false;
            try
            {
                string sql = "insert into poliza_vehicular (CodigoPoliza, FechaNacimiento, TipoAuto, Placa) values (@CodigoPoliza, @FechaNacimiento, @TipoAuto, @Placa)";
                SqlCommand cmd = new SqlCommand(sql, ConexionPolizaTipo);
                cmd.Parameters.AddWithValue("@CodigoPoliza", myPoliza.CodigoPoliza);
                cmd.Parameters.AddWithValue("@FechaNacimiento", myPoliza.FechaNacimiento);
                cmd.Parameters.AddWithValue("@TipoAuto", myPoliza.TipoAuto);
                cmd.Parameters.AddWithValue("@Placa", myPoliza.Placa);
                cmd.ExecuteNonQuery();
                Estado = true;
            }
            catch (SqlException exception)
            {
                this.Error = exception.Message;
            }
            return Estado;
        }
        /*MÉTODO PARA INSERTAR LA PÓLIZA VIDA**/
        public Boolean InsertarPolizaVida(PolizaTipoVida myPoliza)
        {
            Boolean Estado = false;
            try
            {
                string sql = "insert into poliza_vida (CodigoPoliza, FechaNacimiento, ValorBeneficiario) values (@CodigoPoliza, @FechaNacimiento, @ValorBeneficiario)";
                SqlCommand cmd = new SqlCommand(sql, ConexionPolizaTipo);
                cmd.Parameters.AddWithValue("@CodigoPoliza", myPoliza.CodigoPoliza);
                cmd.Parameters.AddWithValue("@FechaNacimiento", myPoliza.FechaNacimiento);
                cmd.Parameters.AddWithValue("@ValorBeneficiario", myPoliza.ValorBeneficiario);
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