using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JAO_Seguros
{
    //CLASE DEL OBJETO REPORTE
    public class Reporte
    {
        //ATRIBUTOS PRIVADOS DEL OBJETO
        private int _idreporte;
        private string _tiporeporte;
        private DateTime _fechareporte;
        private string _descripcionreporte;
        private string _documentocliente;
        private string _idempleado;
        private string _respuestareporte;
        //MODIFICADORES DE ACCESO A LOS ATRIBUTOS
        public int IDReporte
        {
            get
            {
                return _idreporte;
            }

            set
            {
                _idreporte = value;
            }
        }
        public string TipoReporte
        {
            get
            {
                return _tiporeporte;
            }

            set
            {
                _tiporeporte = value;
            }
        }
        public DateTime FechaReporte
        {
            get
            {
                return _fechareporte;
            }

            set
            {
                _fechareporte = value;
            }
        }
        public string DescripcionReporte
        {
            get
            {
                return _descripcionreporte;
            }

            set
            {
                _descripcionreporte = value;
            }
        }
        public string DocumentoCliente
        {
            get
            {
                return _documentocliente;
            }

            set
            {
                _documentocliente= value;
            }
        }
        public string IDEmpleado
        {
            get
            {
                return _idempleado;
            }

            set
            {
                _idempleado = value;
            }
        }
        public string RespuestaReporte
        {
            get
            {
                return _respuestareporte;
            }

            set
            {
                _respuestareporte = value;
            }
        }

    }
}