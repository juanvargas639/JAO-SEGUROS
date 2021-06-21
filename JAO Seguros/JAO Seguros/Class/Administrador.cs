using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JAO_Seguros
{
    public class Administrador
    //CLASE DEL OBJETO ADMINISTRADOR
    {
        //ATRIBUTOS PRIVADOS DEL OBJETO
        private string _idAdministrador;
        private string _nombreadmin;
        private string _apellidoadmin;
        private string _representantelegaladmin;
        private string _correoadmin;
        private string _telefonoadmin; 
        //MODIFICADORES DE ACCESO A LOS ATRIBUTOS
        public string IDAdministrador
        {
            get
            {
                return _idAdministrador;
            }

            set
            {
               _idAdministrador = value;
            }
        }
        public string NombreAdmin
        {
            get
            {
                return _nombreadmin;
            }

            set
            {
                _nombreadmin = value;
            }
        }
        public string ApellidoAdmin
        {
            get
            {
                return _apellidoadmin;
            }

            set
            {
                _apellidoadmin = value;
            }
        }
        public string RepresentanteLegalAdmin
        {
            get
            {
                return _representantelegaladmin;
            }

            set
            {
                _representantelegaladmin = value;
            }
        }
        public string CorreoAdmin
        {
            get
            {
                return _correoadmin;
            }

            set
            {
                _correoadmin = value;
            }
        }
        public string TelefonoAdmin
        {
            get
            {
                return _telefonoadmin;
            }

            set
            {
                _telefonoadmin = value;
            }
        }
    }
    
}