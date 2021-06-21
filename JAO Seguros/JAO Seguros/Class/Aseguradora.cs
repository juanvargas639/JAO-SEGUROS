using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JAO_Seguros
{
    public class Aseguradora
    //CLASE DEL OBJETO ASEGURADORA
    {
        //ATRIBUTOS PRIVADOS DEL OBJETO
        private string _nitaseguradora;
        private string _nombreaseguradora;
        private string _direccionaseguradora;
        private string _telefonoaseguradora;
        private string _correoaseguradora;
        //MODIFICADORES DE ACCESO A LOS ATRIBUTOS
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
        public string NombreAseguradora
        {
            get
            {
                return _nombreaseguradora;
            }

            set
            {
                _nombreaseguradora = value;
            }
        }
        public string DireccionAseguradora
        {
            get
            {
                return _direccionaseguradora;
            }

            set
            {
                _direccionaseguradora = value;
            }
        }
        public string TelefonoAseguradora
        {
            get
            {
                return _telefonoaseguradora;
            }

            set
            {
                _telefonoaseguradora = value;
            }
        }
        public string CorreoAseguradora
        {
            get
            {
                return _correoaseguradora;
            }

            set
            {
                _correoaseguradora = value;
            }
        }
    }
}