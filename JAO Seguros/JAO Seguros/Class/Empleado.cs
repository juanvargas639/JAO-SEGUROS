using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JAO_Seguros
{
    public class Empleado
    //CLASE DEL OBJETO COTIZACION
    {
        //ATRIBUTOS PRIVADOS DEL OBJETO
        private string _idempleado;
        private string _nombreempleado;
        private string _apellidoempleado;
        private string _telefonoempleado;
        private string _rolempleado;
        private string _idadministrador;
        //MODIFICADORES DE ACCESO A LOS ATRIBUTOS
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
        public string NombreEmpleado
        {
            get
            {
                return _nombreempleado;
            }

            set
            {
                _nombreempleado = value;
            }
        }
        public string ApellidoEmpleado
        {
            get
            {
                return _apellidoempleado;
            }

            set
            {
                _apellidoempleado = value;
            }
        }
        public string TelefonoEmpleado
        {
            get
            {
                return _telefonoempleado;
            }

            set
            {
                _telefonoempleado = value;
            }
        }
        public string RolEmpleado
        {
            get
            {
                return _rolempleado;
            }

            set
            {
                _rolempleado = value;
            }
        }
        public string IDAdministrador
        {
            get
            {
                return _idadministrador;
            }

            set
            {
                _idadministrador = value;
            }
        }
    }
}