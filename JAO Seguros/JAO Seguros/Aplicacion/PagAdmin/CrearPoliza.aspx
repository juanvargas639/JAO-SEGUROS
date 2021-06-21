<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearPoliza.aspx.cs" Inherits="JAO_Seguros.Aplicacion.PagAdmin.CrearPoliza" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="es-419">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin JAO Seguros</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/feather/feather.css">
    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/jquery-file-upload/uploadfile.css">
    <script src="../../library/dashboardAdmin/vendors/jquery-tags-input/jquery.tagsinput.min.css"></script>
    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/dropzone/dropzone.css">
    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/jquery-bar-rating/bars-1to10.css">
    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/jquery-bar-rating/bars-horizontal.css">
    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/jquery-bar-rating/bars-movie.css">
    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/jquery-bar-rating/bars-pill.css">
    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/jquery-bar-rating/bars-reversed.css">
    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/jquery-bar-rating/bars-square.css">
    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/jquery-bar-rating/bootstrap-stars.css">
    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/jquery-bar-rating/css-stars.css">
    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/jquery-bar-rating/examples.css">
    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/jquery-bar-rating/fontawesome-stars-o.css">
    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/jquery-bar-rating/fontawesome-stars.css">
    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/jquery-asColorPicker/css/asColorPicker.min.css">
    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/x-editable/bootstrap-editable.css">
    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/bootstrap-datepicker/bootstrap-datepicker.min.css">
    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/dropify/dropify.min.css">
    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/jquery-file-upload/uploadfile.css">
    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/jquery-tags-input/jquery.tagsinput.min.css">
    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/tempusdominus-bootstrap-4/tempusdominus-bootstrap-4.min.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="../../library/dashboardAdmin/css/vertical-layout-light/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="../../library/dashboardAdmin/images/favicon.ico" />
