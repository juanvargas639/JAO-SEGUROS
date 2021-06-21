using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace JAO_Seguros
{
    public class ConexionSQL
    {
        /*ATRIBUTOS DE LA CLASE*/
        private static SqlConnection ConexionPrincipal;
        private static string ErrorConexion;

        /*MÉTODO DE CONEXIÓN DE LA BASE*/
        public static SqlConnection getConexion()
        {
            if (ConexionPrincipal != null)
                return ConexionPrincipal;
            ConexionPrincipal = new SqlConnection(@"Data Source=DESKTOP-J5CQ0QE\SQLEXPRESS;Initial Catalog=jaoseguros;User ID=juan;Password=7831155");
            try
            {
                ConexionPrincipal.Open();
                return ConexionPrincipal;
            }
            catch (Exception e)
            {
                ErrorConexion = e.Message;
                return null;
            }

        }
    }
}