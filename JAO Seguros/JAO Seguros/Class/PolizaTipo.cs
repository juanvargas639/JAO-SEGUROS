using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JAO_Seguros
{
    //CLASE DEL OBJETO POLIZA TIPO
    public class PolizaTipoEstudiantil
    {
        //ATRIBUTOS PRIVADOS DEL OBJETO
        private string _codigopoliza;
        private DateTime _fechanacimiento;
        private string _institucion;
        private string _anuariocursado;
        private string _cursosemestre;
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
        public DateTime FechaNacimiento
        {
            get
            {
                return _fechanacimiento;
            }

            set
            {
                _fechanacimiento = value;
            }
        }
        public string Institucion
        {
            get
            {
                return _institucion;
            }

            set
            {
                _institucion = value;
            }
        }
        public string AnuarioCursado
        {
            get
            {
                return _anuariocursado;
            }

            set
            {
                _anuariocursado= value;
            }
        }
        public string CursoSemestre
        {
            get
            {
                return _cursosemestre;
            }

            set
            {
                _cursosemestre = value;
            }
        }
    }
    //CLASE DEL OBJETO POLIZA TIPO
    public class PolizaTipoHogar
    {
        //ATRIBUTOS PRIVADOS DEL OBJETO
        private string _codigopoliza;
        private DateTime _fechanacimiento;
        private string _valorenseres;
        private string _valorconstruccion;
        private string _localidad;
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
        public DateTime FechaNacimiento
        {
            get
            {
                return _fechanacimiento;
            }

            set
            {
                _fechanacimiento = value;
            }
        }
        public string ValorEnseres
        {
            get
            {
                return _valorenseres;
            }

            set
            {
                _valorenseres = value;
            }
        }
        public string ValorConstruccion
        {
            get
            {
                return _valorconstruccion;
            }

            set
            {
                _valorconstruccion = value;
            }
        }
        public string Localidad
        {
            get
            {
                return _localidad;
            }

            set
            {
                _localidad = value;
            }
        }
    }
    //CLASE DEL OBJETO POLIZA TIPO
    public class PolizaTipoPyme
    {
        //ATRIBUTOS PRIVADOS DEL OBJETO
        private string _codigopoliza;
        private string _valorasegurado;
        private string _tiponegocio;
        private string _nombrenegocio;
        private string _localidadnegocio;
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
        public string ValorAsegurado
        {
            get
            {
                return _valorasegurado;
            }

            set
            {
                _valorasegurado = value;
            }
        }
        public string TipoNegocio
        {
            get
            {
                return _tiponegocio;
            }

            set
            {
                _tiponegocio = value;
            }
        }
        public string NombreNegocio
        {
            get
            {
                return _nombrenegocio;
            }

            set
            {
                _nombrenegocio = value;
            }
        }
        public string LocalidadNegocio
        {
            get
            {
                return _localidadnegocio;
            }

            set
            {
                _localidadnegocio = value;
            }
        }
        

    }
    //CLASE DEL OBJETO POLIZA TIPO
    public class PolizaTipoRCMedica
    {
        //ATRIBUTOS PRIVADOS DEL OBJETO
        private string _codigopoliza;
        private DateTime _fechanacimiento;
        private string _tarjetaprofesional;
        private DateTime _fechaexpedicion;
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
        public DateTime FechaNacimiento
        {
            get
            {
                return _fechanacimiento;
            }

            set
            {
                _fechanacimiento = value;
            }
        }
        public string TarjetaProfesional
        {
            get
            {
                return _tarjetaprofesional;
            }

            set
            {
                _tarjetaprofesional = value;
            }
        }
        public DateTime FechaExpedicion
        {
            get
            {
                return _fechaexpedicion;
            }

            set
            {
                _fechaexpedicion = value;
            }
        }
    }
    //CLASE DEL OBJETO POLIZA TIPO
    public class PolizaTipoVehicular
    {
        //ATRIBUTOS PRIVADOS DEL OBJETO
        private string _codigopoliza;
        private DateTime _fechanacimiento;
        private string _tipoauto;
        private string _placa;
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
        public DateTime FechaNacimiento
        {
            get
            {
                return _fechanacimiento;
            }

            set
            {
                _fechanacimiento = value;
            }
        }
        public string TipoAuto
        {
            get
            {
                return _tipoauto;
            }

            set
            {
                _tipoauto = value;
            }
        }
        public string Placa
        {
            get
            {
                return _placa;
            }

            set
            {
                _placa = value;
            }
        }

    }
    //CLASE DEL OBJETO POLIZA TIPO
    public class PolizaTipoVida
    {
        //ATRIBUTOS PRIVADOS DEL OBJETO
        private string _codigopoliza;
        private DateTime _fechanacimiento;
        private string _valorbeneficiario;
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
        public DateTime FechaNacimiento
        {
            get
            {
                return _fechanacimiento;
            }

            set
            {
                _fechanacimiento = value;
            }
        }
        public string ValorBeneficiario
        {
            get
            {
                return _valorbeneficiario;
            }

            set
            {
                _valorbeneficiario = value;
            }
        }
    }
}