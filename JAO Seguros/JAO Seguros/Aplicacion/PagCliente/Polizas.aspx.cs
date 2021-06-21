using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JAO_Seguros.Aplicacion.PagCliente
{
    public partial class Polizas : System.Web.UI.Page
    {
        GestionPoliza GestionPoliza = new GestionPoliza();
        GestionPolizaTipo GestionPolizaTipo = new GestionPolizaTipo();
        GestionCliente GestionCliente = new GestionCliente();
        GestionAseguradora GestionAseg = new GestionAseguradora();
        GestionEmpleado gestionEmpleado = new GestionEmpleado();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UsuarioCliente"] == null)
                {
                    Response.Redirect("/Aplicacion/Ingresar.aspx");
                }
                else
                {
                    string idClienteLogueado = Convert.ToString(Session["UsuarioCliente"]);
                    List<Poliza> listaPolizas = GestionPoliza.listadoPolizaCliente(idClienteLogueado);
                    /*--LLENAR LISTA CON POLIZAS DEL CLIENTE--*/
                    listTipo.DataTextField = "TipoPoliza";
                    listTipo.DataValueField = "CodigoPoliza";
                    listTipo.DataSource = listaPolizas;
                    listTipo.DataBind();
                    listTipo.Items.Insert(0, "Seleccione una Póliza");
                    /*--NUMERO DE POLIZAS Y DE REPORTES CLIENTE--*/
                    Int32 numeroPolizasCliente = GestionCliente.numeroPolizasCliente(idClienteLogueado);
                    lbNumeroPolizas.Text = Convert.ToString(numeroPolizasCliente);
                    Int32 numeroReportesCliente = GestionCliente.numeroReportesCliente(idClienteLogueado);
                    lbNumeroReportes.Text = Convert.ToString(numeroReportesCliente);
                    /*--CONSULTAR LOS DATOS DE LA PÓLIZA--*/
                    Cliente usuario = GestionCliente.consultarCliente(idClienteLogueado);
                    string nombre = usuario.NombreCliente;
                    string apellido = usuario.ApellidoCliente;
                    lbNombreCliente.Text = nombre + " " + apellido;
                    lbTipoDocumentoCliente.Text = usuario.TipoDocumentoCliente;
                    lbNumeroDocumentoCliente.Text = usuario.DocumentoCliente;
                    lbNombreClienteEstudiantil.Text = nombre + " " + apellido;
                    lbNombreClienteHogar.Text = nombre + " " + apellido;
                    lbNombreClienteMedica.Text = nombre + " " + apellido;
                    lbNombreClientePyme.Text = nombre + " " + apellido;
                    lbNombreClienteVehicular.Text = nombre + " " + apellido;
                    lbNombreClienteVida.Text = nombre + " " + apellido;
                    string idAsesorCliente = usuario.IDEmpleado;
                    Empleado empleadoCliente = gestionEmpleado.consultarEmpleado(idAsesorCliente);
                    string nombreAsesor = empleadoCliente.NombreEmpleado;
                    string apellidoAsesor = empleadoCliente.ApellidoEmpleado;
                    NombreAsesor.Text = nombreAsesor + " " + apellidoAsesor;
                    TelefonoAsesor.Text = empleadoCliente.TelefonoEmpleado;

                }
            }
        }

        protected void btnCerrarSesion_ServerClick(object sender, EventArgs e)
        {
            /*ELIMINAR LA VARIABLE SESSION*/
            Session.Remove("UsuarioCliente");
            /*REDIRECCIONAR A LA PÁGINA PRINCIPAL*/
            Response.Redirect("/Aplicacion/Ingresar.aspx");
        }

        protected void listTipo_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (listTipo.SelectedItem.Text == "Estudiantil")
            {
                PANELDEFAULT.Visible = false;
                PANELESTUDIANTIL.Visible = true;
                PANELHOGAR.Visible = false;
                PANELPYME.Visible = false;
                PANELRC.Visible = false;
                PANELVEHICULAR.Visible = false;
                PANELVIDA.Visible = false;
                Poliza poliza = GestionPoliza.consultarPoliza(listTipo.SelectedItem.Value);
                lbCodigoPolizaEstudiantil.Text = poliza.CodigoPoliza;
                lbTipoPagoEstudiantil.Text = poliza.TipoPagoPoliza;
                lbFechaIEstudiantil.Text = poliza.FechaInicioPoliza.ToString("dd/MM/yyyy");
                lbFechaFEstudiantil.Text = poliza.FechaFinPoliza.ToString("dd/MM/yyyy");
                lbFechaeEstudiantil.Text = poliza.FechaExpedicionPoliza.ToString("dd/MM/yyyy");
                lbNombreTomadorEstudiantil.Text = poliza.NombreTomador;
                lbDocumentoTomadorEstudiantil.Text = poliza.DocumentoTomador;
                if (lbNombreTomadorEstudiantil.Text != "No Aplica")
                {
                    PANELTOMADORESTUDIANTIL.Visible = true;
                }
                lbNombreBeneficiarioEstudiantil.Text = poliza.NombreAsegurado;
                lbDocumentoBeneficiarioEstudiantil.Text = poliza.DocumentoAsegurado;
                if (lbNombreBeneficiarioEstudiantil.Text != "No Aplica")
                {
                    PANELBENEFICIARIOESTUDIANTIL.Visible = true;
                }
                lbNombreAseguradoEstudiantil.Text = poliza.NombreAsegurado;
                lbDocumentoAseguradoEstudiantil.Text = poliza.DocumentoAsegurado;
                if (lbNombreAseguradoEstudiantil.Text != "No Aplica")
                {
                    PANELASEGURADOESTUDIANTIL.Visible = true;
                }
                lbNitAseguradoraEstudiantil.Text = poliza.NitAseguradora;
                PolizaTipoEstudiantil polizaEst = GestionPolizaTipo.consultarPolizaEstudiantil(listTipo.SelectedItem.Value);
                lbFechaNacimientoEstudiantil.Text = polizaEst.FechaNacimiento.ToString("dd/MM/yyyy");
                lbInstitucionEstudiantil.Text = polizaEst.Institucion;
                lbAnuarioCursadoEstudiantil.Text = polizaEst.AnuarioCursado;
                lbSemestreCursoEstudiantil.Text = polizaEst.CursoSemestre;
                Aseguradora aseguradora = GestionAseg.consultarAseg(lbNitAseguradoraEstudiantil.Text);
                lbNombreAseguradoraEstudiantil.Text = aseguradora.NombreAseguradora;
                lbDireccionAseguradoraEstudiantil.Text = aseguradora.DireccionAseguradora;
                lbTelefonoAseguradoraEstudiantil.Text = aseguradora.TelefonoAseguradora;
                lbCorreoAseguradoraEstudiantil.Text = aseguradora.CorreoAseguradora;
                string archivo;
                archivo = poliza.PolizaVirtual;
                if (archivo == "Sin Poliza")
                {
                    PANELSINBOTONESTUDIANTIL.Visible = true;
                }
                else
                {
                    PANELBOTONESTUDIANTIL.Visible = true;
                    lbNombreArchivoEstudiantil.Text = poliza.PolizaVirtual;
                }

            }
            else if (listTipo.SelectedItem.Text == "Hogar")
            {
                PANELDEFAULT.Visible = false;
                PANELESTUDIANTIL.Visible = false;
                PANELHOGAR.Visible = true;
                PANELPYME.Visible = false;
                PANELRC.Visible = false;
                PANELVEHICULAR.Visible = false;
                PANELVIDA.Visible = false;
                Poliza poliza = GestionPoliza.consultarPoliza(listTipo.SelectedItem.Value);
                lbCodigoPolizaHogar.Text = poliza.CodigoPoliza;
                lbTipoPagoHogar.Text = poliza.TipoPagoPoliza;
                lbFechaIHogar.Text = poliza.FechaInicioPoliza.ToString("dd/MM/yyyy");
                lbFechaFHogar.Text = poliza.FechaFinPoliza.ToString("dd/MM/yyyy");
                lbFechaEHogar.Text = poliza.FechaExpedicionPoliza.ToString("dd/MM/yyyy");
                lbNombreTomadorHogar.Text = poliza.NombreTomador;
                lbDocumentoTomadorHogar.Text = poliza.DocumentoTomador;
                if (lbNombreTomadorHogar.Text != "No Aplica")
                {
                    PANELTOMADORHOGAR.Visible = true;
                }
                lbNombreBeneficiarioHogar.Text = poliza.NombreAsegurado;
                lbDocumentoBeneficiarioHogar.Text = poliza.DocumentoAsegurado;
                if (lbNombreBeneficiarioHogar.Text != "No Aplica")
                {
                    PANELBENEFICIARIOHOGAR.Visible = true;
                }
                lbNombreAseguradoHogar.Text = poliza.NombreAsegurado;
                lbDocumentoAseguradoHogar.Text = poliza.DocumentoAsegurado;
                if (lbNombreAseguradoHogar.Text != "No Aplica")
                {
                    PANELASEGURADOHOGAR.Visible = true;
                }
                lbNitAseguradoraHogar.Text = poliza.NitAseguradora;
                PolizaTipoHogar polizaHog = GestionPolizaTipo.consultarPolizaHogar(listTipo.SelectedItem.Value);
                lbFechaNacimientoHogar.Text = polizaHog.FechaNacimiento.ToString("dd/MM/yyyy");
                lbValorEnseresHogar.Text = polizaHog.ValorEnseres;
                lbValorConstruccionHogar.Text = polizaHog.ValorConstruccion;
                lbLocalidadHogar.Text = polizaHog.Localidad;
                Aseguradora aseguradora = GestionAseg.consultarAseg(lbNitAseguradoraHogar.Text);
                lbNombreAseguradoraHogar.Text = aseguradora.NombreAseguradora;
                lbDireccionAseguradoraHogar.Text = aseguradora.DireccionAseguradora;
                lbTelefonoAseguradoraHogar.Text = aseguradora.TelefonoAseguradora;
                lbCorreoAseguradoraHogar.Text = aseguradora.CorreoAseguradora;
                string archivo;
                archivo = poliza.PolizaVirtual;
                if (archivo == "Sin Poliza")
                {
                    PANELSINBOTONHOGAR.Visible = true;
                }
                else
                {
                    PANELBOTONHOGAR.Visible = true;
                    lbNombreArchivoHogar.Text = poliza.PolizaVirtual;
                }

            }
            else if (listTipo.SelectedItem.Text == "Pyme")
            {
                PANELDEFAULT.Visible = false;
                PANELESTUDIANTIL.Visible = false;
                PANELHOGAR.Visible = false;
                PANELPYME.Visible = true;
                PANELRC.Visible = false;
                PANELVEHICULAR.Visible = false;
                PANELVIDA.Visible = false;
                Poliza poliza = GestionPoliza.consultarPoliza(listTipo.SelectedItem.Value);
                lbCodigoPolizaPyme.Text = poliza.CodigoPoliza;
                lbTipoPagoPyme.Text = poliza.TipoPagoPoliza;
                lbFechaIPyme.Text = poliza.FechaInicioPoliza.ToString("dd/MM/yyyy");
                lbFechaFPyme.Text = poliza.FechaFinPoliza.ToString("dd/MM/yyyy");
                lbFechaEPyme.Text = poliza.FechaExpedicionPoliza.ToString("dd/MM/yyyy");
                lbNombreTomadorPyme.Text = poliza.NombreTomador;
                lbDocumentoTomadorPyme.Text = poliza.DocumentoTomador;
                if (lbNombreTomadorPyme.Text != "No Aplica")
                {
                    PANELTOMADORPYME.Visible = true;
                }
                lbNombreBeneficiarioPyme.Text = poliza.NombreAsegurado;
                lbDocumentoBeneficiarioPyme.Text = poliza.DocumentoAsegurado;
                if (lbNombreBeneficiarioPyme.Text != "No Aplica")
                {
                    PANELBENEFICIARIOPYME.Visible = true;
                }
                lbNombreAseguradoPyme.Text = poliza.NombreAsegurado;
                lbDocumentoAseguradoPyme.Text = poliza.DocumentoAsegurado;
                if (lbNombreAseguradoPyme.Text != "No Aplica")
                {
                    PANELASEGURADOPYME.Visible = true;
                }
                lbNitAseguradoraPyme.Text = poliza.NitAseguradora;
                PolizaTipoPyme polizaPyme = GestionPolizaTipo.consultarPolizaPyme(listTipo.SelectedItem.Value);
                lbValorAseguradoVida.Text = polizaPyme.ValorAsegurado;
                lbTipoNegocioPyme.Text = polizaPyme.TipoNegocio;
                lbNombreNegocioPyme.Text = polizaPyme.NombreNegocio;
                lbLocalidadNegocioPyme.Text = polizaPyme.LocalidadNegocio;
                Aseguradora aseguradora = GestionAseg.consultarAseg(lbNitAseguradoraPyme.Text);
                lbNombreAseguradoraPyme.Text = aseguradora.NombreAseguradora;
                lbDireccionAseguradoraPyme.Text = aseguradora.DireccionAseguradora;
                lbTelefonoAseguradoraPyme.Text = aseguradora.TelefonoAseguradora;
                lbCorreoAseguradoraPyme.Text = aseguradora.CorreoAseguradora;
                string archivo;
                archivo = poliza.PolizaVirtual;
                if (archivo == "Sin Poliza")
                {
                    PANELSINBOTONPYME.Visible = true;
                }
                else
                {
                    PANELBOTONPYME.Visible = true;
                    lbNombreArchivoPyme.Text = poliza.PolizaVirtual;
                }

            }
            else if (listTipo.SelectedItem.Text == "RCMedica")
            {
                PANELDEFAULT.Visible = false;
                PANELESTUDIANTIL.Visible = false;
                PANELHOGAR.Visible = false;
                PANELPYME.Visible = false;
                PANELRC.Visible = true;
                PANELVEHICULAR.Visible = false;
                PANELVIDA.Visible = false;
                Poliza poliza = GestionPoliza.consultarPoliza(listTipo.SelectedItem.Value);
                lbCodigoPolizaMedica.Text = poliza.CodigoPoliza;
                lbTipoPagoMedica.Text = poliza.TipoPagoPoliza;
                lbFechaIMedica.Text = poliza.FechaInicioPoliza.ToString("dd/MM/yyyy");
                lbFechaFMedica.Text = poliza.FechaFinPoliza.ToString("dd/MM/yyyy");
                lbFechaEMedica.Text = poliza.FechaExpedicionPoliza.ToString("dd/MM/yyyy");
                lbNombreTomadorMedica.Text = poliza.NombreTomador;
                lbDocumentoTomadorMedica.Text = poliza.DocumentoTomador;
                if (lbNombreTomadorMedica.Text != "No Aplica")
                {
                    PANELTOMADORMEDICA.Visible = true;
                }
                lbNombreBeneficiarioMedica.Text = poliza.NombreAsegurado;
                lbDocumentoBeneficiarioMedica.Text = poliza.DocumentoAsegurado;
                if (lbNombreBeneficiarioMedica.Text != "No Aplica")
                {
                    PANELBENEFICIARIOMEDICA.Visible = true;
                }
                lbNombreAseguradoMedica.Text = poliza.NombreAsegurado;
                lbDocumentoAseguradoMedica.Text = poliza.DocumentoAsegurado;
                if (lbNombreAseguradoMedica.Text != "No Aplica")
                {
                    PANELASEGURADOMEDICA.Visible = true;
                }
                lbNitAseguradoraMedica.Text = poliza.NitAseguradora;
                PolizaTipoRCMedica polizaRC = GestionPolizaTipo.consultarPolizaRCMedica(listTipo.SelectedItem.Value);
                lbFechaNacimientoMedica.Text = polizaRC.FechaNacimiento.ToString("dd/MM/yyyy");
                lbNumeroTarjetaProfesionalMedica.Text = polizaRC.TarjetaProfesional;
                lbFechaExpedicionMedica.Text = polizaRC.FechaExpedicion.ToString("dd/MM/yyyy");
                Aseguradora aseguradora = GestionAseg.consultarAseg(lbNitAseguradoraMedica.Text);
                lbNombreAseguradoraMedica.Text = aseguradora.NombreAseguradora;
                lbDireccionAseguradoraMedica.Text = aseguradora.DireccionAseguradora;
                lbTelefonoAseguradoraMedica.Text = aseguradora.TelefonoAseguradora;
                lbCorreoAseguradoraMedica.Text = aseguradora.CorreoAseguradora;
                string archivo;
                archivo = poliza.PolizaVirtual;
                if (archivo == "Sin Poliza")
                {
                    PANELSINBOTONMEDICA.Visible = true;
                }
                else
                {
                    PANELBOTONMEDICA.Visible = true;
                    lbNombreArchivoMedica.Text = poliza.PolizaVirtual;
                }

            }
            else if (listTipo.SelectedItem.Text == "Vehicular")
            {
                PANELDEFAULT.Visible = false;
                PANELESTUDIANTIL.Visible = false;
                PANELHOGAR.Visible = false;
                PANELPYME.Visible = false;
                PANELRC.Visible = false;
                PANELVEHICULAR.Visible = true;
                PANELVIDA.Visible = false;
                Poliza poliza = GestionPoliza.consultarPoliza(listTipo.SelectedItem.Value);
                lbCodigoPolizaVehicular.Text = poliza.CodigoPoliza;
                lbTipoPagoVehicular.Text = poliza.TipoPagoPoliza;
                lbFechaIVehicular.Text = poliza.FechaInicioPoliza.ToString("dd/MM/yyyy");
                lbFechaFVehicular.Text = poliza.FechaFinPoliza.ToString("dd/MM/yyyy");
                lbFechaEVehicular.Text = poliza.FechaExpedicionPoliza.ToString("dd/MM/yyyy");
                lbNombreTomadorVehicular.Text = poliza.NombreTomador;
                lbDocumentoTomadorVehicular.Text = poliza.DocumentoTomador;
                if (lbNombreTomadorVehicular.Text != "No Aplica")
                {
                    PANELTOMADORVEHICULAR.Visible = true;
                }
                lbNombreBeneficiarioVehicular.Text = poliza.NombreAsegurado;
                lbDocumentoBeneficiarioVehicular.Text = poliza.DocumentoAsegurado;
                if (lbNombreBeneficiarioVehicular.Text != "No Aplica")
                {
                    PANELBENEFICIARIOVEHICULAR.Visible = true;
                }
                lbNombreAseguradoVehicular.Text = poliza.NombreAsegurado;
                lbDocumentoAseguradoVehicular.Text = poliza.DocumentoAsegurado;
                if (lbNombreAseguradoVehicular.Text != "No Aplica")
                {
                    PANELASEGURADOVEHICULAR.Visible = true;
                }
                lbNitAseguradoraVehicular.Text = poliza.NitAseguradora;
                PolizaTipoVehicular polizaVehicular = GestionPolizaTipo.consultarPolizaVehicular(listTipo.SelectedItem.Value);
                lbFechaNacimientoVehicular.Text = polizaVehicular.FechaNacimiento.ToString("dd/MM/yyyy");
                lbTipoAutoVehicular.Text = polizaVehicular.TipoAuto;
                lbPlacasVehicular.Text = polizaVehicular.Placa;
                Aseguradora aseguradora = GestionAseg.consultarAseg(lbNitAseguradoraVehicular.Text);
                lbNombreAseguradoraVehicular.Text = aseguradora.NombreAseguradora;
                lbDireccionAseguradoraVehicular.Text = aseguradora.DireccionAseguradora;
                lbTelefonoAseguradoraVehicular.Text = aseguradora.TelefonoAseguradora;
                lbCorreoAseguradoraVehicular.Text = aseguradora.CorreoAseguradora;
                string archivo;
                archivo = poliza.PolizaVirtual;
                if (archivo == "Sin Poliza")
                {
                    PANELSINBOTONVEHICULAR.Visible = true;
                }
                else
                {
                    PANELBOTONVEHICULAR.Visible = true;
                    lbNombreArchivoVehicular.Text = poliza.PolizaVirtual;
                }
            }
            else if (listTipo.SelectedItem.Text == "Vida")
            {
                PANELDEFAULT.Visible = false;
                PANELESTUDIANTIL.Visible = false;
                PANELHOGAR.Visible = false;
                PANELPYME.Visible = false;
                PANELRC.Visible = false;
                PANELVEHICULAR.Visible = false;
                PANELVIDA.Visible = true;
                Poliza poliza = GestionPoliza.consultarPoliza(listTipo.SelectedItem.Value);
                lbCodigoPolizaVida.Text = poliza.CodigoPoliza;
                lbTipoPagoVida.Text = poliza.TipoPagoPoliza;
                lbFechaIVida.Text = poliza.FechaInicioPoliza.ToString("dd/MM/yyyy");
                lbFechaFVida.Text = poliza.FechaFinPoliza.ToString("dd/MM/yyyy");
                lbFechaEVida.Text = poliza.FechaExpedicionPoliza.ToString("dd/MM/yyyy");
                lbNombreTomadorVida.Text = poliza.NombreTomador;
                lbDocumentoTomadorVida.Text = poliza.DocumentoTomador;
                if (lbNombreTomadorVida.Text != "No Aplica")
                {
                    PANELTOMADORVIDA.Visible = true;
                }
                lbNombreBeneficiarioVida.Text = poliza.NombreAsegurado;
                lbDocumentoBeneficiarioVida.Text = poliza.DocumentoAsegurado;
                if (lbNombreBeneficiarioVida.Text != "No Aplica")
                {
                    PANELBENEFICIARIOVIDA.Visible = true;
                }
                lbNombreAseguradoVida.Text = poliza.NombreAsegurado;
                lbDocumentoAseguradoVida.Text = poliza.DocumentoAsegurado;
                if (lbNombreAseguradoVida.Text != "No Aplica")
                {
                    PANELASEGURADOVIDA.Visible = true;
                }
                lbNitAseguradoraVida.Text = poliza.NitAseguradora;
                PolizaTipoVida polizaVida = GestionPolizaTipo.consultarPolizaVida(listTipo.SelectedItem.Value);
                lbValorAseguradoVida.Text = polizaVida.ValorBeneficiario;
                lbFechaNacimientoVida.Text = polizaVida.FechaNacimiento.ToString("dd/MM/yyyy");
                Aseguradora aseguradora = GestionAseg.consultarAseg(lbNitAseguradoraVida.Text);
                lbNombreAseguradoraVida.Text = aseguradora.NombreAseguradora;
                lbDireccionAseguradoraVida.Text = aseguradora.DireccionAseguradora;
                lbTelefonoAseguradoraVida.Text = aseguradora.TelefonoAseguradora;
                lbCorreoAseguradoraVida.Text = aseguradora.CorreoAseguradora;
                string archivo;
                archivo = poliza.PolizaVirtual;
                if (archivo == "Sin Poliza")
                {
                    PANELSINBOTONVIDA.Visible = true;
                }
                else
                {
                    PANELBOTONVIDA.Visible = true;
                    lbNombreArchivoVida.Text = poliza.PolizaVirtual;
                }


            }
            else if (listTipo.SelectedItem.Text == "Seleccione una Póliza")
            {
                PANELDEFAULT.Visible = true;
                PANELESTUDIANTIL.Visible = false;
                PANELHOGAR.Visible = false;
                PANELPYME.Visible = false;
                PANELRC.Visible = false;
                PANELVEHICULAR.Visible = false;
                PANELVIDA.Visible = false;
            }
        }

        protected void btnDescargarVehicular_Click(object sender, EventArgs e)
        {
            string filePath = lbNombreArchivoVehicular.Text;
            Response.AddHeader("Content-Disposition", "attachment;filename=\"" + filePath + "\"");
            Response.TransmitFile(Server.MapPath("~/Aplicacion/PolizasVirtuales/" + filePath));
            Response.End();
        }

        protected void btnDescargarHogar_Click(object sender, EventArgs e)
        {
            string filePath = lbNombreArchivoHogar.Text;
            Response.AddHeader("Content-Disposition", "attachment;filename=\"" + filePath + "\"");
            Response.TransmitFile(Server.MapPath("~/Aplicacion/PolizasVirtuales/" + filePath));
            Response.End();
        }

        protected void btnDescargarPyme_Click(object sender, EventArgs e)
        {
            string filePath = lbNombreArchivoPyme.Text;
            Response.AddHeader("Content-Disposition", "attachment;filename=\"" + filePath + "\"");
            Response.TransmitFile(Server.MapPath("~/Aplicacion/PolizasVirtuales/" + filePath));
            Response.End();
        }

        protected void btnDescargarMedica_Click(object sender, EventArgs e)
        {
            string filePath = lbNombreArchivoMedica.Text;
            Response.AddHeader("Content-Disposition", "attachment;filename=\"" + filePath + "\"");
            Response.TransmitFile(Server.MapPath("~/Aplicacion/PolizasVirtuales/" + filePath));
            Response.End();
        }

        protected void btnDescargarVida_Click(object sender, EventArgs e)
        {
            string filePath = lbNombreArchivoVida.Text;
            Response.AddHeader("Content-Disposition", "attachment;filename=\"" + filePath + "\"");
            Response.TransmitFile(Server.MapPath("~/Aplicacion/PolizasVirtuales/" + filePath));
            Response.End();
        }

        protected void btnDescargarEstudiantil_Click(object sender, EventArgs e)
        {
            string filePath = lbNombreArchivoEstudiantil.Text;
            Response.AddHeader("Content-Disposition", "attachment;filename=\"" + filePath + "\"");
            Response.TransmitFile(Server.MapPath("~/Aplicacion/PolizasVirtuales/" + filePath));
            Response.End();
        }
    }
}