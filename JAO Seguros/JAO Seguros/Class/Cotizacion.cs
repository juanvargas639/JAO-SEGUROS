using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JAO_Seguros
{
    public class Cotizacion
    //CLASE DEL OBJETO COTIZACION
    {
        //ATRIBUTOS PRIVADOS DEL OBJETO
        private int _idcotizacion;
        private string _nombreprospecto;
        private string _apellidoprospecto;
        private string _descripcioncotizacion;
        private string _ramocotizacion;
        private string _correoprospecto;
        private DateTime _fechacotizacion;
        private string _enviadacotizacion;
        //MODIFICADORES DE ACCESO A LOS ATRIBUTOS
        public int IDCotizacion
        {
            get
            {
                return _idcotizacion;
            }

            set
            {
                _idcotizacion = value;
            }
        }
        public string NombreProspecto
        {
            get
            {
                return _nombreprospecto;
            }

            set
            {
                _nombreprospecto = value;
            }
        }
        public string ApellidoProspecto
        {
            get
            {
                return _apellidoprospecto;
            }

            set
            {
                _apellidoprospecto = value;
            }
        }
        public string DescripcionCotizacion
        {
            get
            {
                return _descripcioncotizacion;
            }

            set
            {
                _descripcioncotizacion = value;
            }
        }
        public string RamoCotizacion
        {
            get
            {
                return _ramocotizacion;
            }

            set
            {
                _ramocotizacion = value;
            }
        }
        public string CorreoProspecto
        {
            get
            {
                return _correoprospecto;
            }

            set
            {
                _correoprospecto = value;
            }
        }
        public DateTime FechaCotizacion
        {
            get
            {
                return _fechacotizacion;
            }

            set
            {
                _fechacotizacion = value;
            }
        }
        public string EnviadaCotizacion
        {
            get
            {
                return _enviadacotizacion;
            }

            set
            {
                _enviadacotizacion = value;
            }
        }
    }
}
