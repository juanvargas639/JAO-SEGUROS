using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace JAO_Seguros.Aplicacion.PagAsesor
{
    public partial class CrearPoliza : System.Web.UI.Page
    {
        /*--LLAMAR LAS CLASES DE GESTIÓN NECESARIAS--*/
        GestionPoliza gestion = new GestionPoliza();
        GestionPolizaTipo gestionTipo = new GestionPolizaTipo();
        GestionCliente gestionCliente = new GestionCliente();
        GestionAseguradora gestionAseguradora = new GestionAseguradora();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                /*--RESTRINGIR AL USUARIO SI ACCEDE A LA PÁGINA SIN LOGUEO--*/
                if (Session["UsuarioAsesor"] == null)
                {
                    Response.Redirect("/Aplicacion/Ingresar.aspx");
                }
                else
                {
                    /*--LLENAR LISTA DE ASEGURADORAS PARA SELECCION--*/
                    List<Aseguradora> listaAseguradora = gestionAseguradora.listadoNitAseguradoras();
                    ListItem i;
                    foreach (var item in listaAseguradora)
                    {
                        i = new ListItem(item.NitAseguradora);
                        listaProveedores.Items.Add(i);
                    }
                    /*--LLENAR LISTA DE CLIENTES PARA SELECCION--*/
                    List<Cliente> listaCliente = gestionCliente.listadoIDClientesAsesor(Convert.ToString(Session["UsuarioAsesor"]));
                    ListItem x;
                    foreach (var item in listaCliente)
                    {
                        x = new ListItem(item.DocumentoCliente);
                        listaClientes.Items.Add(x);
                    }
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

        protected void listTipoPoliza_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (listTipoPoliza.SelectedItem.Text == "Estudiantil")
            {
                panelEstudiantil.Visible = true;
                panelHogar.Visible = false;
                panelPyme.Visible = false;
                panelRC.Visible = false;
                panelVehicular.Visible = false;
                panelVida.Visible = false;
                txtCursadoCreaPolizaEstudiantil.Text = "";
                txtCursoCreaPolizaEstudiantil.Text = "";
                txtInstitucionCreaPolizaEstudiantil.Text = "";
                txtFechaNacimientoCreaPolizaEstudiantil.Text = "";
                txtTipoAutoCreaPolizaVehicular.Text = "Prueba";
                txtFechaNacimientoCreaPolizaVehicular.Text = "Prueba";
                txtPlacasCreaPolizaVehicular.Text = "Prueba";
            }
            else if (listTipoPoliza.SelectedItem.Text == "Hogar")
            {
                panelEstudiantil.Visible = false;
                panelHogar.Visible = true;
                panelPyme.Visible = false;
                panelRC.Visible = false;
                panelVehicular.Visible = false;
                panelVida.Visible = false;
                txtFechaNacimientoCreaPolizaHogar.Text = "";
                txtValorEnseresCreaPolizaHogar.Text = "";
                txtValorConstruccionCreaPoliza.Text = "";
                txtTipoAutoCreaPolizaVehicular.Text = "Prueba";
                txtFechaNacimientoCreaPolizaVehicular.Text = "Prueba";
                txtPlacasCreaPolizaVehicular.Text = "Prueba";
            }
            else if (listTipoPoliza.SelectedItem.Text == "Pyme")
            {
                panelEstudiantil.Visible = false;
                panelHogar.Visible = false;
                panelPyme.Visible = true;
                panelRC.Visible = false;
                panelVehicular.Visible = false;
                panelVida.Visible = false;
                txtTipoNegocioCreaPolizaPyme.Text = "";
                txtNombreNegocioCreaPolizaPyme.Text = "";
                txtValorAseguradoCreaPolizaPyme.Text = "";
                txtTipoAutoCreaPolizaVehicular.Text = "Prueba";
                txtFechaNacimientoCreaPolizaVehicular.Text = "Prueba";
                txtPlacasCreaPolizaVehicular.Text = "Prueba";
            }
            else if (listTipoPoliza.SelectedItem.Text == "RCMedica")
            {
                panelEstudiantil.Visible = false;
                panelHogar.Visible = false;
                panelPyme.Visible = false;
                panelRC.Visible = true;
                panelVehicular.Visible = false;
                panelVida.Visible = false;
                txtFechaExpedicionCreaPolizaRC.Text = "";
                txtFechaNacimientoCreaPolizaRC.Text = "";
                txtTarjetaCreaPolizaRC.Text = "";
                txtTipoAutoCreaPolizaVehicular.Text = "Prueba";
                txtFechaNacimientoCreaPolizaVehicular.Text = "Prueba";
                txtPlacasCreaPolizaVehicular.Text = "Prueba";

            }
            else if (listTipoPoliza.SelectedItem.Text == "Vehicular")
            {
                panelEstudiantil.Visible = false;
                panelHogar.Visible = false;
                panelPyme.Visible = false;
                panelRC.Visible = false;
                panelVehicular.Visible = true;
                panelVida.Visible = false;
                txtTipoAutoCreaPolizaVehicular.Text = "";
                txtFechaNacimientoCreaPolizaVehicular.Text = "";
                txtPlacasCreaPolizaVehicular.Text = "";

            }
            else if (listTipoPoliza.SelectedItem.Text == "Vida")
            {
                panelEstudiantil.Visible = false;
                panelHogar.Visible = false;
                panelPyme.Visible = false;
                panelRC.Visible = false;
                panelVehicular.Visible = false;
                panelVida.Visible = true;
                txtFechaNacimientoCreaPolizaVida.Text = "";
                txtValorBeneficiarioCreaPolizaVida.Text = "";
                txtTipoAutoCreaPolizaVehicular.Text = "Prueba";
                txtFechaNacimientoCreaPolizaVehicular.Text = "Prueba";
                txtPlacasCreaPolizaVehicular.Text = "Prueba";
            }
        }

        protected void btnCrearPoliza_Click(object sender, EventArgs e)
        {
            if (!gestionAseguradora.existeAseg(txtNitCreaPoliza.Text))
            {
                MessageBox.Show(" El nit. de la aseguradora no existe ");
                txtNitCreaPoliza.Focus();

            }
            else
            {
                if (!gestionCliente.existeCliente(txtDocumentoCreaPoliza.Text))
                {
                    MessageBox.Show(" El número del Documento del cliente referido no existe ");
                    txtDocumentoCreaPoliza.Focus();
                }
                else
                {
                    if (!gestion.existePoliza(txtCodigoPoliza.Text))
                    {
                        if (FileUpload1.HasFile)
                        {
                            string extension = System.IO.Path.GetExtension(FileUpload1.FileName);
                            extension = extension.ToLower();
                            int tam = FileUpload1.PostedFile.ContentLength;

                            if (extension == ".pdf" && tam <= 1000000)
                            {
                                if (!File.Exists(Server.MapPath("~/Aplicacion/PolizasVirtuales/" + FileUpload1.FileName)))
                                {
                                    Poliza nuevapoliza = new Poliza();
                                    nuevapoliza.CodigoPoliza = txtCodigoPoliza.Text;
                                    if (txtNomTomCreaPoliza.Text == "")
                                    {
                                        nuevapoliza.NombreTomador = "No Aplica";
                                    }
                                    else
                                    {
                                        nuevapoliza.NombreTomador = txtNomTomCreaPoliza.Text;
                                    }
                                    if (txtDocTomCreaPoliza.Text == "")
                                    {
                                        nuevapoliza.DocumentoTomador = "No Aplica";
                                    }
                                    else
                                    {
                                        nuevapoliza.DocumentoTomador = txtDocTomCreaPoliza.Text;
                                    }
                                    if (txtNomBenCreaPoliza.Text == "")
                                    {
                                        nuevapoliza.NombreBeneficiario = "No Aplica";
                                    }
                                    else
                                    {
                                        nuevapoliza.NombreBeneficiario = txtNomBenCreaPoliza.Text;
                                    }
                                    if (txtDocBenCreaPoliza.Text == "")
                                    {
                                        nuevapoliza.DocumentoBeneficiario = "No Aplica";
                                    }
                                    else
                                    {
                                        nuevapoliza.DocumentoBeneficiario = txtDocBenCreaPoliza.Text;
                                    }
                                    if (txtNomAsegCreaPoliza.Text == "")
                                    {
                                        nuevapoliza.NombreAsegurado = "No Aplica";
                                    }
                                    else
                                    {
                                        nuevapoliza.NombreAsegurado = txtNomAsegCreaPoliza.Text;
                                    }
                                    if (txtDocAsegCreaPoliza.Text == "")
                                    {
                                        nuevapoliza.DocumentoAsegurado = "No Aplica";
                                    }
                                    else
                                    {
                                        nuevapoliza.DocumentoAsegurado = txtDocAsegCreaPoliza.Text;
                                    }

                                    nuevapoliza.FechaInicioPoliza = Convert.ToDateTime(txtFechaICreaPoliza.Text);
                                    nuevapoliza.FechaFinPoliza = Convert.ToDateTime(txtFechaFCreaPoliza.Text);
                                    nuevapoliza.FechaExpedicionPoliza = Convert.ToDateTime(txtFechaECreaPoliza.Text);
                                    nuevapoliza.DocumentoCliente = txtDocumentoCreaPoliza.Text;
                                    nuevapoliza.NitAseguradora = txtNitCreaPoliza.Text;
                                    nuevapoliza.TipoPagoPoliza = listTipoPago.Text;
                                    nuevapoliza.TipoPoliza = listTipoPoliza.Text;
                                    FileUpload1.SaveAs(Server.MapPath("~/Aplicacion/PolizasVirtuales/" + FileUpload1.FileName));
                                    lbMensaje.Text = "Se subio el archivo";
                                    string polizavirtual;
                                    polizavirtual = FileUpload1.FileName;
                                    nuevapoliza.PolizaVirtual = polizavirtual;
                                    if (gestion.InsertarPoliza(nuevapoliza))
                                    {
                                        if (listTipoPoliza.Text == "Estudiantil")
                                        {
                                            PolizaTipoEstudiantil myPolizaEst = new PolizaTipoEstudiantil();
                                            myPolizaEst.CodigoPoliza = txtCodigoPoliza.Text;
                                            myPolizaEst.FechaNacimiento = Convert.ToDateTime(txtFechaNacimientoCreaPolizaEstudiantil.Text);
                                            myPolizaEst.Institucion = txtInstitucionCreaPolizaEstudiantil.Text;
                                            myPolizaEst.AnuarioCursado = txtCursadoCreaPolizaEstudiantil.Text;
                                            myPolizaEst.CursoSemestre = txtCursoCreaPolizaEstudiantil.Text;
                                            if (gestionTipo.InsertarPolizaEstudiantil(myPolizaEst))
                                            {
                                                MessageBox.Show("Se ha subido el archivo y se ha creado la Póliza Estudiantil correctamente ");
                                                Response.Redirect("Polizas.aspx");
                                            }
                                            else
                                            {
                                                MessageBox.Show(" Error al crear la Póliza Estudiantil " + gestion.Error);
                                            }
                                        }
                                        else if (listTipoPoliza.Text == "Hogar")
                                        {
                                            PolizaTipoHogar myPolizaHog = new PolizaTipoHogar();
                                            myPolizaHog.CodigoPoliza = txtCodigoPoliza.Text;
                                            myPolizaHog.FechaNacimiento = Convert.ToDateTime(txtFechaNacimientoCreaPolizaHogar.Text);
                                            myPolizaHog.ValorEnseres = txtValorEnseresCreaPolizaHogar.Text;
                                            myPolizaHog.ValorConstruccion = txtValorConstruccionCreaPoliza.Text;
                                            myPolizaHog.Localidad = listlocalidadCreaPolizaHogar.Text;
                                            if (gestionTipo.InsertarPolizaHogar(myPolizaHog))
                                            {
                                                MessageBox.Show("Se ha subido el archivo y se ha creado la Póliza Hogar correctamente ");
                                                Response.Redirect("Polizas.aspx");
                                            }
                                            else
                                            {
                                                MessageBox.Show(" Error al crear la Póliza Hogar " + gestion.Error);
                                            }
                                        }
                                        else if (listTipoPoliza.Text == "Pyme")
                                        {
                                            PolizaTipoPyme myPolizaPyme = new PolizaTipoPyme();
                                            myPolizaPyme.CodigoPoliza = txtCodigoPoliza.Text;
                                            myPolizaPyme.ValorAsegurado = txtValorAseguradoCreaPolizaPyme.Text;
                                            myPolizaPyme.TipoNegocio = txtTipoNegocioCreaPolizaPyme.Text;
                                            myPolizaPyme.NombreNegocio = txtNombreNegocioCreaPolizaPyme.Text;
                                            myPolizaPyme.LocalidadNegocio = listLocalidadCreaPolizaPyme.Text;
                                            if (gestionTipo.InsertarPolizaPyme(myPolizaPyme))
                                            {
                                                MessageBox.Show("Se ha subido el archivo y se ha creado la Póliza Pyme correctamente ");
                                                Response.Redirect("Polizas.aspx");
                                            }
                                            else
                                            {
                                                MessageBox.Show(" Error al crear la Póliza Pyme " + gestion.Error);
                                            }
                                        }
                                        else if (listTipoPoliza.Text == "RCMedica")
                                        {
                                            PolizaTipoRCMedica myPolizaRC = new PolizaTipoRCMedica();
                                            myPolizaRC.CodigoPoliza = txtCodigoPoliza.Text;
                                            myPolizaRC.FechaNacimiento = Convert.ToDateTime(txtFechaNacimientoCreaPolizaRC.Text);
                                            myPolizaRC.TarjetaProfesional = txtTarjetaCreaPolizaRC.Text;
                                            myPolizaRC.FechaExpedicion = Convert.ToDateTime(txtFechaExpedicionCreaPolizaRC.Text);
                                            if (gestionTipo.InsertarPolizaRCMedica(myPolizaRC))
                                            {
                                                MessageBox.Show("Se ha subido el archivo y se ha creado la Póliza RC correctamente ");
                                                Response.Redirect("Polizas.aspx");
                                            }
                                            else
                                            {
                                                MessageBox.Show(" Error al crear la Póliza RC " + gestion.Error);
                                            }
                                        }
                                        else if (listTipoPoliza.Text == "Vehicular")
                                        {
                                            PolizaTipoVehicular myPolizaVehicular = new PolizaTipoVehicular();
                                            myPolizaVehicular.CodigoPoliza = txtCodigoPoliza.Text;
                                            myPolizaVehicular.FechaNacimiento = Convert.ToDateTime(txtFechaNacimientoCreaPolizaVehicular.Text);
                                            myPolizaVehicular.TipoAuto = txtTipoAutoCreaPolizaVehicular.Text;
                                            myPolizaVehicular.Placa = txtPlacasCreaPolizaVehicular.Text;
                                            if (gestionTipo.InsertarPolizaVehicular(myPolizaVehicular))
                                            {
                                                MessageBox.Show("Se ha subido el archivo y se ha creado la Póliza Vehicular correctamente ");
                                                Response.Redirect("Polizas.aspx");
                                            }
                                            else
                                            {
                                                MessageBox.Show(" Error al crear la Póliza Vehicular " + gestion.Error);
                                            }
                                        }
                                        else if (listTipoPoliza.Text == "Vida")
                                        {
                                            PolizaTipoVida myPolizaVida = new PolizaTipoVida();
                                            myPolizaVida.CodigoPoliza = txtCodigoPoliza.Text;
                                            myPolizaVida.ValorBeneficiario = txtValorBeneficiarioCreaPolizaVida.Text;
                                            myPolizaVida.FechaNacimiento = Convert.ToDateTime(txtFechaNacimientoCreaPolizaVida.Text);
                                            if (gestionTipo.InsertarPolizaVida(myPolizaVida))
                                            {
                                                MessageBox.Show("Se ha subido el archivo y se ha creado la Póliza Vida Correctamente ");
                                                Response.Redirect("Polizas.aspx");
                                            }
                                            else
                                            {
                                                MessageBox.Show(" Error al crear la Póliza Vida " + gestion.Error);
                                            }
                                        }
                                    }
                                    else
                                    {
                                        MessageBox.Show(" Error al crear la Póliza " + gestion.Error);
                                    }
                                }
                                else
                                {
                                    MessageBox.Show(" La póliza virtual ya existe, verique el nombre y código");
                                }

                            }
                            else
                            {
                                MessageBox.Show(" Solo se permiten archivos de formato PDF de tamaño no mayor a 1MB ");
                            }

                        }
                        else
                        {
                            Poliza nuevapoliza = new Poliza();
                            nuevapoliza.CodigoPoliza = txtCodigoPoliza.Text;
                            if (txtNomTomCreaPoliza.Text == "")
                            {
                                nuevapoliza.NombreTomador = "No Aplica";
                            }
                            else
                            {
                                nuevapoliza.NombreTomador = txtNomTomCreaPoliza.Text;
                            }
                            if (txtDocTomCreaPoliza.Text == "")
                            {
                                nuevapoliza.DocumentoTomador = "No Aplica";
                            }
                            else
                            {
                                nuevapoliza.DocumentoTomador = txtDocTomCreaPoliza.Text;
                            }
                            if (txtNomBenCreaPoliza.Text == "")
                            {
                                nuevapoliza.NombreBeneficiario = "No Aplica";
                            }
                            else
                            {
                                nuevapoliza.NombreBeneficiario = txtNomBenCreaPoliza.Text;
                            }
                            if (txtDocBenCreaPoliza.Text == "")
                            {
                                nuevapoliza.DocumentoBeneficiario = "No Aplica";
                            }
                            else
                            {
                                nuevapoliza.DocumentoBeneficiario = txtDocBenCreaPoliza.Text;
                            }
                            if (txtNomAsegCreaPoliza.Text == "")
                            {
                                nuevapoliza.NombreAsegurado = "No Aplica";
                            }
                            else
                            {
                                nuevapoliza.NombreAsegurado = txtNomAsegCreaPoliza.Text;
                            }
                            if (txtDocAsegCreaPoliza.Text == "")
                            {
                                nuevapoliza.DocumentoAsegurado = "No Aplica";
                            }
                            else
                            {
                                nuevapoliza.DocumentoAsegurado = txtDocAsegCreaPoliza.Text;
                            }
                            nuevapoliza.FechaInicioPoliza = Convert.ToDateTime(txtFechaICreaPoliza.Text);
                            nuevapoliza.FechaFinPoliza = Convert.ToDateTime(txtFechaFCreaPoliza.Text);
                            nuevapoliza.FechaExpedicionPoliza = Convert.ToDateTime(txtFechaECreaPoliza.Text);
                            nuevapoliza.DocumentoCliente = txtDocumentoCreaPoliza.Text;
                            nuevapoliza.NitAseguradora = txtNitCreaPoliza.Text;
                            nuevapoliza.TipoPagoPoliza = listTipoPago.Text;
                            nuevapoliza.TipoPoliza = listTipoPoliza.Text;
                            nuevapoliza.PolizaVirtual = "Sin Poliza";
                            if (gestion.InsertarPoliza(nuevapoliza))
                            {
                                if (listTipoPoliza.Text == "Estudiantil")
                                {
                                    PolizaTipoEstudiantil myPolizaEst = new PolizaTipoEstudiantil();
                                    myPolizaEst.CodigoPoliza = txtCodigoPoliza.Text;
                                    myPolizaEst.FechaNacimiento = Convert.ToDateTime(txtFechaNacimientoCreaPolizaEstudiantil.Text);
                                    myPolizaEst.Institucion = txtInstitucionCreaPolizaEstudiantil.Text;
                                    myPolizaEst.AnuarioCursado = txtCursadoCreaPolizaEstudiantil.Text;
                                    myPolizaEst.CursoSemestre = txtCursoCreaPolizaEstudiantil.Text;
                                    if (gestionTipo.InsertarPolizaEstudiantil(myPolizaEst))
                                    {
                                        MessageBox.Show(" Se ha creado la Póliza Estudiantil correctamente, Recuerda adjuntar la Póliza Virtual ");
                                        Response.Redirect("Polizas.aspx");
                                    }
                                    else
                                    {
                                        MessageBox.Show(" Error al crear la Póliza Estudiantil " + gestion.Error);
                                    }
                                }
                                else if (listTipoPoliza.Text == "Hogar")
                                {
                                    PolizaTipoHogar myPolizaHog = new PolizaTipoHogar();
                                    myPolizaHog.CodigoPoliza = txtCodigoPoliza.Text;
                                    myPolizaHog.FechaNacimiento = Convert.ToDateTime(txtFechaNacimientoCreaPolizaHogar.Text);
                                    myPolizaHog.ValorEnseres = txtValorEnseresCreaPolizaHogar.Text;
                                    myPolizaHog.ValorConstruccion = txtValorConstruccionCreaPoliza.Text;
                                    myPolizaHog.Localidad = listlocalidadCreaPolizaHogar.Text;
                                    if (gestionTipo.InsertarPolizaHogar(myPolizaHog))
                                    {
                                        MessageBox.Show(" Se ha creado la Póliza Hogar correctamente, Recuerda adjuntar la Póliza Virtual ");
                                        Response.Redirect("Polizas.aspx");
                                    }
                                    else
                                    {
                                        MessageBox.Show(" Error al crear la Póliza Hogar " + gestion.Error);
                                    }
                                }
                                else if (listTipoPoliza.Text == "Pyme")
                                {
                                    PolizaTipoPyme myPolizaPyme = new PolizaTipoPyme();
                                    myPolizaPyme.CodigoPoliza = txtCodigoPoliza.Text;
                                    myPolizaPyme.ValorAsegurado = txtValorAseguradoCreaPolizaPyme.Text;
                                    myPolizaPyme.TipoNegocio = txtTipoNegocioCreaPolizaPyme.Text;
                                    myPolizaPyme.NombreNegocio = txtNombreNegocioCreaPolizaPyme.Text;
                                    myPolizaPyme.LocalidadNegocio = listLocalidadCreaPolizaPyme.Text;
                                    if (gestionTipo.InsertarPolizaPyme(myPolizaPyme))
                                    {
                                        MessageBox.Show(" Se ha creado la Póliza Pyme correctamente, Recuerda adjuntar la Póliza Virtual ");
                                        Response.Redirect("Polizas.aspx");
                                    }
                                    else
                                    {
                                        MessageBox.Show(" Error al crear la Póliza Pyme " + gestion.Error);
                                    }
                                }
                                else if (listTipoPoliza.Text == "RCMedica")
                                {
                                    PolizaTipoRCMedica myPolizaRC = new PolizaTipoRCMedica();
                                    myPolizaRC.CodigoPoliza = txtCodigoPoliza.Text;
                                    myPolizaRC.FechaNacimiento = Convert.ToDateTime(txtFechaNacimientoCreaPolizaRC.Text);
                                    myPolizaRC.TarjetaProfesional = txtTarjetaCreaPolizaRC.Text;
                                    myPolizaRC.FechaExpedicion = Convert.ToDateTime(txtFechaExpedicionCreaPolizaRC.Text);
                                    if (gestionTipo.InsertarPolizaRCMedica(myPolizaRC))
                                    {
                                        MessageBox.Show(" Se ha creado la Póliza RC correctamente, Recuerda adjuntar la Póliza Virtual ");
                                        Response.Redirect("Polizas.aspx");
                                    }
                                    else
                                    {
                                        MessageBox.Show(" Error al crear la Póliza RC " + gestion.Error);
                                    }
                                }
                                else if (listTipoPoliza.Text == "Vehicular")
                                {
                                    PolizaTipoVehicular myPolizaVehicular = new PolizaTipoVehicular();
                                    myPolizaVehicular.CodigoPoliza = txtCodigoPoliza.Text;
                                    myPolizaVehicular.FechaNacimiento = Convert.ToDateTime(txtFechaNacimientoCreaPolizaVehicular.Text);
                                    myPolizaVehicular.TipoAuto = txtTipoAutoCreaPolizaVehicular.Text;
                                    myPolizaVehicular.Placa = txtPlacasCreaPolizaVehicular.Text;
                                    if (gestionTipo.InsertarPolizaVehicular(myPolizaVehicular))
                                    {
                                        MessageBox.Show(" Se ha creado la Póliza Vehicular correctamente, Recuerda adjuntar la Póliza Virtual ");
                                        Response.Redirect("Polizas.aspx");
                                    }
                                    else
                                    {
                                        MessageBox.Show(" Error al crear la Póliza Vehicular " + gestion.Error);
                                    }
                                }
                                else if (listTipoPoliza.Text == "Vida")
                                {
                                    PolizaTipoVida myPolizaVida = new PolizaTipoVida();
                                    myPolizaVida.CodigoPoliza = txtCodigoPoliza.Text;
                                    myPolizaVida.ValorBeneficiario = txtValorBeneficiarioCreaPolizaVida.Text;
                                    myPolizaVida.FechaNacimiento = Convert.ToDateTime(txtFechaNacimientoCreaPolizaVida.Text);
                                    if (gestionTipo.InsertarPolizaVida(myPolizaVida))
                                    {
                                        MessageBox.Show(" Se ha creado la Póliza Vida Correctamente, Recuerda adjuntar la Póliza Virtual");
                                        Response.Redirect("Polizas.aspx");
                                    }
                                    else
                                    {
                                        MessageBox.Show(" Error al crear la Póliza Vida " + gestion.Error);
                                    }
                                }
                            }
                            else
                            {
                                MessageBox.Show(" Error al crear la Póliza " + gestion.Error);
                            }
                        }
                    }
                    else
                    {
                        MessageBox.Show(" La Póliza con el código  " + txtCodigoPoliza.Text + " ya existe");
                    }
                }
            }
        }

        protected void listaProveedores_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtNitCreaPoliza.Text = listaProveedores.SelectedItem.Value;
        }

        protected void listaClientes_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtDocumentoCreaPoliza.Text = listaClientes.SelectedItem.Value;
        }
    }
}