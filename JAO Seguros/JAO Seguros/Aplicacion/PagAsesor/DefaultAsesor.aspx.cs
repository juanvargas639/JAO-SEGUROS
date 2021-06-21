using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace JAO_Seguros.Aplicacion.PagAsesor
{
    public partial class DefaultAsesor1 : System.Web.UI.Page
    {
        /*--LLAMAR LAS CLASES DE GESTIÓN NECESARIAS--*/
        GestionAdmin gestionAdmin = new GestionAdmin();
        GestionEmpleado gestionEmpleado = new GestionEmpleado();
        protected void Page_Load(object sender, EventArgs e)
        {
            /*SI HAY UNA CARGA DE LA PÁGIINA*/
            if (!IsPostBack)
            {
                if (Request.QueryString["user"] == null)
                {
                    /*SI LA VARIBLE SESSION ES IGUAL A NULL, REDIRECCIONAR A LOGIN*/
                    if (Session["UsuarioAsesor"] == null)
                    {
                        Response.Redirect("/Aplicacion/Ingresar.aspx");
                    }
                    /*SI LA VARIABLE EXISTE, TRAER EL NOMBRE DEL USUARIO LOGUEADO*/
                    else
                    {
                        llenarDatos1();
                    }
                }
                else
                {
                    llenarDatos2();
                }
            }
        }

        protected void btnCerrarSesion_ServerClick(object sender, EventArgs e)
        {
            /*ELIMINAR LA VARIABLE SESSION*/
            Session.Remove("UsuarioAsesor");
            /*REDIRECCIONAR A LA PÁGINA PRINCIPAL*/
            Response.Redirect("/Aplicacion/Ingresar.aspx");
        }

        string idUsuario;

        protected void llenarDatos1()
        {
            idUsuario = Convert.ToString(Session["UsuarioAsesor"]);
            Empleado usuario = gestionEmpleado.consultarEmpleado(idUsuario);
            lbNombreUsuarioDashboard.Text = usuario.NombreEmpleado;
            Int32 numClientes = gestionEmpleado.numeroClientes(idUsuario);
            lbNumeroClientesAsesores.Text = Convert.ToString(numClientes);
            /*ASIGNAR LOS NUMEROS DE COTIZACIONES*/
            Int32 numeroCotizaciones = gestionAdmin.numeroCotizaciones();
            lbNumeroCotizaciones.Text = Convert.ToString(numeroCotizaciones);
            Int32 numeroCotizacionesVehicular = gestionAdmin.numeroCotizacionesVehicular();
            lbNumeroCotizacionesVehicular.Text = Convert.ToString(numeroCotizacionesVehicular);
            Int32 numeroCotizacionesVida = gestionAdmin.numeroCotizacionesVida();
            lbNumeroCotizacionesVida.Text = Convert.ToString(numeroCotizacionesVida);
            Int32 numeroCotizacionesPyme = gestionAdmin.numeroCotizacionesPyme();
            lbNumeroCotizacionesPyme.Text = Convert.ToString(numeroCotizacionesPyme);
            Int32 numeroCotizacionesEstudiantil = gestionAdmin.numeroCotizacionesEstudiantil();
            lbNumeroCotizacionesEstudiantil.Text = Convert.ToString(numeroCotizacionesEstudiantil);
            Int32 numeroCotizacionesHogar = gestionAdmin.numeroCotizacionesHogar();
            lbNumeroCotizacionesHogar.Text = Convert.ToString(numeroCotizacionesHogar);
            Int32 numeroCotizacionesRC = gestionAdmin.numeroCotizacionesRC();
            lbNumeroCotizacionesRC.Text = Convert.ToString(numeroCotizacionesRC);
            /*ASIGNAR LOS NUMEROS DE REPORTES*/
            Int32 numeroReportes = gestionEmpleado.numeroReportes(idUsuario);
            lbNumeroReportes.Text = Convert.ToString(numeroReportes);
            Int32 numeroSugerencias = gestionEmpleado.numeroReportesSugerencias(idUsuario);
            lbNumeroSugerencias.Text = Convert.ToString(numeroSugerencias);
            Int32 numeroPeticiones = gestionEmpleado.numeroReportesPeticiones(idUsuario);
            lbNumeroPeticiones.Text = Convert.ToString(numeroPeticiones);
            Int32 numeroQuejas = gestionEmpleado.numeroReportesQuejas(idUsuario);
            lbNumeroQuejas.Text = Convert.ToString(numeroQuejas);
            Int32 numeroReclamos = gestionEmpleado.numeroReportesReclamos(idUsuario);
            lbNumeroReclamos.Text = Convert.ToString(numeroReclamos);
            Int32 numeroFelicitacion = gestionEmpleado.numeroReportesFelicitaciones(idUsuario);
            lbNumeroFelicitaciones.Text = Convert.ToString(numeroFelicitacion);
            /*PROCENTAJES*/
            /*TOTAL*/
            int totalReportes = numeroReportes;
            int totalCotizaciones = numeroCotizaciones;
            double porSugerencias;
            double porPeticiones;
            double porQuejas;
            double porReclamos;
            double porFelicitacion;
            double porVehicular;
            double porVida;
            double porPyme;
            double porEstudiantil;
            double porHogar;
            double porRC;
            if (numeroSugerencias == 0)
            {
                porSugerencias = 0;
            }
            else
            {
                porSugerencias = (numeroSugerencias * 100) / totalReportes;
            }
            if (numeroPeticiones == 0)
            {
                porPeticiones = 0;
            }
            else
            {
                porPeticiones = (numeroPeticiones * 100) / totalReportes;
            }
            if (numeroQuejas == 0)
            {
                porQuejas = 0;
            }
            else
            {
                porQuejas = (numeroQuejas * 100) / totalReportes;
            }
            if (numeroReclamos == 0)
            {
                porReclamos = 0;
            }
            else
            {
                porReclamos = (numeroReclamos * 100) / totalReportes;
            }
            if (numeroFelicitacion == 0)
            {
                porFelicitacion = 0;
            }
            else
            {
                porFelicitacion = (numeroFelicitacion * 100) / totalReportes;
            }
            if (numeroCotizacionesVehicular == 0)
            {
                porVehicular = 0;
            }
            else
            {
                porVehicular = (numeroCotizacionesVehicular * 100) / totalCotizaciones;
            }
            if (numeroCotizacionesVida == 0)
            {
                porVida = 0;
            }
            else
            {
                porVida = (numeroCotizacionesVida * 100) / totalCotizaciones;
            }
            if (numeroCotizacionesPyme == 0)
            {
                porPyme = 0;
            }
            else
            {
                porPyme = (numeroCotizacionesPyme * 100) / totalCotizaciones;
            }
            if (numeroCotizacionesEstudiantil == 0)
            {
                porEstudiantil = 0;
            }
            else
            {
                porEstudiantil = (numeroCotizacionesEstudiantil * 100) / totalCotizaciones;
            }
            if (numeroCotizacionesHogar == 0)
            {
                porHogar = 0;
            }
            else
            {
                porHogar = (numeroCotizacionesHogar * 100) / totalCotizaciones;
            }
            if (numeroCotizacionesRC == 0)
            {
                porRC = 0;
            }
            else
            {
                porRC = (numeroCotizacionesRC * 100) / totalCotizaciones;
            }
            string porcentajeSugerencias = Convert.ToString(porSugerencias) + "%";
            string porcentajePeticiones = Convert.ToString(porPeticiones) + "%";
            string porcentajeQuejas = Convert.ToString(porQuejas) + "%";
            string porcentajeReclamos = Convert.ToString(porReclamos) + "%";
            string porcentajeFelicitacion = Convert.ToString(porFelicitacion) + "%";
            string porcentajeVehicular = Convert.ToString(porVehicular) + "%";
            string porcentajeVida = Convert.ToString(porVida) + "%";
            string porcentajePyme = Convert.ToString(porPyme) + "%";
            string porcentajeEstudiantil = Convert.ToString(porEstudiantil) + "%";
            string porcentajeHogar = Convert.ToString(porHogar) + "%";
            string porcentajeRC = Convert.ToString(porRC) + "%";
            barraVehicular.Style.Add("width", porcentajeVehicular);
            barraVehicular.Style.Add("aria-valuenow", Convert.ToString(porVehicular));
            barraSugerencias.Style.Add("width", porcentajeSugerencias);
            barraSugerencias.Style.Add("aria-valuenow", Convert.ToString(porSugerencias));
            barraPeticiones.Style.Add("width", porcentajePeticiones);
            barraPeticiones.Style.Add("aria-valuenow", Convert.ToString(porPeticiones));
            barraQuejas.Style.Add("width", porcentajeQuejas);
            barraQuejas.Style.Add("aria-valuenow", Convert.ToString(porQuejas));
            barraReclamos.Style.Add("width", porcentajeReclamos);
            barraReclamos.Style.Add("aria-valuenow", Convert.ToString(porReclamos));
            barraFelicitacion.Style.Add("width", porcentajeFelicitacion);
            barraFelicitacion.Style.Add("aria-valuenow", Convert.ToString(porFelicitacion));
            barraVida.Style.Add("width", porcentajeVida);
            barraVida.Style.Add("aria-valuenow", Convert.ToString(porVida));
            barraPyme.Style.Add("width", porcentajePyme);
            barraPyme.Style.Add("aria-valuenow", Convert.ToString(porPyme));
            barraEstudiantil.Style.Add("width", porcentajeEstudiantil);
            barraEstudiantil.Style.Add("aria-valuenow", Convert.ToString(porEstudiantil));
            barraHogar.Style.Add("width", porcentajeEstudiantil);
            barraHogar.Style.Add("aria-valuenow", Convert.ToString(porHogar));
            barraRC.Style.Add("width", porcentajeRC);
            barraRC.Style.Add("aria-valuenow", Convert.ToString(porRC));
        }

        protected void llenarDatos2()
        {
            /*ASIGNAR LA VARIABLE ENVIADA DESDE EL LOGIN A LA VARIABLE SESSION*/
            idUsuario = Request.QueryString["user"];
            Session["UsuarioAsesor"] = idUsuario;
            /*ASIGNAR LOS NUMEROS DE COTIZACIONES*/
            Empleado usuario = gestionEmpleado.consultarEmpleado(idUsuario);
            lbNombreUsuarioDashboard.Text = usuario.NombreEmpleado;
            Int32 numClientes = gestionEmpleado.numeroClientes(idUsuario);
            lbNumeroClientesAsesores.Text = Convert.ToString(numClientes);
            Int32 numeroCotizaciones = gestionAdmin.numeroCotizaciones();
            lbNumeroCotizaciones.Text = Convert.ToString(numeroCotizaciones);
            Int32 numeroCotizacionesVehicular = gestionAdmin.numeroCotizacionesVehicular();
            lbNumeroCotizacionesVehicular.Text = Convert.ToString(numeroCotizacionesVehicular);
            Int32 numeroCotizacionesVida = gestionAdmin.numeroCotizacionesVida();
            lbNumeroCotizacionesVida.Text = Convert.ToString(numeroCotizacionesVida);
            Int32 numeroCotizacionesPyme = gestionAdmin.numeroCotizacionesPyme();
            lbNumeroCotizacionesPyme.Text = Convert.ToString(numeroCotizacionesPyme);
            Int32 numeroCotizacionesEstudiantil = gestionAdmin.numeroCotizacionesEstudiantil();
            lbNumeroCotizacionesEstudiantil.Text = Convert.ToString(numeroCotizacionesEstudiantil);
            Int32 numeroCotizacionesHogar = gestionAdmin.numeroCotizacionesHogar();
            lbNumeroCotizacionesHogar.Text = Convert.ToString(numeroCotizacionesHogar);
            Int32 numeroCotizacionesRC = gestionAdmin.numeroCotizacionesRC();
            lbNumeroCotizacionesRC.Text = Convert.ToString(numeroCotizacionesRC);
            /*ASIGNAR LOS NUMEROS DE REPORTES*/
            Int32 numeroReportes = gestionEmpleado.numeroReportes(idUsuario);
            lbNumeroReportes.Text = Convert.ToString(numeroReportes);
            Int32 numeroSugerencias = gestionEmpleado.numeroReportesSugerencias(idUsuario);
            lbNumeroSugerencias.Text = Convert.ToString(numeroSugerencias);
            Int32 numeroPeticiones = gestionEmpleado.numeroReportesPeticiones(idUsuario);
            lbNumeroPeticiones.Text = Convert.ToString(numeroPeticiones);
            Int32 numeroQuejas = gestionEmpleado.numeroReportesQuejas(idUsuario);
            lbNumeroQuejas.Text = Convert.ToString(numeroQuejas);
            Int32 numeroReclamos = gestionEmpleado.numeroReportesReclamos(idUsuario);
            lbNumeroReclamos.Text = Convert.ToString(numeroReclamos);
            Int32 numeroFelicitacion = gestionEmpleado.numeroReportesFelicitaciones(idUsuario);
            lbNumeroFelicitaciones.Text = Convert.ToString(numeroFelicitacion);
            /*PROCENTAJES*/
            /*TOTAL*/
            int totalReportes = numeroReportes;
            int totalCotizaciones = numeroCotizaciones;
            double porSugerencias;
            double porPeticiones;
            double porQuejas;
            double porReclamos;
            double porFelicitacion;
            double porVehicular;
            double porVida;
            double porPyme;
            double porEstudiantil;
            double porHogar;
            double porRC;
            if (numeroSugerencias == 0)
            {
                porSugerencias = 0;
            }
            else
            {
                porSugerencias = (numeroSugerencias * 100) / totalReportes;
            }
            if (numeroPeticiones == 0)
            {
                porPeticiones = 0;
            }
            else
            {
                porPeticiones = (numeroPeticiones * 100) / totalReportes;
            }
            if (numeroQuejas == 0)
            {
                porQuejas = 0;
            }
            else
            {
                porQuejas = (numeroQuejas * 100) / totalReportes;
            }
            if (numeroReclamos == 0)
            {
                porReclamos = 0;
            }
            else
            {
                porReclamos = (numeroReclamos * 100) / totalReportes;
            }
            if (numeroFelicitacion == 0)
            {
                porFelicitacion = 0;
            }
            else
            {
                porFelicitacion = (numeroFelicitacion * 100) / totalReportes;
            }
            if (numeroCotizacionesVehicular == 0)
            {
                porVehicular = 0;
            }
            else
            {
                porVehicular = (numeroCotizacionesVehicular * 100) / totalCotizaciones;
            }
            if (numeroCotizacionesVida == 0)
            {
                porVida = 0;
            }
            else
            {
                porVida = (numeroCotizacionesVida * 100) / totalCotizaciones;
            }
            if (numeroCotizacionesPyme == 0)
            {
                porPyme = 0;
            }
            else
            {
                porPyme = (numeroCotizacionesPyme * 100) / totalCotizaciones;
            }
            if (numeroCotizacionesEstudiantil == 0)
            {
                porEstudiantil = 0;
            }
            else
            {
                porEstudiantil = (numeroCotizacionesEstudiantil * 100) / totalCotizaciones;
            }
            if (numeroCotizacionesHogar == 0)
            {
                porHogar = 0;
            }
            else
            {
                porHogar = (numeroCotizacionesHogar * 100) / totalCotizaciones;
            }
            if (numeroCotizacionesRC == 0)
            {
                porRC = 0;
            }
            else
            {
                porRC = (numeroCotizacionesRC * 100) / totalCotizaciones;
            }
            string porcentajeSugerencias = Convert.ToString(porSugerencias) + "%";
            string porcentajePeticiones = Convert.ToString(porPeticiones) + "%";
            string porcentajeQuejas = Convert.ToString(porQuejas) + "%";
            string porcentajeReclamos = Convert.ToString(porReclamos) + "%";
            string porcentajeFelicitacion = Convert.ToString(porFelicitacion) + "%";
            string porcentajeVehicular = Convert.ToString(porVehicular) + "%";
            string porcentajeVida = Convert.ToString(porVida) + "%";
            string porcentajePyme = Convert.ToString(porPyme) + "%";
            string porcentajeEstudiantil = Convert.ToString(porEstudiantil) + "%";
            string porcentajeHogar = Convert.ToString(porHogar) + "%";
            string porcentajeRC = Convert.ToString(porRC) + "%";
            barraVehicular.Style.Add("width", porcentajeVehicular);
            barraVehicular.Style.Add("aria-valuenow", Convert.ToString(porVehicular));
            barraSugerencias.Style.Add("width", porcentajeSugerencias);
            barraSugerencias.Style.Add("aria-valuenow", Convert.ToString(porSugerencias));
            barraPeticiones.Style.Add("width", porcentajePeticiones);
            barraPeticiones.Style.Add("aria-valuenow", Convert.ToString(porPeticiones));
            barraQuejas.Style.Add("width", porcentajeQuejas);
            barraQuejas.Style.Add("aria-valuenow", Convert.ToString(porQuejas));
            barraReclamos.Style.Add("width", porcentajeReclamos);
            barraReclamos.Style.Add("aria-valuenow", Convert.ToString(porReclamos));
            barraFelicitacion.Style.Add("width", porcentajeFelicitacion);
            barraFelicitacion.Style.Add("aria-valuenow", Convert.ToString(porFelicitacion));
            barraVida.Style.Add("width", porcentajeVida);
            barraVida.Style.Add("aria-valuenow", Convert.ToString(porVida));
            barraPyme.Style.Add("width", porcentajePyme);
            barraPyme.Style.Add("aria-valuenow", Convert.ToString(porPyme));
            barraEstudiantil.Style.Add("width", porcentajeEstudiantil);
            barraEstudiantil.Style.Add("aria-valuenow", Convert.ToString(porEstudiantil));
            barraHogar.Style.Add("width", porcentajeEstudiantil);
            barraHogar.Style.Add("aria-valuenow", Convert.ToString(porHogar));
            barraRC.Style.Add("width", porcentajeRC);
            barraRC.Style.Add("aria-valuenow", Convert.ToString(porRC));
        }
    }
}