using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace JAO_Seguros.Aplicacion.PagAsesor
{
    public partial class EditarPoliza : System.Web.UI.Page
    {
        /*--LLAMAR LAS CLASES NECESARIAS--*/
        GestionPoliza gestion = new GestionPoliza();
        GestionPolizaTipo gestionTipo = new GestionPolizaTipo();
        GestionCliente gestionCliente = new GestionCliente();
        GestionAseguradora gestionAseguradora = new GestionAseguradora();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UsuarioAsesor"] == null)
                {
                    Response.Redirect("/Aplicacion/Ingresar.aspx");
                }
                else
                {
                    if (Request.QueryString["CodigoPoliza"] == null)
                    {
                        Response.Redirect("Polizas.aspx");
                    }
                    else
                    {
                        txtCodigoPoliza.Text = Request.QueryString["CodigoPoliza"].ToString();
                        Poliza myPoliza = gestion.consultarPoliza(txtCodigoPoliza.Text);
                        if (myPoliza.NombreTomador == "No Aplica")
                        {
                            txtNomTomEditarPoliza.Text = "";
                        }
                        else
                        {
                            txtNomTomEditarPoliza.Text = myPoliza.NombreTomador;
                        }
                        if (myPoliza.DocumentoTomador == "No Aplica")
                        {
                            txtDocTomEditarPoliza.Text = "";
                        }
                        else
                        {
                            txtDocTomEditarPoliza.Text = myPoliza.DocumentoTomador;
                        }
                        if (myPoliza.NombreBeneficiario == "No Aplica")
                        {
                            txtNomBenEditarPoliza.Text = "";
                        }
                        else
                        {
                            txtNomBenEditarPoliza.Text = myPoliza.NombreBeneficiario;
                        }
                        if (myPoliza.DocumentoBeneficiario == "No Aplica")
                        {
                            txtDocBenEditarPoliza.Text = "";
                        }
                        else
                        {
                            txtDocBenEditarPoliza.Text = myPoliza.DocumentoBeneficiario;
                        }
                        if (myPoliza.NombreAsegurado == "No Aplica")
                        {
                            txtNomAsegEditarPoliza.Text = "";
                        }
                        else
                        {
                            txtNomAsegEditarPoliza.Text = myPoliza.NombreAsegurado;
                        }
                        if (myPoliza.DocumentoAsegurado == "No Aplica")
                        {
                            txtDocAsegEditarPoliza.Text = "";
                        }
                        else
                        {
                            txtDocAsegEditarPoliza.Text = myPoliza.DocumentoAsegurado;
                        }
                        txtFechaIEditarPoliza.Text = myPoliza.FechaInicioPoliza.ToString("dd/MM/yyyy");
                        txtFechaFEditarPoliza.Text = myPoliza.FechaFinPoliza.ToString("dd/MM/yyyy");
                        txtFechaEEditarPoliza.Text = myPoliza.FechaExpedicionPoliza.ToString("dd/MM/yyyy");
                        listTipoPago.Text = myPoliza.TipoPagoPoliza;
                        txtDocumentoEditarPoliza.Text = myPoliza.DocumentoCliente;
                        txtNitEditarPoliza.Text = myPoliza.NitAseguradora;
                        txtTipo.Text = myPoliza.TipoPoliza;
                        string archivo;
                        archivo = myPoliza.PolizaVirtual;
                        if (archivo == "Sin Poliza")
                        {
                            PANELSUBIRPOLIZA.Visible = true;
                        }
                        else
                        {
                            PANELPOLIZASUBIDA.Visible = true;
                            lbNombreArchivo.Text = myPoliza.PolizaVirtual;
                            PANELELIMINARPOLIZA.Visible = true;

                        }
                        if (txtTipo.Text == "Estudiantil")
                        {
                            panelEstudiantil.Visible = true;
                            PolizaTipoEstudiantil polizaTipoEstudiantil = gestionTipo.consultarPolizaEstudiantil(txtCodigoPoliza.Text);
                            txtFechaNacimientoEditarPolizaEstudiantil.Text = polizaTipoEstudiantil.FechaNacimiento.ToString("dd/MM/yyyy");
                            txtInstitucionEditarPolizaEstudiantil.Text = polizaTipoEstudiantil.Institucion;
                            txtCursadoEditarPolizaEstudiantil.Text = polizaTipoEstudiantil.AnuarioCursado;
                            txtCursoEditarPolizaEstudiantil.Text = polizaTipoEstudiantil.CursoSemestre;
                        }
                        else if (txtTipo.Text == "Hogar")
                        {
                            panelHogar.Visible = true;
                            PolizaTipoHogar polizaTipoHogar = gestionTipo.consultarPolizaHogar(txtCodigoPoliza.Text);
                            txtFechaNacimientoEditarPolizaHogar.Text = polizaTipoHogar.FechaNacimiento.ToString("dd/MM/yyyy");
                            txtValorEnseresEditarPolizaHogar.Text = polizaTipoHogar.ValorEnseres;
                            txtValorConstruccionEditarPoliza.Text = polizaTipoHogar.ValorConstruccion;
                            listlocalidadEditarPolizaHogar.Text = polizaTipoHogar.Localidad;
                        }
                        else if (txtTipo.Text == "Pyme")
                        {
                            panelPyme.Visible = true;
                            PolizaTipoPyme polizaTipoPyme = gestionTipo.consultarPolizaPyme(txtCodigoPoliza.Text);
                            txtValorAseguradoEditarPolizaPyme.Text = polizaTipoPyme.ValorAsegurado;
                            txtTipoNegocioEditarPolizaPyme.Text = polizaTipoPyme.TipoNegocio;
                            txtNombreNegocioEditarPolizaPyme.Text = polizaTipoPyme.NombreNegocio;
                            listLocalidadEditarPolizaPyme.Text = polizaTipoPyme.LocalidadNegocio;
                        }
                        else if (txtTipo.Text == "RCMedica")
                        {
                            panelRC.Visible = true;
                            PolizaTipoRCMedica polizaTipoRCMedica = gestionTipo.consultarPolizaRCMedica(txtCodigoPoliza.Text);
                            txtFechaNacimientoEditarPolizaRC.Text = polizaTipoRCMedica.FechaNacimiento.ToString("dd/MM/yyyy");
                            txtTarjetaEditarPolizaRC.Text = polizaTipoRCMedica.TarjetaProfesional;
                            txtFechaExpedicionEditarPolizaRC.Text = polizaTipoRCMedica.FechaExpedicion.ToString("dd/MM/yyyy");
                        }
                        else if (txtTipo.Text == "Vehicular")
                        {
                            panelVehicular.Visible = true;
                            PolizaTipoVehicular polizaTipoVehicular = gestionTipo.consultarPolizaVehicular(txtCodigoPoliza.Text);
                            txtFechaNacimientoEditarPolizaVehicular.Text = polizaTipoVehicular.FechaNacimiento.ToString("dd/MM/yyyy");
                            txtTipoAutoEditarPolizaVehicular.Text = polizaTipoVehicular.TipoAuto;
                            txtPlacasEditarPolizaVehicular.Text = polizaTipoVehicular.Placa;
                        }
                        else if (txtTipo.Text == "Vida")
                        {
                            panelVida.Visible = true;
                            PolizaTipoVida polizaTipoVida = gestionTipo.consultarPolizaVida(txtCodigoPoliza.Text);
                            txtFechaNacimientoEditarPolizaVida.Text = polizaTipoVida.FechaNacimiento.ToString("dd/MM/yyyy");
                            txtValorBeneficiarioEditarPolizaVida.Text = polizaTipoVida.ValorBeneficiario;
                        }
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
        }

        protected void btnCerrarSesion_ServerClick(object sender, EventArgs e)
        {
            /*ELIMINAR LA VARIABLE SESSION*/
            Session.Remove("UsuarioAsesor");
            /*REDIRECCIONAR A LA PÁGINA PRINCIPAL*/
            Response.Redirect("/Aplicacion/Ingresar.aspx");
        }

        protected void listaProveedores_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtNitEditarPoliza.Text = listaProveedores.SelectedItem.Value;
        }

        protected void listaClientes_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtDocumentoEditarPoliza.Text = listaClientes.SelectedItem.Value;
        }

        protected void btnEditarPoliza_Click(object sender, EventArgs e)
        {
            Poliza myPoliza = new Poliza();
            myPoliza.CodigoPoliza = txtCodigoPoliza.Text;
            if (txtNomTomEditarPoliza.Text == "")
            {
                myPoliza.NombreTomador = "No Aplica";
            }
            else
            {
                myPoliza.NombreTomador = txtNomTomEditarPoliza.Text;
            }
            if (txtDocTomEditarPoliza.Text == "")
            {
                myPoliza.DocumentoTomador = "No Aplica";
            }
            else
            {
                myPoliza.DocumentoTomador = txtDocTomEditarPoliza.Text;
            }
            if (txtNomBenEditarPoliza.Text == "")
            {
                myPoliza.NombreBeneficiario = "No Aplica";
            }
            else
            {
                myPoliza.NombreBeneficiario = txtNomBenEditarPoliza.Text;
            }
            if (txtDocBenEditarPoliza.Text == "")
            {
                myPoliza.DocumentoBeneficiario = "No Aplica";
            }
            else
            {
                myPoliza.DocumentoBeneficiario = txtDocBenEditarPoliza.Text;
            }
            if (txtNomAsegEditarPoliza.Text == "")
            {
                myPoliza.NombreAsegurado = "No Aplica";
            }
            else
            {
                myPoliza.NombreAsegurado = txtNomAsegEditarPoliza.Text;
            }
            if (txtDocAsegEditarPoliza.Text == "")
            {
                myPoliza.DocumentoAsegurado = "No Aplica";
            }
            else
            {
                myPoliza.DocumentoAsegurado = txtDocAsegEditarPoliza.Text;
            }
            myPoliza.FechaInicioPoliza = Convert.ToDateTime(txtFechaIEditarPoliza.Text);
            myPoliza.FechaFinPoliza = Convert.ToDateTime(txtFechaFEditarPoliza.Text);
            myPoliza.FechaExpedicionPoliza = Convert.ToDateTime(txtFechaEEditarPoliza.Text);
            myPoliza.TipoPagoPoliza = listTipoPago.Text;
            myPoliza.DocumentoCliente = txtDocumentoEditarPoliza.Text;
            myPoliza.NitAseguradora = txtNitEditarPoliza.Text;
            myPoliza.TipoPoliza = txtTipo.Text;
            if (!gestion.existePoliza(txtCodigoPoliza.Text))
            {
                if (FileUpload1.HasFile)
                {
                    string extension = System.IO.Path.GetExtension(FileUpload1.FileName);
                    extension = extension.ToLower();
                    int tam = FileUpload1.PostedFile.ContentLength;
                    if (extension == ".pdf" && tam <= 1000000)
                    {
                        FileUpload1.SaveAs(Server.MapPath("~/Aplicacion/PolizasVirtuales/" + FileUpload1.FileName));
                        lbMensaje.Text = "Se subio el Archivo";
                        string polizavirtual;
                        polizavirtual = FileUpload1.FileName;
                        myPoliza.PolizaVirtual = polizavirtual;
                        string codigoActual;
                        codigoActual = Request.QueryString["CodigoPoliza"];
                        if (gestion.EditarPoliza(myPoliza, codigoActual))
                        {
                            if (myPoliza.TipoPoliza == "Estudiantil")
                            {
                                PolizaTipoEstudiantil polizaTipoEstudiantil = new PolizaTipoEstudiantil();
                                polizaTipoEstudiantil.CodigoPoliza = myPoliza.CodigoPoliza;
                                polizaTipoEstudiantil.FechaNacimiento = Convert.ToDateTime(txtFechaNacimientoEditarPolizaEstudiantil.Text);
                                polizaTipoEstudiantil.Institucion = txtInstitucionEditarPolizaEstudiantil.Text;
                                polizaTipoEstudiantil.AnuarioCursado = txtCursadoEditarPolizaEstudiantil.Text;
                                polizaTipoEstudiantil.CursoSemestre = txtCursoEditarPolizaEstudiantil.Text;
                                if (gestionTipo.EditarPolizaEstudiantil(polizaTipoEstudiantil))
                                {
                                    MessageBox.Show(" La póliza estudiantil ha sido actualizada ");
                                    Response.Redirect("Polizas.aspx");
                                }
                                else
                                {
                                    MessageBox.Show(" La póliza estudiantil no ha sido actualizada " + gestionTipo.Error);
                                }
                            }
                            else if (myPoliza.TipoPoliza == "Hogar")
                            {
                                PolizaTipoHogar polizaTipoHogar = new PolizaTipoHogar();
                                polizaTipoHogar.CodigoPoliza = myPoliza.CodigoPoliza;
                                polizaTipoHogar.ValorEnseres = txtValorEnseresEditarPolizaHogar.Text;
                                polizaTipoHogar.ValorConstruccion = txtValorConstruccionEditarPoliza.Text;
                                polizaTipoHogar.FechaNacimiento = Convert.ToDateTime(txtFechaNacimientoEditarPolizaHogar.Text);
                                polizaTipoHogar.Localidad = listlocalidadEditarPolizaHogar.Text;
                                if (gestionTipo.EditarPolizaHogar(polizaTipoHogar))
                                {
                                    MessageBox.Show(" La póliza hogar ha sido actualizada ");
                                    Response.Redirect("Polizas.aspx");
                                }
                                else
                                {
                                    MessageBox.Show(" La póliza Hogar no ha sido actualizada " + gestionTipo.Error);
                                }
                            }
                            else if (myPoliza.TipoPoliza == "Pyme")
                            {
                                PolizaTipoPyme polizaTipoPyme = new PolizaTipoPyme();
                                polizaTipoPyme.CodigoPoliza = myPoliza.CodigoPoliza;
                                polizaTipoPyme.ValorAsegurado = txtValorAseguradoEditarPolizaPyme.Text;
                                polizaTipoPyme.TipoNegocio = txtTipoNegocioEditarPolizaPyme.Text;
                                polizaTipoPyme.NombreNegocio = txtNombreNegocioEditarPolizaPyme.Text;
                                polizaTipoPyme.LocalidadNegocio = listLocalidadEditarPolizaPyme.Text;
                                if (gestionTipo.EditarPolizaPyme(polizaTipoPyme))
                                {
                                    MessageBox.Show(" La póliza pyme ha sido actualizada ");
                                    Response.Redirect("Polizas.aspx");
                                }
                                else
                                {
                                    MessageBox.Show(" La póliza pyme no ha sido actualizada " + gestionTipo.Error);
                                }
                            }
                            else if (myPoliza.TipoPoliza == "RCMedica")
                            {
                                PolizaTipoRCMedica polizaTipoRCMedica = new PolizaTipoRCMedica();
                                polizaTipoRCMedica.CodigoPoliza = myPoliza.CodigoPoliza;
                                polizaTipoRCMedica.FechaExpedicion = Convert.ToDateTime(txtFechaExpedicionEditarPolizaRC.Text);
                                polizaTipoRCMedica.FechaNacimiento = Convert.ToDateTime(txtFechaNacimientoEditarPolizaRC.Text);
                                polizaTipoRCMedica.TarjetaProfesional = txtTarjetaEditarPolizaRC.Text;
                                if (gestionTipo.EditarPolizaRC(polizaTipoRCMedica))
                                {
                                    MessageBox.Show(" La póliza RC ha sido actualizada ");
                                    Response.Redirect("Polizas.aspx");
                                }
                                else
                                {
                                    MessageBox.Show(" La póliza RC no ha sido actualizada " + gestionTipo.Error);
                                }
                            }
                            else if (myPoliza.TipoPoliza == "Vehicular")
                            {
                                PolizaTipoVehicular polizaTipoVehicular = new PolizaTipoVehicular();
                                polizaTipoVehicular.CodigoPoliza = myPoliza.CodigoPoliza;
                                polizaTipoVehicular.FechaNacimiento = Convert.ToDateTime(txtFechaNacimientoEditarPolizaVehicular.Text);
                                polizaTipoVehicular.TipoAuto = txtTipoAutoEditarPolizaVehicular.Text;
                                polizaTipoVehicular.Placa = txtPlacasEditarPolizaVehicular.Text;
                                if (gestionTipo.EditarPolizaVehicular(polizaTipoVehicular))
                                {
                                    MessageBox.Show(" La póliza vehicular ha sido actualizada ");
                                    Response.Redirect("Polizas.aspx");
                                }
                                else
                                {
                                    MessageBox.Show(" La póliza vehicular no ha sido actualizada " + gestionTipo.Error);
                                }
                            }
                            else if (myPoliza.TipoPoliza == "Vida")
                            {
                                PolizaTipoVida polizaTipoVida = new PolizaTipoVida();
                                polizaTipoVida.CodigoPoliza = myPoliza.CodigoPoliza;
                                polizaTipoVida.FechaNacimiento = Convert.ToDateTime(txtFechaNacimientoEditarPolizaVida.Text);
                                polizaTipoVida.ValorBeneficiario = txtValorBeneficiarioEditarPolizaVida.Text;
                                if (gestionTipo.EditarPolizaVida(polizaTipoVida))
                                {
                                    MessageBox.Show(" La póliza vida ha sido actualizada ");
                                    Response.Redirect("Polizas.aspx");
                                }
                                else
                                {
                                    MessageBox.Show(" La póliza vida no ha sido actualizada " + gestionTipo.Error);
                                }
                            }
                        }
                        else
                        {
                            MessageBox.Show(" La póliza no pudo actualizarse " + gestion.Error);

                        }
                    }
                    else
                    {
                        MessageBox.Show(" Solo se permiten archivos de formato PDF de tamaño no mayor a 1MB ");
                    }
                }
                else
                {
                    myPoliza.PolizaVirtual = "Sin Poliza";
                    string codigoActual;
                    codigoActual = Request.QueryString["CodigoPoliza"];
                    if (gestion.EditarPoliza(myPoliza, codigoActual))
                    {
                        if (myPoliza.TipoPoliza == "Estudiantil")
                        {
                            PolizaTipoEstudiantil polizaTipoEstudiantil = new PolizaTipoEstudiantil();
                            polizaTipoEstudiantil.CodigoPoliza = myPoliza.CodigoPoliza;
                            polizaTipoEstudiantil.FechaNacimiento = Convert.ToDateTime(txtFechaNacimientoEditarPolizaEstudiantil.Text);
                            polizaTipoEstudiantil.Institucion = txtInstitucionEditarPolizaEstudiantil.Text;
                            polizaTipoEstudiantil.AnuarioCursado = txtCursadoEditarPolizaEstudiantil.Text;
                            polizaTipoEstudiantil.CursoSemestre = txtCursoEditarPolizaEstudiantil.Text;
                            if (gestionTipo.EditarPolizaEstudiantil(polizaTipoEstudiantil))
                            {
                                MessageBox.Show(" La póliza estudiantil ha sido actualizada ");
                                Response.Redirect("Polizas.aspx");
                            }
                            else
                            {
                                MessageBox.Show(" La póliza estudiantil no ha sido actualizada " + gestionTipo.Error);
                            }
                        }
                        else if (myPoliza.TipoPoliza == "Hogar")
                        {
                            PolizaTipoHogar polizaTipoHogar = new PolizaTipoHogar();
                            polizaTipoHogar.CodigoPoliza = myPoliza.CodigoPoliza;
                            polizaTipoHogar.ValorEnseres = txtValorEnseresEditarPolizaHogar.Text;
                            polizaTipoHogar.ValorConstruccion = txtValorConstruccionEditarPoliza.Text;
                            polizaTipoHogar.FechaNacimiento = Convert.ToDateTime(txtFechaNacimientoEditarPolizaHogar.Text);
                            polizaTipoHogar.Localidad = listlocalidadEditarPolizaHogar.Text;
                            if (gestionTipo.EditarPolizaHogar(polizaTipoHogar))
                            {
                                MessageBox.Show(" La póliza hogar ha sido actualizada ");
                                Response.Redirect("Polizas.aspx");
                            }
                            else
                            {
                                MessageBox.Show(" La póliza hogar no ha sido actualizada " + gestionTipo.Error);
                            }
                        }
                        else if (myPoliza.TipoPoliza == "Pyme")
                        {
                            PolizaTipoPyme polizaTipoPyme = new PolizaTipoPyme();
                            polizaTipoPyme.CodigoPoliza = myPoliza.CodigoPoliza;
                            polizaTipoPyme.ValorAsegurado = txtValorAseguradoEditarPolizaPyme.Text;
                            polizaTipoPyme.TipoNegocio = txtTipoNegocioEditarPolizaPyme.Text;
                            polizaTipoPyme.NombreNegocio = txtNombreNegocioEditarPolizaPyme.Text;
                            polizaTipoPyme.LocalidadNegocio = listLocalidadEditarPolizaPyme.Text;
                            if (gestionTipo.EditarPolizaPyme(polizaTipoPyme))
                            {
                                MessageBox.Show(" La póliza pyme ha sido actualizada ");
                                Response.Redirect("Polizas.aspx");
                            }
                            else
                            {
                                MessageBox.Show(" La póliza pyme no ha sido actualizada " + gestionTipo.Error);
                            }
                        }
                        else if (myPoliza.TipoPoliza == "RCMedica")
                        {
                            PolizaTipoRCMedica polizaTipoRCMedica = new PolizaTipoRCMedica();
                            polizaTipoRCMedica.CodigoPoliza = myPoliza.CodigoPoliza;
                            polizaTipoRCMedica.FechaExpedicion = Convert.ToDateTime(txtFechaExpedicionEditarPolizaRC.Text);
                            polizaTipoRCMedica.FechaNacimiento = Convert.ToDateTime(txtFechaNacimientoEditarPolizaRC.Text);
                            polizaTipoRCMedica.TarjetaProfesional = txtTarjetaEditarPolizaRC.Text;
                            if (gestionTipo.EditarPolizaRC(polizaTipoRCMedica))
                            {
                                MessageBox.Show(" La póliza RC ha sido actualizada ");
                                Response.Redirect("Polizas.aspx");
                            }
                            else
                            {
                                MessageBox.Show(" La póliza RC no ha sido actualizada " + gestionTipo.Error);
                            }
                        }
                        else if (myPoliza.TipoPoliza == "Vehicular")
                        {
                            PolizaTipoVehicular polizaTipoVehicular = new PolizaTipoVehicular();
                            polizaTipoVehicular.CodigoPoliza = myPoliza.CodigoPoliza;
                            polizaTipoVehicular.FechaNacimiento = Convert.ToDateTime(txtFechaNacimientoEditarPolizaVehicular.Text);
                            polizaTipoVehicular.TipoAuto = txtTipoAutoEditarPolizaVehicular.Text;
                            polizaTipoVehicular.Placa = txtPlacasEditarPolizaVehicular.Text;
                            if (gestionTipo.EditarPolizaVehicular(polizaTipoVehicular))
                            {
                                MessageBox.Show(" La póliza vehicular ha sido actualizada ");
                                Response.Redirect("Polizas.aspx");
                            }
                            else
                            {
                                MessageBox.Show(" La póliza vehicular no ha sido actualizada " + gestionTipo.Error);
                            }
                        }
                        else if (myPoliza.TipoPoliza == "Vida")
                        {
                            PolizaTipoVida polizaTipoVida = new PolizaTipoVida();
                            polizaTipoVida.CodigoPoliza = myPoliza.CodigoPoliza;
                            polizaTipoVida.FechaNacimiento = Convert.ToDateTime(txtFechaNacimientoEditarPolizaVida.Text);
                            polizaTipoVida.ValorBeneficiario = txtValorBeneficiarioEditarPolizaVida.Text;
                            if (gestionTipo.EditarPolizaVida(polizaTipoVida))
                            {
                                MessageBox.Show(" La póliza vida ha sido actualizada ");
                                Response.Redirect("Polizas.aspx");
                            }
                            else
                            {
                                MessageBox.Show(" La póliza Vida no ha sido actualizada " + gestionTipo.Error);
                            }
                        }
                    }
                    else
                    {
                        MessageBox.Show(" La póliza no pudo actualizarse " + gestion.Error);

                    }
                }
            }
            else if (txtCodigoPoliza.Text == Request.QueryString["CodigoPoliza"].ToString())
            {
                if (FileUpload1.HasFile)
                {
                    string extension = System.IO.Path.GetExtension(FileUpload1.FileName);
                    extension = extension.ToLower();
                    int tam = FileUpload1.PostedFile.ContentLength;
                    if (extension == ".pdf" && tam <= 1000000)
                    {
                        FileUpload1.SaveAs(Server.MapPath("~/Aplicacion/PolizasVirtuales/" + FileUpload1.FileName));
                        lbMensaje.Text = "Se subio el Archivo";
                        string polizavirtual;
                        polizavirtual = FileUpload1.FileName;
                        myPoliza.PolizaVirtual = polizavirtual;
                        string codigoActual;
                        codigoActual = Request.QueryString["Cod"];
                        if (gestion.EditarPoliza(myPoliza, codigoActual))
                        {
                            if (myPoliza.TipoPoliza == "Estudiantil")
                            {
                                PolizaTipoEstudiantil polizaTipoEstudiantil = new PolizaTipoEstudiantil();
                                polizaTipoEstudiantil.CodigoPoliza = myPoliza.CodigoPoliza;
                                polizaTipoEstudiantil.FechaNacimiento = Convert.ToDateTime(txtFechaNacimientoEditarPolizaEstudiantil.Text);
                                polizaTipoEstudiantil.Institucion = txtInstitucionEditarPolizaEstudiantil.Text;
                                polizaTipoEstudiantil.AnuarioCursado = txtCursadoEditarPolizaEstudiantil.Text;
                                polizaTipoEstudiantil.CursoSemestre = txtCursoEditarPolizaEstudiantil.Text;
                                if (gestionTipo.EditarPolizaEstudiantil(polizaTipoEstudiantil))
                                {
                                    MessageBox.Show(" La póliza estudiantil ha sido actualizada ");
                                    Response.Redirect("Polizas.aspx");
                                }
                                else
                                {
                                    MessageBox.Show(" La póliza estudiantil no ha sido actualizada " + gestionTipo.Error);
                                }
                            }
                            else if (myPoliza.TipoPoliza == "Hogar")
                            {
                                PolizaTipoHogar polizaTipoHogar = new PolizaTipoHogar();
                                polizaTipoHogar.CodigoPoliza = myPoliza.CodigoPoliza;
                                polizaTipoHogar.ValorEnseres = txtValorEnseresEditarPolizaHogar.Text;
                                polizaTipoHogar.ValorConstruccion = txtValorConstruccionEditarPoliza.Text;
                                polizaTipoHogar.FechaNacimiento = Convert.ToDateTime(txtFechaNacimientoEditarPolizaHogar.Text);
                                polizaTipoHogar.Localidad = listlocalidadEditarPolizaHogar.Text;
                                if (gestionTipo.EditarPolizaHogar(polizaTipoHogar))
                                {
                                    MessageBox.Show(" La póliza hogar ha sido actualizada ");
                                    Response.Redirect("Polizas.aspx");
                                }
                                else
                                {
                                    MessageBox.Show(" La póliza hogar no ha sido actualizada " + gestionTipo.Error);
                                }
                            }
                            else if (myPoliza.TipoPoliza == "Pyme")
                            {
                                PolizaTipoPyme polizaTipoPyme = new PolizaTipoPyme();
                                polizaTipoPyme.CodigoPoliza = myPoliza.CodigoPoliza;
                                polizaTipoPyme.ValorAsegurado = txtValorAseguradoEditarPolizaPyme.Text;
                                polizaTipoPyme.TipoNegocio = txtTipoNegocioEditarPolizaPyme.Text;
                                polizaTipoPyme.NombreNegocio = txtNombreNegocioEditarPolizaPyme.Text;
                                polizaTipoPyme.LocalidadNegocio = listLocalidadEditarPolizaPyme.Text;
                                if (gestionTipo.EditarPolizaPyme(polizaTipoPyme))
                                {
                                    MessageBox.Show(" La póliza pyme ha sido actualizada ");
                                    Response.Redirect("Polizas.aspx");
                                }
                                else
                                {
                                    MessageBox.Show(" La póliza pyme no ha sido actualizada " + gestionTipo.Error);
                                }
                            }
                            else if (myPoliza.TipoPoliza == "RCMedica")
                            {
                                PolizaTipoRCMedica polizaTipoRCMedica = new PolizaTipoRCMedica();
                                polizaTipoRCMedica.CodigoPoliza = myPoliza.CodigoPoliza;
                                polizaTipoRCMedica.FechaExpedicion = Convert.ToDateTime(txtFechaExpedicionEditarPolizaRC.Text);
                                polizaTipoRCMedica.FechaNacimiento = Convert.ToDateTime(txtFechaNacimientoEditarPolizaRC.Text);
                                polizaTipoRCMedica.TarjetaProfesional = txtTarjetaEditarPolizaRC.Text;
                                if (gestionTipo.EditarPolizaRC(polizaTipoRCMedica))
                                {
                                    MessageBox.Show(" La póliza RC ha sido actualizada ");
                                    Response.Redirect("Polizas.aspx");
                                }
                                else
                                {
                                    MessageBox.Show(" La póliza RC no ha sido actualizada " + gestionTipo.Error);
                                }
                            }
                            else if (myPoliza.TipoPoliza == "Vehicular")
                            {
                                PolizaTipoVehicular polizaTipoVehicular = new PolizaTipoVehicular();
                                polizaTipoVehicular.CodigoPoliza = myPoliza.CodigoPoliza;
                                polizaTipoVehicular.FechaNacimiento = Convert.ToDateTime(txtFechaNacimientoEditarPolizaVehicular.Text);
                                polizaTipoVehicular.TipoAuto = txtTipoAutoEditarPolizaVehicular.Text;
                                polizaTipoVehicular.Placa = txtPlacasEditarPolizaVehicular.Text;
                                if (gestionTipo.EditarPolizaVehicular(polizaTipoVehicular))
                                {
                                    MessageBox.Show(" La póliza vehicular ha sido actualizada ");
                                    Response.Redirect("Polizas.aspx");
                                }
                                else
                                {
                                    MessageBox.Show(" La póliza vehicular no ha sido actualizada " + gestionTipo.Error);
                                }
                            }
                            else if (myPoliza.TipoPoliza == "Vida")
                            {
                                PolizaTipoVida polizaTipoVida = new PolizaTipoVida();
                                polizaTipoVida.CodigoPoliza = myPoliza.CodigoPoliza;
                                polizaTipoVida.FechaNacimiento = Convert.ToDateTime(txtFechaNacimientoEditarPolizaVida.Text);
                                polizaTipoVida.ValorBeneficiario = txtValorBeneficiarioEditarPolizaVida.Text;
                                if (gestionTipo.EditarPolizaVida(polizaTipoVida))
                                {
                                    MessageBox.Show(" La póliza vida ha sido actualizada ");
                                    Response.Redirect("Polizas.aspx");
                                }
                                else
                                {
                                    MessageBox.Show(" La póliza vida no ha sido actualizada " + gestionTipo.Error);
                                }
                            }
                        }
                        else
                        {
                            MessageBox.Show(" La póliza no pudo actualizarse " + gestion.Error);

                        }
                    }
                    else
                    {
                        MessageBox.Show(" Solo se permiten archivos de formato PDF de tamaño no mayor a 1MB ");
                    }
                }
                else
                {
                    myPoliza.PolizaVirtual = "Sin Poliza";
                    string codigoActual;
                    codigoActual = Request.QueryString["CodigoPoliza"];
                    if (gestion.EditarPoliza(myPoliza, codigoActual))
                    {
                        if (myPoliza.TipoPoliza == "Estudiantil")
                        {
                            PolizaTipoEstudiantil polizaTipoEstudiantil = new PolizaTipoEstudiantil();
                            polizaTipoEstudiantil.CodigoPoliza = myPoliza.CodigoPoliza;
                            polizaTipoEstudiantil.FechaNacimiento = Convert.ToDateTime(txtFechaNacimientoEditarPolizaEstudiantil.Text);
                            polizaTipoEstudiantil.Institucion = txtInstitucionEditarPolizaEstudiantil.Text;
                            polizaTipoEstudiantil.AnuarioCursado = txtCursadoEditarPolizaEstudiantil.Text;
                            polizaTipoEstudiantil.CursoSemestre = txtCursoEditarPolizaEstudiantil.Text;
                            if (gestionTipo.EditarPolizaEstudiantil(polizaTipoEstudiantil))
                            {
                                MessageBox.Show(" La póliza estudiantil ha sido actualizada ");
                                Response.Redirect("Polizas.aspx");
                            }
                            else
                            {
                                MessageBox.Show(" La póliza estudiantil no ha sido actualizada " + gestionTipo.Error);
                            }
                        }
                        else if (myPoliza.TipoPoliza == "Hogar")
                        {
                            PolizaTipoHogar polizaTipoHogar = new PolizaTipoHogar();
                            polizaTipoHogar.CodigoPoliza = myPoliza.CodigoPoliza;
                            polizaTipoHogar.ValorEnseres = txtValorEnseresEditarPolizaHogar.Text;
                            polizaTipoHogar.ValorConstruccion = txtValorConstruccionEditarPoliza.Text;
                            polizaTipoHogar.FechaNacimiento = Convert.ToDateTime(txtFechaNacimientoEditarPolizaHogar.Text);
                            polizaTipoHogar.Localidad = listlocalidadEditarPolizaHogar.Text;
                            if (gestionTipo.EditarPolizaHogar(polizaTipoHogar))
                            {
                                MessageBox.Show(" La póliza hogar ha sido actualizada ");
                                Response.Redirect("Polizas.aspx");
                            }
                            else
                            {
                                MessageBox.Show(" La póliza hogar no ha sido actualizada " + gestionTipo.Error);
                            }
                        }
                        else if (myPoliza.TipoPoliza == "Pyme")
                        {
                            PolizaTipoPyme polizaTipoPyme = new PolizaTipoPyme();
                            polizaTipoPyme.CodigoPoliza = myPoliza.CodigoPoliza;
                            polizaTipoPyme.ValorAsegurado = txtValorAseguradoEditarPolizaPyme.Text;
                            polizaTipoPyme.TipoNegocio = txtTipoNegocioEditarPolizaPyme.Text;
                            polizaTipoPyme.NombreNegocio = txtNombreNegocioEditarPolizaPyme.Text;
                            polizaTipoPyme.LocalidadNegocio = listLocalidadEditarPolizaPyme.Text;
                            if (gestionTipo.EditarPolizaPyme(polizaTipoPyme))
                            {
                                MessageBox.Show(" La póliza pyme ha sido actualizada ");
                                Response.Redirect("Polizas.aspx");
                            }
                            else
                            {
                                MessageBox.Show(" La póliza pyme no ha sido actualizada " + gestionTipo.Error);
                            }
                        }
                        else if (myPoliza.TipoPoliza == "RCMedica")
                        {
                            PolizaTipoRCMedica polizaTipoRCMedica = new PolizaTipoRCMedica();
                            polizaTipoRCMedica.CodigoPoliza = myPoliza.CodigoPoliza;
                            polizaTipoRCMedica.FechaExpedicion = Convert.ToDateTime(txtFechaExpedicionEditarPolizaRC.Text);
                            polizaTipoRCMedica.FechaNacimiento = Convert.ToDateTime(txtFechaNacimientoEditarPolizaRC.Text);
                            polizaTipoRCMedica.TarjetaProfesional = txtTarjetaEditarPolizaRC.Text;
                            if (gestionTipo.EditarPolizaRC(polizaTipoRCMedica))
                            {
                                MessageBox.Show(" La póliza RC ha sido actualizada ");
                                Response.Redirect("Polizas.aspx");
                            }
                            else
                            {
                                MessageBox.Show(" La póliza RC no ha sido actualizada " + gestionTipo.Error);
                            }
                        }
                        else if (myPoliza.TipoPoliza == "Vehicular")
                        {
                            PolizaTipoVehicular polizaTipoVehicular = new PolizaTipoVehicular();
                            polizaTipoVehicular.CodigoPoliza = myPoliza.CodigoPoliza;
                            polizaTipoVehicular.FechaNacimiento = Convert.ToDateTime(txtFechaNacimientoEditarPolizaVehicular.Text);
                            polizaTipoVehicular.TipoAuto = txtTipoAutoEditarPolizaVehicular.Text;
                            polizaTipoVehicular.Placa = txtPlacasEditarPolizaVehicular.Text;
                            if (gestionTipo.EditarPolizaVehicular(polizaTipoVehicular))
                            {
                                MessageBox.Show(" La póliza vehicular ha sido actualizada ");
                                Response.Redirect("Polizas.aspx");
                            }
                            else
                            {
                                MessageBox.Show(" La póliza vehicular no ha sido actualizada " + gestionTipo.Error);
                            }
                        }
                        else if (myPoliza.TipoPoliza == "Vida")
                        {
                            PolizaTipoVida polizaTipoVida = new PolizaTipoVida();
                            polizaTipoVida.CodigoPoliza = myPoliza.CodigoPoliza;
                            polizaTipoVida.FechaNacimiento = Convert.ToDateTime(txtFechaNacimientoEditarPolizaVida.Text);
                            polizaTipoVida.ValorBeneficiario = txtValorBeneficiarioEditarPolizaVida.Text;
                            if (gestionTipo.EditarPolizaVida(polizaTipoVida))
                            {
                                MessageBox.Show(" La póliza vida ha sido actualizada ");
                                Response.Redirect("Polizas.aspx");
                            }
                            else
                            {
                                MessageBox.Show(" La póliza vida no ha sido actualizada " + gestionTipo.Error);
                            }
                        }
                    }
                    else
                    {
                        MessageBox.Show(" La póliza no pudo actualizarse " + gestion.Error);

                    }
                }
            }
            else
            {
                MessageBox.Show(" El código de póliza ya existe " + gestion.Error);
            }
        }

        protected void btnEliminarPoliza_Click(object sender, EventArgs e)
        {
            string filePath = lbNombreArchivo.Text;
            File.Delete(Server.MapPath("~/Aplicacion/PolizasVirtuales/" + filePath));
            string codigoActual;
            codigoActual = Request.QueryString["CodigoPoliza"];
            if (gestion.EditarPolizaVirtual(codigoActual))
            {
                /*--MENSAJE DE ALERTA--*/
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'PDF de Póliza eliminado!', text: 'El PDF de la póliza fue eliminado correctamente del sistema', icon: 'success', type: 'success'}).then(function() {window.location = 'Polizas.aspx';});", true);
            }
            else
            {
                /*--MENSAJE DE ALERTA--*/
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo eliminar el archivo de la póliza, inténtalo más tarde', icon: 'error', timer: 2500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
            }
        }

        protected void btnDeletePoliza_Click(object sender, EventArgs e)
        {
            string id = txtCodigoPoliza.Text;
            if (gestion.eliminarPoliza(id))
            {
                /*--MENSAJE DE ALERTA--*/
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Póliza eliminada!', text: 'La Póliza fue eliminada correctamente del sistema', icon: 'success', type: 'success'}).then(function() {window.location = 'Polizas.aspx';});", true);
            }
            else
            {
                /*--MENSAJE DE ALERTA--*/
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "swal({title: 'Error!',text: 'No se pudo eliminar la póliza, inténtalo más tarde', icon: 'error', timer: 2500,button: false}).then(function() { },function(dismiss) {if (dismiss === 'timer'){console.log('I was closed by the timer')}})", true);
            }
        }

        protected void btnDescargar_Click(object sender, EventArgs e)
        {
            string filePath = lbNombreArchivo.Text;
            Response.AddHeader("Content-Disposition", "attachment;filename=\"" + filePath + "\"");
            Response.TransmitFile(Server.MapPath("~/Aplicacion/PolizasVirtuales/" + filePath));
            Response.End();
        }
    }
}