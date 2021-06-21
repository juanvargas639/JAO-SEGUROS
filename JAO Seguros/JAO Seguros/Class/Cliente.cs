using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JAO_Seguros
{
    public class Cliente
    //CLASE DEL OBJETO CLIENTE
    {
        //ATRIBUTOS PRIVADOS DEL OBJETO
        private string _documentocliente;
        private string _nombrecliente;
        private string _apellidocliente;
        private string _direccionresidenciacliente;
        private string _telefonofijocliente;
        private string _telefonocelularcliente;
        private string _tipodocumentocliente;
        private DateTime _fechaexpediciondocumentocliente;
        private string _generocliente;
        private string _ciudadnacimientocliente;
        private string _direcciontrabajocliente;
        private string _telefonotrabajocliente;
        private string _empleocliente;
        private string _idempleado;
        //MODIFICADORES DE ACCESO A LOS ATRIBUTOS
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
        public string NombreCliente
        {
            get
            {
                return _nombrecliente;
            }

            set
            {
                _nombrecliente = value;
            }
        }
        public string ApellidoCliente
        {
            get
            {
                return _apellidocliente;
            }

            set
            {
                _apellidocliente = value;
            }
        }
        public string DireccionResidenciaCliente
        {
            get
            {
                return _direccionresidenciacliente;
            }

            set
            {
                _direccionresidenciacliente = value;
            }
        }
        public string TelefonoFijoCliente
        {
            get
            {
                return _telefonofijocliente;
            }

            set
            {
                _telefonofijocliente = value;
            }
        }
        public string TelefonoCelularCliente
        {
            get
            {
                return _telefonocelularcliente;
            }

            set
            {
                _telefonocelularcliente = value;
            }
        }
        public string TipoDocumentoCliente
        {
            get
            {
                return _tipodocumentocliente;
            }

            set
            {
                _tipodocumentocliente = value;
            }
        }
        public DateTime FechaExpedicionDocumentoCliente
        {
            get
            {
                return _fechaexpediciondocumentocliente;
            }

            set
            {
                _fechaexpediciondocumentocliente = value;
            }
        }
        public string GeneroCliente
        {
            get
            {
                return _generocliente;
            }

            set
            {
                _generocliente = value;
            }
        }
        public string CiudadNacimientoCliente
        {
            get
            {
                return _ciudadnacimientocliente;
            }

            set
            {
                _ciudadnacimientocliente = value;
            }
        }
        public string DireccionTrabajoCliente
        {
            get
            {
                return _direcciontrabajocliente;
            }

            set
            {
                _direcciontrabajocliente = value;
            }
        }
        public string TelefonoTrabajoCliente
        {
            get
            {
                return _telefonotrabajocliente;
            }

            set
            {
                _telefonotrabajocliente = value;
            }
        }
        public string EmpleoCliente
        {
            get
            {
                return _empleocliente;
            }

            set
            {
                _empleocliente = value;
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

    }



}