</head>
<body>
    <div class="loader-page"></div>
    <form id="FormCrearPoliza" runat="server" enctype="multipart/form-data">
        <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
        <div class="container-scroller">
            <!-- partial:../../partials/_navbar.html -->
            <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
                <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
                    <a class="navbar-brand brand-logo mr-5" href="DefaultAdmin.aspx">
                        <img src="../../library/dashboardAdmin/images/logo.png" class="mr-2" alt="logo" /></a>
                    <a class="navbar-brand brand-logo-mini" href="DefaultAdmin.aspx">
                        <img src="../../library/dashboardAdmin/images/logo-mini.png" alt="logo" /></a>
                </div>
                <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
                    <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                        <span class="icon-menu"></span>
                    </button>
                    <ul class="navbar-nav navbar-nav-right">
                        <li class="nav-item nav-profile dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
                                <img src="../../library/dashboardAdmin/images/perfil.png" alt="profile" />
                            </a>
                            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
                                <a class="dropdown-item" href="Perfil.aspx">
                                    <i class="ti-settings text-primary"></i>
                                    Perfil
                                </a>
                                <button id="btnCerrarSesion" class="dropdown-item" runat="server" onserverclick="btnCerrarSesion_ServerClick">
                                    <i class="ti-power-off text-primary"></i>
                                    Cerrar Sesión
             
                                </button>
                            </div>
                        </li>
                    </ul>
                    <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                        <span class="icon-menu"></span>
                    </button>
                </div>
            </nav>
            <!-- partial -->
            <div class="container-fluid page-body-wrapper">
                <!-- partial -->
                <!-- partial:../../partials/_sidebar.html -->
                <nav class="sidebar sidebar-offcanvas" id="sidebar">
                    <ul class="nav">
                        <li class="nav-item">
                            <a class="nav-link" href="DefaultAdmin.aspx">
                                <i class="icon-grid menu-icon"></i>
                                <span class="menu-title">Inicio</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#ui-basic1" aria-expanded="false" aria-controls="ui-basic">
                                <i class="icon-head menu-icon"></i>
                                <span class="menu-title">Usuarios</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="ui-basic1">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"><a class="nav-link" href="Administradores.aspx">Administradores</a></li>
                                    <li class="nav-item"><a class="nav-link" href="Asesores.aspx">Asesores</a></li>
                                    <li class="nav-item"><a class="nav-link" href="BaseClientes.aspx">Clientes</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Polizas.aspx">
                                <i class="icon-lock menu-icon"></i>
                                <span class="menu-title">Seguros</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Proveedores.aspx">
                                <i class="icon-star menu-icon"></i>
                                <span class="menu-title">Proveedores</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Cotizaciones.aspx">
                                <i class="icon-paper menu-icon"></i>
                                <span class="menu-title">Cotizaciones</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Reportes.aspx">
                                <i class="icon-stack menu-icon"></i>
                                <span class="menu-title">Reportes</span>
                            </a>
                        </li>
                    </ul>
                </nav>
                <!-- partial -->
                <div class="main-panel">
                    <div class="content-wrapper">
                        <!--TARJETA-->
                        <div class="row">
                            <div class="col-12 grid-margin">
                                <!--INICIO MIGA DE PAN-->
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="DefaultAdmin.aspx">Inicio</a></li>
                                    <li class="breadcrumb-item"><a href="Polizas.aspx">Pólizas</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Crear Póliza</li>
                                </ol>
                                <!--FIN MIGA DE PAN-->
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Crear póliza de seguros</h4>
                                        <br>
                                        <p class="card-description">
                                            Identificación del Seguro
                                        </p>
                                        <div class="form-group row">
                                            <div class="col">
                                                <label class="campoobligatorio">*</label><label id="lbCodigoCreaPoliza" for="txtCodigoPoliza">
                                                    Código de Póliza</label>
                                                <asp:TextBox ID="txtCodigoPoliza" name="txtCrearCodigoPoliza" runat="server" title="El Código debe tener letras mayúsculas y números" TextMode="SingleLine" class="form-control mb-2 mr-sm-2" minlength="10" MaxLength="10" pattern="[A-Z0-9]+" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ingresa el código de la póliza" ControlToValidate="txtCodigoPoliza" ForeColor="Red" ValidationGroup="CrearPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="col">
                                                <label class="campoobligatorio">*</label><label id="lbCreaTipoPagoClientePoliza" for="listCreaTipoPagoClientePoliza">
                                                    Tipo de Pago del Seguro</label>
                                                <asp:DropDownList ID="listTipoPago" title="Tipo de Pago" runat="server" CssClass="form-control mb-2 mr-sm-2">
                                                    <asp:ListItem>Contado</asp:ListItem>
                                                    <asp:ListItem>Financiado</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <div class="col">
                                                <label for="txtTipo" id="lbTipo">Tipo de Póliza</label>
                                                <asp:DropDownList ID="listTipoPoliza" title="Lista Tipo" runat="server" OnSelectedIndexChanged="listTipoPoliza_SelectedIndexChanged" CssClass="form-control mb-2 mr-sm-2" AutoPostBack="True">
                                                    <asp:ListItem>Vehicular</asp:ListItem>
                                                    <asp:ListItem>Estudiantil</asp:ListItem>
                                                    <asp:ListItem>Hogar</asp:ListItem>
                                                    <asp:ListItem>Pyme</asp:ListItem>
                                                    <asp:ListItem>RCMedica</asp:ListItem>
                                                    <asp:ListItem>Vida</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <asp:UpdatePanel ID="PANELNITCLIENTE" runat="server" UpdateMode="Conditional">
                                            <ContentTemplate>
                                                <div class="form-group row">
                                                    <div class="col">
                                                        <label class="campoobligatorio">*</label><label id="lbCreaNitPoliza" for="txtNitCreaPoliza">
                                                            Nit. de la Aseguradora Proveedora de la Póliza</label>
                                                        <div class="input-group">
                                                            <div class="input-group-prepend">
                                                                <asp:DropDownList runat="server" class="btn btn-sm btn-outline-primary" ID="listaProveedores" OnSelectedIndexChanged="listaProveedores_SelectedIndexChanged" AutoPostBack="true">
                                                                    <asp:ListItem Value="">--Seleccione--</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </div>
                                                            <asp:TextBox ID="txtNitCreaPoliza" name="txtNitCreaPoliza" runat="server" title="NIT. Proveedor" placeholder="Nit. Proveedor de la Póliza" TextMode="SingleLine" class="form-control" aria-label="Text input with dropdown button" />
                                                            <small id="nithelp" class="form-text text-muted">Seleccione o Digite el Número de Nit. del Proveedor registrado en el Sistema</small>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Ingresa el nit. de la aseguradora" ControlToValidate="txtNitCreaPoliza" ForeColor="Red" ValidationGroup="CrearPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                        </div>
                                                    </div>
                                                    <div class="col">
                                                        <label class="campoobligatorio">*</label><label id="lbCreaNumDocumentoClientePoliza" for="txtDocumentoCreaPoliza">
                                                            Documento del Cliente Referido</label>
                                                        <div class="input-group">
                                                            <div class="input-group-prepend">
                                                                <asp:DropDownList runat="server" class="btn btn-sm btn-outline-primary" ID="listaClientes" OnSelectedIndexChanged="listaClientes_SelectedIndexChanged" AutoPostBack="true">
                                                                    <asp:ListItem Value="">--Seleccione--</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </div>
                                                            <asp:TextBox ID="txtDocumentoCreaPoliza" name="txtDocumentoCreaPoliza" runat="server" title="Documento Cliente" placeholder="Selecciona el número de documento" TextMode="SingleLine" class="form-control" aria-label="Text input with dropdown button" />
                                                        </div>
                                                        <small id="documentoHelp" class="form-text text-muted">Seleccione o Digite el Número de Documento del Cliente registrado en el Sistema</small>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Ingresa el documento del cliente" ControlToValidate="txtDocumentoCreaPoliza" ForeColor="Red" ValidationGroup="CrearPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                        <!----------------------------------------------------------------------------------------->
                                        <!--------------------------PERSONAS DEL SEGURO-------------------------------------------->
                                        <!----------------------------------------------------------------------------------------->
                                        <p class="card-description">
                                            Personas del Seguro
                                        </p>
                                        <div class="form-group row">
                                            <div class="col">
                                                <label for="txtNomTomCreaPoliza" id="lbNomTomCreaPoliza">Nombre Completo del Tomador</label>
                                                <asp:TextBox ID="txtNomTomCreaPoliza" name="txtNomTomCreaPoliza" runat="server" title="Nombre Tomador" placeholder="Ingresa el nombre del tomador de la póliza" TextMode="SingleLine" class="form-control" />
                                                <small id="tomHelp" class="form-text text-muted">Ingrese si existe un Tomador</small>
                                            </div>
                                            <div class="col">
                                                <label for="txtDocTomCreaPoliza" id="lbDocTomCreaPoliza">Número del Documento del Tomador</label>
                                                <asp:TextBox ID="txtDocTomCreaPoliza" name="txtDocTomCreaPoliza" runat="server" title="Documento Tomador" placeholder="Ingresa el documento del tomador de la póliza" TextMode="SingleLine" class="form-control" />
                                                <small id="tomdocHelp" class="form-text text-muted">Ingrese si existe un Tomador</small>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col">
                                                <label for="txtNomBenCreaPoliza" id="lbNomBenCreaPoliza">Nombre Completo del Beneficiario</label>
                                                <asp:TextBox ID="txtNomBenCreaPoliza" name="txtNomBenCreaPoliza" runat="server" title="Nombre Beneficiario" placeholder="Ingresa el nombre del beneficiario de la póliza" TextMode="SingleLine" class="form-control" />
                                                <small id="benHelp" class="form-text text-muted">Ingrese si existe un Beneficiario</small>
                                            </div>
                                            <div class="col">
                                                <label for="txtDocBenCreaPoliza" id="lbDocBenCreaPoliza">Número del Documento del Beneficiario</label>
                                                <asp:TextBox ID="txtDocBenCreaPoliza" name="txtDocBenCreaPoliza" runat="server" title="Documento Beneficiario" placeholder="Ingresa el documento del beneficiario de la póliza" TextMode="SingleLine" class="form-control" />
                                                <small id="bendocHelp" class="form-text text-muted">Ingrese si existe un Beneficiario</small>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col">
                                                <label for="txtNomAsegCreaPoliza" id="lbNomAsegCreaPoliza">Nombre Completo del Asegurado</label>
                                                <asp:TextBox ID="txtNomAsegCreaPoliza" name="txtNomAsegCreaPoliza" runat="server" title="Nombre Asegurado" placeholder="Ingresa el nombre del asegurado de la póliza" TextMode="SingleLine" class="form-control" />
                                                <small id="asegHelp" class="form-text text-muted">Ingrese si existe un Asegurado</small>
                                            </div>
                                            <div class="col">
                                                <label for="txtDocAsegCreaPoliza" id="lbDocAsegCreaPoliza">Número del Documento del Asegurado</label>
                                                <asp:TextBox ID="txtDocAsegCreaPoliza" name="txtDocAsegCreaPoliza" runat="server" title="Documento Asegurado" placeholder="Ingresa el documento del asegurado de la póliza" TextMode="SingleLine" class="form-control" />
                                                <small id="asegdocHelp" class="form-text text-muted">Ingrese si existe un Asegurado</small>
                                            </div>
                                        </div>
                                        <!----------------------------------------------------------------------------------------->
                                        <!------------------------SECCION COBERTURA------------------------------------------------>
                                        <!----------------------------------------------------------------------------------------->
                                        <p class="card-description">
                                            Cobertura
                                        </p>
                                        <div class="form-group row">
                                            <div class="col">
                                                <label class="campoobligatorio">*</label><label id="lbFechasCreaPoliza">
                                                    Vigencia de la Cobertura del Seguro</label>
                                                <div class="input-group input-daterange d-flex align-items-center">
                                                    <asp:TextBox ID="txtFechaICreaPoliza" name="txtFechaICreaPoliza" runat="server" title="Selecciona una fecha válida" placeholder="Ingresa la fecha inicio de cobertura" TextMode="SingleLine" class="form-control" />
                                                    <div class="input-group-addon mx-4">hasta</div>
                                                    <asp:TextBox ID="txtFechaFCreaPoliza" name="txtFechaFCreaPoliza" runat="server" title="Selecciona una fecha válida" placeholder="Ingresa la fecha fin de cobertura" TextMode="SingleLine" class="form-control" />
                                                </div>
                                                <small id="fecha1Help" class="form-text text-muted">Selecciona las fechas que comprenden la cobertura de la póliza</small>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Ingresa la fecha de inicio de la cobertura" ControlToValidate="txtFechaICreaPoliza" ForeColor="Red" ValidationGroup="CrearPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Ingresa la fecha de fin de la cobertura" ControlToValidate="txtFechaFCreaPoliza" ForeColor="Red" ValidationGroup="CrearPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col">
                                                <label class="campoobligatorio">*</label><label for="txtFechaECreaPoliza" id="lbFechaECreaPoliza">
                                                    Fecha de Expedición de la Póliza</label>
                                                <div id="datepicker-popup4" class="input-group date datepicker">
                                                    <asp:TextBox ID="txtFechaECreaPoliza" name="txtFechaECreaPoliza" runat="server" title="Selecciona una fecha válida" placeholder="Ingresa la fecha de expedición de la póliza" TextMode="SingleLine" class="form-control" />
                                                    <span class="input-group-addon input-group-append border-left">
                                                        <span class="ti-calendar input-group-text"></span>
                                                    </span>
                                                </div>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Ingresa la fecha de expedición de la póliza" ControlToValidate="txtFechaECreaPoliza" ForeColor="Red" ValidationGroup="CrearPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <!----------------------------------------------------------------------------------------->
                                        <!----------------------------------------------------------------------------------------->
                                        <!----------------------------------------------------------------------------------------->
                                        <asp:Panel ID="panelVehicular" runat="server">
                                            <p class="card-description">
                                                Descripción Póliza Vehícular
                                            </p>
                                            <div class="form-group row">
                                                <div class="col">
                                                    <label class="campoobligatorio">*</label><label for="txtFechaNacimientoCreaPolizaVehicular" id="lbFechaNacimientoCreaPolizaVehicular">
                                                        Fecha de Nacimiento</label>
                                                    <div id="datepicker-popup5" class="input-group date datepicker">
                                                        <asp:TextBox ID="txtFechaNacimientoCreaPolizaVehicular" name="txtFechaNacimientoCreaPolizaVehicular" runat="server" title="Selecciona una fecha válida" placeholder="Ingresa la fecha de nacimiento del propietario" TextMode="SingleLine" class="form-control" />
                                                        <span class="input-group-addon input-group-append border-left">
                                                            <span class="ti-calendar input-group-text"></span>
                                                        </span>
                                                    </div>
                                                    <small id="fecha2Help" class="form-text text-muted">Selecciona la fecha de nacimiento del actual propietario del vehículo</small>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ErrorMessage="Ingresa la fecha de nacimiento del propietario del vehículo" ControlToValidate="txtFechaNacimientoCreaPolizaVehicular" ForeColor="Red" ValidationGroup="CrearPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col">
                                                    <label class="campoobligatorio">*</label><label for="txtTipoAutoCreaPolizaVehicular" id="lbTipoAutoCreaPolizaVehicular">
                                                        Tipo de Auto</label>
                                                    <asp:TextBox ID="txtTipoAutoCreaPolizaVehicular" name="txtTipoAutoCreaPolizaVehicular" runat="server" title="Tipo de Auto" placeholder="Ingresa el tipo de auto" TextMode="SingleLine" class="form-control" />
                                                    <small id="tipoautoHelp" class="form-text text-muted">Realiza una pequeña descripción de la marca, modelo y año del vehículo</small>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ErrorMessage="Ingresa el tipo de auto y el modelo del vehículo" ControlToValidate="txtTipoAutoCreaPolizaVehicular" ForeColor="Red" ValidationGroup="CrearPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                </div>
                                                <div class="col">
                                                    <label class="campoobligatorio">*</label><label for="txtPlacasCreaPolizaVehicular" id="lbPlacasCreaPolizaVehicular">
                                                        Placas</label>
                                                    <asp:TextBox ID="txtPlacasCreaPolizaVehicular" name="txtPlacasCreaPolizaVehicular" runat="server" title="Placa del vehículo" placeholder="Ingresa las placas del auto de la póliza" TextMode="SingleLine" class="form-control" MaxLength="6" pattern="([A-Z]{3}[0-9]{3})" />
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ErrorMessage="Ingresa las placas del vehículo" ControlToValidate="txtPlacasCreaPolizaVehicular" ForeColor="Red" ValidationGroup="CrearPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                        </asp:Panel>
                                        <!----------------------------------------------------------------------------------------->
                                        <!----------------------------------------------------------------------------------------->
                                        <!----------------------------------------------------------------------------------------->

                                        <asp:Panel ID="panelEstudiantil" runat="server" Visible="False">
                                            <p class="card-description">
                                                Descripción Póliza Estudiantil
                                            </p>
                                            <div class="form-group row">
                                                <div class="col">
                                                    <label class="campoobligatorio">*</label><label for="txtInstitucionCreaPolizaEstudiantil" id="lbCreaCreaPolizaEstudiantil">
                                                        Institución</label>
                                                    <asp:TextBox ID="txtInstitucionCreaPolizaEstudiantil" Text="Prueba" name="txtInstitucionCreaPolizaEstudiantil" runat="server" title="Institución Educativa" placeholder="Ingresa la Institución" TextMode="SingleLine" class="form-control" />
                                                    <small id="institucionHelp" class="form-text text-muted">Ingresa el nombre de la Institución Educativa del Estudiante</small>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Ingresa la institución actual del estudiante" ControlToValidate="txtInstitucionCreaPolizaEstudiantil" ForeColor="Red" ValidationGroup="CrearPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                </div>
                                                <div class="col">
                                                    <label class="campoobligatorio">*</label><label for="txtCursoCreaPolizaEstudiantil" id="lbCursoCreaPolizaEstudiantil">
                                                        Curso o Semestre actual</label>
                                                    <asp:TextBox ID="txtCursoCreaPolizaEstudiantil" Text="Prueba" name="txtCursoCreaPolizaEstudiantil" runat="server" title="Curso o Semestre" TextMode="SingleLine" class="form-control" placeholder="ej. Segundo Trimestre, Segundo grado de Bachillerato" />
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Ingresa el curso o el semestre que este cursando el estudiante" ControlToValidate="txtCursoCreaPolizaEstudiantil" ForeColor="Red" ValidationGroup="CrearPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col">
                                                    <label class="campoobligatorio">*</label><label for="txtFechaNacimientoCreaPolizaEstudiantil" id="lbFechaNacimientoCreaPolizaEstudiantil">
                                                        Fecha de Nacimiento</label>
                                                    <div id="datepicker-popup6" class="input-group date datepicker">
                                                        <asp:TextBox ID="txtFechaNacimientoCreaPolizaEstudiantil" Text="Prueba" name="txtFechaNacimientoCreaPolizaEstudiantil" runat="server" title="Selecciona una fecha válida" placeholder="Ingresa la fecha de nacimiento" TextMode="SingleLine" class="form-control" />
                                                        <span class="input-group-addon input-group-append border-left">
                                                            <span class="ti-calendar input-group-text"></span>
                                                        </span>
                                                    </div>
                                                    <small id="fecha3Help" class="form-text text-muted">Selecciona la fecha de nacimiento del estudiante</small>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Ingresa la fecha de nacimiento del estudiante" ControlToValidate="txtFechaNacimientoCreaPolizaEstudiantil" ForeColor="Red" ValidationGroup="CrearPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                </div>
                                                <div class="col">
                                                    <label class="campoobligatorio">*</label><label for="txtCursadoCreaPolizaEstudiantil" id="lbCursadoCreaPolizaEstudiantil">
                                                        Año Cursado</label>
                                                    <asp:TextBox ID="txtCursadoCreaPolizaEstudiantil" Text="Prueba" name="txtCursadoCreaPolizaEstudiantil" runat="server" title="Ingresa el año que comprende el estudio ej. '2020-2021'" TextMode="SingleLine" class="form-control" placeholder="ej. 2020-2021" Pattern="[0-9]{4}-[0-9]{4}" />
                                                    <small id="cursadoHelp" class="form-text text-muted">Ingresa los años que comprenden el actual grado</small>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Ingresa el año cursado por el estudiante" ControlToValidate="txtCursadoCreaPolizaEstudiantil" ForeColor="Red" ValidationGroup="CrearPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                        </asp:Panel>
                                        <!----------------------------------------------------------------------------------------->
                                        <!----------------------------------------------------------------------------------------->
                                        <!----------------------------------------------------------------------------------------->

                                        <asp:Panel ID="panelHogar" runat="server" Visible="False">
                                            <p class="card-description">
                                                Descripción Póliza Hogar
                                            </p>
                                            <div class="form-group row">
                                                <div class="col">
                                                    <label class="campoobligatorio">*</label><label for="txtFechaNacimientoCreaPolizaHogar" id="lbFechaNacimientoCreaPolizaHogar">
                                                        Fecha de Nacimiento</label>
                                                    <div id="datepicker-popup7" class="input-group date datepicker">
                                                        <asp:TextBox ID="txtFechaNacimientoCreaPolizaHogar" Text="Prueba" name="txtFechaNacimientoCreaPolizaHogar" runat="server" title="Seleccione una fecha válida" placeholder="Ingresa la fecha de nacimiento del propietario" TextMode="SingleLine" class="form-control" />
                                                        <span class="input-group-addon input-group-append border-left">
                                                            <span class="ti-calendar input-group-text"></span>
                                                        </span>
                                                    </div>
                                                    <small id="fecha4Help" class="form-text text-muted">Selecciona la fecha de nacimiento del propietario del inmueble</small>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Ingresa la fecha de nacimiento del propietario del lote" ControlToValidate="txtFechaNacimientoCreaPolizaHogar" ForeColor="Red" ValidationGroup="CrearPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                </div>
                                                <div class="col">
                                                    <label class="campoobligatorio">*</label><label for="listlocalidadCreaPolizaHogar" id="lblocalidadCreaPolizaHogar">
                                                        Localidad</label>
                                                    <asp:DropDownList ID="listlocalidadCreaPolizaHogar" runat="server" name="listlocalidadCreaPolizaHogar" class="form-control">
                                                        <asp:ListItem>Bosa</asp:ListItem>
                                                        <asp:ListItem>Engativá</asp:ListItem>
                                                        <asp:ListItem>Usaquén</asp:ListItem>
                                                        <asp:ListItem>Chapinero</asp:ListItem>
                                                        <asp:ListItem>Santa Fe</asp:ListItem>
                                                        <asp:ListItem>San Cristóbal</asp:ListItem>
                                                        <asp:ListItem>Usme</asp:ListItem>
                                                        <asp:ListItem>Tunjuelito</asp:ListItem>
                                                        <asp:ListItem>Usme</asp:ListItem>
                                                        <asp:ListItem>Kennedy</asp:ListItem>
                                                        <asp:ListItem>Fontibon</asp:ListItem>
                                                        <asp:ListItem>Suba</asp:ListItem>
                                                        <asp:ListItem>Barrios Unidos</asp:ListItem>
                                                        <asp:ListItem>Teusaquillo</asp:ListItem>
                                                        <asp:ListItem>Los Martirés</asp:ListItem>
                                                        <asp:ListItem>Antonio Nariño</asp:ListItem>
                                                        <asp:ListItem>Puente Aranda</asp:ListItem>
                                                        <asp:ListItem>La Candelaria</asp:ListItem>
                                                        <asp:ListItem>Rafael Uribe Uribe</asp:ListItem>
                                                        <asp:ListItem>Ciudad Bolívar</asp:ListItem>
                                                        <asp:ListItem>Sumapaz</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <small id="localidadHelp" class="form-text text-muted">Ingresa la localidad de ubicación del inmueble</small>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Ingresa la localidad de ubicación del lote" ControlToValidate="listlocalidadCreaPolizaHogar" ForeColor="Red" ValidationGroup="CrearPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col">
                                                    <label class="campoobligatorio">*</label><label for="txtValorConstruccionCreaPoliza" id="lbValorConstruccionCreaPoliza">
                                                        Valor Construcción</label>
                                                    <asp:TextBox ID="txtValorConstruccionCreaPoliza" Text="Prueba" name="txtValorConstruccionCreaPoliza" runat="server" title="Valor Construcción" placeholder="Ingresa de la Construcción" type="number" class="form-control" />
                                                    <small id="valorcHelp" class="form-text text-muted">Ingresa el valor de contrucción del inmueble</small>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Ingresa el valor de construccion inicial del lote" ControlToValidate="txtValorConstruccionCreaPoliza" ForeColor="Red" ValidationGroup="CrearPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                </div>
                                                <div class="col">
                                                    <label class="campoobligatorio">*</label><label for="txtValorEnseresCreaPolizaHogar" id="lbValorEnseresCreaPolizaHogar">
                                                        Valor Enseres</label>
                                                    <asp:TextBox ID="txtValorEnseresCreaPolizaHogar" Text="Prueba" name="txtValorEnseresCreaPolizaHogar" runat="server" title="Valor Enseres" placeholder="Ingresa el valor de enseres actuales" type="number" class="form-control" />
                                                    <small id="valorenHelp" class="form-text text-muted">Ingresa el valor estipulado actual de los enseres</small>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Ingresa el valor de los enseres actuales valuados" ControlToValidate="txtValorEnseresCreaPolizaHogar" ForeColor="Red" ValidationGroup="CrearPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                        </asp:Panel>
                                        <!----------------------------------------------------------------------------------------->
                                        <!----------------------------------------------------------------------------------------->
                                        <!----------------------------------------------------------------------------------------->

                                        <asp:Panel ID="panelPyme" runat="server" Visible="False">
                                            <p class="card-description">
                                                Descripción Póliza Pyme
                                            </p>
                                            <div class="form-group row">
                                                <div class="col">
                                                    <label class="campoobligatorio">*</label><label for="txtValorAseguradoCreaPolizaPyme" id="lbValorAseguradoCreaPolizaPyme">
                                                        Valor Asegurado</label>
                                                    <asp:TextBox ID="txtValorAseguradoCreaPolizaPyme" Text="Prueba" name="txtValorAseguradoCreaPolizaPyme" runat="server" title="Valor Asegurado" placeholder="Ingresa el valor asegurado" type="number" class="form-control" />
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Ingresa el valor a asegurar" ControlToValidate="txtValorAseguradoCreaPolizaPyme" ForeColor="Red" ValidationGroup="CrearPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                </div>
                                                <div class="col">
                                                    <label class="campoobligatorio">*</label><label for="txtTipoNegocioCreaPolizaPyme" id="lbTipoNegocioCreaPolizaPyme">
                                                        Tipo de Negocio</label>
                                                    <asp:TextBox ID="txtTipoNegocioCreaPolizaPyme" Text="Prueba" name="txtTipoNegocioCreaPolizaPyme" runat="server" title="Tipo Negocio" TextMode="SingleLine" class="form-control" placeholder="ej. Supermercado de Dulces al detal" />
                                                    <small id="tiponegHelp" class="form-text text-muted">Escribe una breve descripción de la dedicación del negocio</small>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="Ingresa el tipo de negocio" ControlToValidate="txtTipoNegocioCreaPolizaPyme" ForeColor="Red" ValidationGroup="CrearPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col">
                                                    <label class="campoobligatorio">*</label><label for="txtLocalidadCreaPolizaPyme" id="lbLocalidadCreaPolizaPyme">
                                                        Localidad de ubicación del negocio</label>
                                                    <asp:DropDownList ID="listLocalidadCreaPolizaPyme" runat="server" name="listLocalidadCreaPolizaPyme" class="form-control">
                                                        <asp:ListItem>Bosa</asp:ListItem>
                                                        <asp:ListItem>Engativá</asp:ListItem>
                                                        <asp:ListItem>Usaquén</asp:ListItem>
                                                        <asp:ListItem>Chapinero</asp:ListItem>
                                                        <asp:ListItem>Santa Fe</asp:ListItem>
                                                        <asp:ListItem>San Cristóbal</asp:ListItem>
                                                        <asp:ListItem>Usme</asp:ListItem>
                                                        <asp:ListItem>Tunjuelito</asp:ListItem>
                                                        <asp:ListItem>Usme</asp:ListItem>
                                                        <asp:ListItem>Kennedy</asp:ListItem>
                                                        <asp:ListItem>Fontibon</asp:ListItem>
                                                        <asp:ListItem>Suba</asp:ListItem>
                                                        <asp:ListItem>Barrios Unidos</asp:ListItem>
                                                        <asp:ListItem>Teusaquillo</asp:ListItem>
                                                        <asp:ListItem>Los Martirés</asp:ListItem>
                                                        <asp:ListItem>Antonio Nariño</asp:ListItem>
                                                        <asp:ListItem>Puente Aranda</asp:ListItem>
                                                        <asp:ListItem>La Candelaria</asp:ListItem>
                                                        <asp:ListItem>Rafael Uribe Uribe</asp:ListItem>
                                                        <asp:ListItem>Ciudad Bolívar</asp:ListItem>
                                                        <asp:ListItem>Sumapaz</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="Ingresa la localidad del negocio" ControlToValidate="listLocalidadCreaPolizaPyme" ForeColor="Red" ValidationGroup="CrearPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                </div>
                                                <div class="col">
                                                    <label class="campoobligatorio">*</label><label for="txtNombreNegocioCreaPolizaPyme" id="lbNombreNegocioCreaPolizaPyme">
                                                        Razón Social / Nombre del Negocio</label>
                                                    <asp:TextBox ID="txtNombreNegocioCreaPolizaPyme" Text="Prueba" name="txtNombreNegocioCreaPolizaPyme" runat="server" title="Nombre del Negocio" placeholder="Ingresa el nombre del negocio" TextMode="SingleLine" class="form-control" />
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="Ingresa el nombre del negocio" ControlToValidate="txtNombreNegocioCreaPolizaPyme" ForeColor="Red" ValidationGroup="CrearPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                        </asp:Panel>
                                        <!----------------------------------------------------------------------------------------->
                                        <!----------------------------------------------------------------------------------------->
                                        <!----------------------------------------------------------------------------------------->
                                        <asp:Panel ID="panelRC" runat="server" Visible="False">
                                            <p class="card-description">
                                                Descripción Póliza RC Médica
                                            </p>
                                            <div class="form-group row">
                                                <div class="col">
                                                    <label class="campoobligatorio">*</label><label for="txtFechaNacimientoCreaPolizaRC" id="lbFechaNacimientoCreaPolizaRC">
                                                        Fecha de Nacimiento del Clínico</label>
                                                    <div id="datepicker-popup8" class="input-group date datepicker">
                                                        <asp:TextBox ID="txtFechaNacimientoCreaPolizaRC" Text="Prueba" name="txtFechaNacimientoCreaPolizaRC" runat="server" title="Selecciona una fecha válida" placeholder="Ingresa la fecha de nacimiento" TextMode="SingleLine" class="form-control" />
                                                        <span class="input-group-addon input-group-append border-left">
                                                            <span class="ti-calendar input-group-text"></span>
                                                        </span>
                                                    </div>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ErrorMessage="Ingresa la fecha de nacimiento del profesional de la salud" ControlToValidate="txtFechaNacimientoCreaPolizaRC" ForeColor="Red" ValidationGroup="CrearPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col">
                                                    <label class="campoobligatorio">*</label><label for="txtTarjetaCreaPolizaRC" id="lbTarjetaCreaPolizaRC">
                                                        Tarjeta Profesional</label>
                                                    <asp:TextBox ID="txtTarjetaCreaPolizaRC" Text="Prueba" name="txtTarjetaCreaPolizaRC" runat="server" title="Tarjeta Profesional" placeholder="Ingresa el número de tarjeta profesional" TextMode="SingleLine" class="form-control" />
                                                    <small id="tarjetaHelp" class="form-text text-muted">Escribe el número de tarjeta profesional</small>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ErrorMessage="Ingresa el número de tarjeta profesional médica" ControlToValidate="txtTarjetaCreaPolizaRC" ForeColor="Red" ValidationGroup="CrearPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                </div>
                                                <div class="col">
                                                    <label class="campoobligatorio">*</label><label for="txtFechaExpedicionCreaPolizaRC" id="lbFechaExpedicionCreaPolizaRC">
                                                        Fecha de Expedición de la Tarjeta Profesional</label>
                                                    <div id="datepicker-popup9" class="input-group date datepicker">
                                                        <asp:TextBox ID="txtFechaExpedicionCreaPolizaRC" Text="Prueba" name="txtFechaExpedicionCreaPolizaRC" runat="server" title="Selecciona una fecha válida" placeholder="Ingresa la fecha de expedición" TextMode="SingleLine" class="form-control" />
                                                        <span class="input-group-addon input-group-append border-left">
                                                            <span class="ti-calendar input-group-text"></span>
                                                        </span>
                                                    </div>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ErrorMessage="Ingresa la fecha de expedición de la tarjeta" ControlToValidate="txtFechaExpedicionCreaPolizaRC" ForeColor="Red" ValidationGroup="CrearPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                        </asp:Panel>
                                        <!----------------------------------------------------------------------------------------->
                                        <!----------------------------------------------------------------------------------------->
                                        <!----------------------------------------------------------------------------------------->
                                        <asp:Panel ID="panelVida" runat="server" Visible="False">
                                            <p class="card-description">
                                                Descripción Póliza Vida
                                            </p>
                                            <div class="form-group row">
                                                <div class="col">
                                                    <label class="campoobligatorio">*</label><label for="txtFechaNacimientoCreaPolizaVida" id="lbFechaNacimientoCreaPolizaVida">
                                                        Fecha de Nacimiento del Asegurado</label>
                                                    <div id="datepicker-popup10" class="input-group date datepicker">
                                                        <asp:TextBox ID="txtFechaNacimientoCreaPolizaVida" Text="Prueba" name="txtFechaNacimientoCreaPolizaVida" runat="server" title="Selecciona una fecha válida" placeholder="Ingresa la fecha de nacimiento" TextMode="SingleLine" class="form-control" />
                                                        <span class="input-group-addon input-group-append border-left">
                                                            <span class="ti-calendar input-group-text"></span>
                                                        </span>
                                                    </div>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ErrorMessage="Ingresa la fecha de nacimiento de la persona a asegurar" ControlToValidate="txtFechaNacimientoCreaPolizaVida" ForeColor="Red" ValidationGroup="CrearPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                </div>
                                                <div class="col">
                                                    <label class="campoobligatorio">*</label><label for="txtValorBeneficiarioCreaPolizaVida" id="lbValorBeneficiarioCreaPolizaVida">
                                                        Valor Beneficiario</label>
                                                    <asp:TextBox ID="txtValorBeneficiarioCreaPolizaVida" Text="Prueba" name="txtValorBeneficiarioCreaPolizaVida" runat="server" title="Valor Beneficiario" placeholder="Ingresa el valor beneficiario" type="number" class="form-control" />
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ErrorMessage="Ingresa el valor a recibir el beneficiario" ControlToValidate="txtValorBeneficiarioCreaPolizaVida" ForeColor="Red" ValidationGroup="CrearPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                        </asp:Panel>
                                        <!----------------------------------------------------------------------------------------->
                                        <!----------------------------------------------------------------------------------------->
                                        <!----------------------------------------------------------------------------------------->
                                        <div class="form-group">
                                            <div class="card-body">
                                                <h5 class="text-info">Adjuntar PDF de la Póliza (Opcional)</h5>
                                                <!--<asp:TextBox ID="fileCrearPolizaVirtual" name="fileCreaPolizaVirtual" runat="server" title="Subir Póliza" type="file" class="dropify" />-->
                                                <asp:FileUpload runat="server" ID="FileUpload1" name="FileUpload1" title="Subir Póliza" CssClass="dropify" />
                                                <asp:Label ID="lbMensaje" runat="server" CssClass="form-text text-muted" Text="El archivo debe ser formato PDF no mayor a 1MB"></asp:Label>
                                            </div>
                                        </div>
                                        <div style="float: right;">
                                            <asp:Button ID="btnCrearPoliza" runat="server" class="btn btn-primary" OnClick="btnCrearPoliza_Click"
                                                ValidationGroup="CrearPoliza" Text="Crear Póliza" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- content-wrapper ends -->
                    <!-- partial:../../partials/_footer.html -->
                    <footer class="footer">
                        <div class="d-sm-flex justify-content-center justify-content-sm-between">
                            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2021.</span>
                            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Todos los Derechos Reservados. </span>
                        </div>
                    </footer>
                    <!-- partial -->
                </div>
                <!-- main-panel ends -->
            </div>
            <!-- page-body-wrapper ends -->
        </div>
    </form>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="../../library/dashboardAdmin/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script>
        $(window).on('load', function () {
            setTimeout(function () {
                $(".loader-page").css({ visibility: "hidden", opacity: "0" })
            }, 2000);

        });
    </script>
    <script src="../../library/dashboardAdmin/vendors/jquery-file-upload/jquery.uploadfile.min.js"></script>
    <script src="../../library/dashboardAdmin/vendors/jquery-tags-input/jquery.tagsinput.min.js"></script>
    <script src="../../library/dashboardAdmin/vendors/jquery-steps/jquery.steps.min.js"></script>
    <script src="../../library/dashboardAdmin/vendors/jquery-validation/jquery.validate.min.js"></script>
    <script src="../../library/dashboardAdmin/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
    <script src="../../library/dashboardAdmin/vendors/datatables.net/jquery.dataTables.js"></script>
    <script src="../../library/dashboardAdmin/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
    <script src="../../library/dashboardAdmin/vendors/sweetalert/sweetalert.min.js"></script>
    <script src="../../library/dashboardAdmin/vendors/jquery.avgrund/jquery.avgrund.min.js"></script>
    <script src="../../library/dashboardAdmin/vendors/jquery-bar-rating/jquery.barrating.min.js"></script>
    <script src="../../library/dashboardAdmin/vendors/jquery-asColor/jquery-asColor.min.js"></script>
    <script src="../../library/dashboardAdmin/vendors/jquery-asGradient/jquery-asGradient.min.js"></script>
    <script src="../../library/dashboardAdmin/vendors/jquery-asColorPicker/jquery-asColorPicker.min.js"></script>
    <script src="../../library/dashboardAdmin/vendors/x-editable/bootstrap-editable.min.js"></script>
    <script src="../../library/dashboardAdmin/vendors/moment/moment.min.js"></script>
    <script src="../../library/dashboardAdmin/vendors/tempusdominus-bootstrap-4/tempusdominus-bootstrap-4.js"></script>
    <script src="../../library/dashboardAdmin/vendors/dropify/dropify.min.js"></script>
    <script src="../../library/dashboardAdmin/vendors/jquery-file-upload/jquery.uploadfile.min.js"></script>
    <script src="../../library/dashboardAdmin/vendors/jquery-tags-input/jquery.tagsinput.min.js"></script>
    <script src="../../library/dashboardAdmin/vendors/dropzone/dropzone.js"></script>
    <script src="../../library/dashboardAdmin/vendors/jquery.repeater/jquery.repeater.min.js"></script>
    <script src="../../library/dashboardAdmin/vendors/inputmask/jquery.inputmask.bundle.js"></script>
    <!-- End plugin js for this page-->
    <!-- inject:js -->
    <script src="../../library/dashboardAdmin/js/off-canvas.js"></script>
    <script src="../../library/dashboardAdmin/js/hoverable-collapse.js"></script>
    <script src="../../library/dashboardAdmin/js/template.js"></script>
    <script src="../../library/dashboardAdmin/js/settings.js"></script>
    <script src="../../library/dashboardAdmin/js/todolist.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page-->
    <script src="../../library/dashboardAdmin/js/jquery-file-upload.js"></script>
    <script src="../../library/dashboardAdmin/js/data-table.js"></script>
    <script src="../../library/dashboardAdmin/js/alerts.js"></script>
    <script src="../../library/dashboardAdmin/js/avgrund.js"></script>
    <script src="../../library/dashboardAdmin/js/wizard.js"></script>
    <script src="../../library/dashboardAdmin/js/formpickers2.js"></script>
    <script src="../../library/dashboardAdmin/js/form-addons.js"></script>
    <script src="../../library/dashboardAdmin/js/x-editable.js"></script>
    <script src="../../library/dashboardAdmin/js/dropify.js"></script>
    <script src="../../library/dashboardAdmin/js/dropzone.js"></script>
    <script src="../../library/dashboardAdmin/js/jquery-file-upload.js"></script>
    <script src="../../library/dashboardAdmin/js/form-repeater.js"></script>
    <script src="../../library/dashboardAdmin/js/inputmask.js"></script>
    <!-- End custom js for this page-->
</body>


<!-- Mirrored from www.bootstrapdash.com/demo/skydash/template/demo/vertical-default-light/pages/tables/data-table.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 16 Mar 2021 01:57:53 GMT -->
</html>

