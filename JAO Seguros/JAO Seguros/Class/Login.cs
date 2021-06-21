using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JAO_Seguros
{
    //CLASE DEL OBJETO COTIZACION
    public class Login
    {
        //ATRIBUTOS PRIVADOS DEL OBJETO
        private string _usuario;
        private string _clave;
        private string _tipousuario;
        //MODIFICADORES DE ACCESO A LOS ATRIBUTOS
        public string Usuario
        {
            get
            {
                return _usuario;
            }

            set
            {
                _usuario = value;
            }
        }
        public string Clave
        {
            get
            {
                return _clave;
            }

            set
            {
                _clave = value;
            }
        }
        public string Tipousuario
        {
            get
            {
                return _tipousuario;
            }

            set
            {
                _tipousuario = value;
            }
        }
    }
}