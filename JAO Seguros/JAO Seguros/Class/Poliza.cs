using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JAO_Seguros
{
    //CLASE DEL OBJETO COTIZACION
    public class Poliza
    
    {
        //ATRIBUTOS PRIVADOS DEL OBJETO
        private string _codigopoliza;
        private string _nombretomador;
        private string _documentotomador;
        private string _nombrebeneficiario;
        private string _documentobeneficiario;
        private string _nombreasegurado;
        private string _documentoasegurado;
        private DateTime _fechainiciopoliza;
        private DateTime _fechafinpoliza;
        private DateTime _fechaexpedicionpoliza;
        private string _tipopagopoliza;
        private string _polizavirtual;
        private string _documentocliente;
        private string _nitaseguradora;
        private string _tipopoliza;
        //MODIFICADORES DE ACCESO A LOS ATRIBUTOS
        public string CodigoPoliza
        {
            get
            {
                return _codigopoliza;
            }

            set
            {
                _codigopoliza = value;
            }
        }
        public string NombreTomador
        {
            get
            {
                return _nombretomador;
            }

            set
            {
                _nombretomador = value;
            }
        }
        public string DocumentoTomador
        {
            get
            {
                return _documentotomador;
            }

            set
            {
                _documentotomador = value;
            }
        }
        public string NombreBeneficiario
        {
            get
            {
                return _nombrebeneficiario;
            }

            set
            {
                _nombrebeneficiario = value;
            }
        }
        public string DocumentoBeneficiario
        {
            get
            {
                return _documentobeneficiario;
            }

            set
            {
                _documentobeneficiario = value;
            }
        }
        public string NombreAsegurado
        {
            get
            {
                return _nombreasegurado;
            }

            set
            {
                _nombreasegurado = value;
            }
        }
        public string DocumentoAsegurado
        {
            get
            {
                return _documentoasegurado;
            }

            set
            {
                _documentoasegurado = value;
            }
        }
        public DateTime FechaInicioPoliza
        {
            get
            {
                return _fechainiciopoliza;
            }

            set
            {
                _fechainiciopoliza = value;
            }
        }
        public DateTime FechaFinPoliza
        {
            get
            {
                return _fechafinpoliza;
            }

            set
            {
                _fechafinpoliza = value;
            }
        }
        public DateTime FechaExpedicionPoliza
        {
            get
            {
                return _fechaexpedicionpoliza;
            }

            set
            {
                _fechaexpedicionpoliza = value;
            }
        }
        public string TipoPagoPoliza
        {
            get
            {
                return _tipopagopoliza;
            }

            set
            {
                _tipopagopoliza = value;
            }
        }
        public string PolizaVirtual
        {
            get
            {
                return _polizavirtual;
            }

            set
            {
                _polizavirtual = value;
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
                _documentocliente = value;
            }
        }
        public string NitAseguradora
        {
            get
            {
                return _nitaseguradora;
            }

            set
            {
                _nitaseguradora = value;
            }
        }
        public string TipoPoliza
        {
            get
            {
                return _tipopoliza;
            }

            set
            {
                _tipopoliza = value;
            }
        }
    }
    
}