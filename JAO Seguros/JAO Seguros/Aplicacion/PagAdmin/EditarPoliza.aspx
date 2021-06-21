<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditarPoliza.aspx.cs" Inherits="JAO_Seguros.Aplicacion.PagAdmin.EditarPoliza" %>

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
    <form id="FormEditarPoliza" runat="server">
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
                                <ol class="breadcrumb" style="float: right;">
                                    <li class="breadcrumb-item"><a href="DefaultAdmin.aspx">Inicio</a></li>
                                    <li class="breadcrumb-item"><a href="Polizas.aspx">Pólizas</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Editar Póliza</li>
                                </ol>
                                <!--FIN MIGA DE PAN-->
                                <!--INICIO de TABS-->
                                <ul class="nav nav-tabs" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active text-info" id="home-tab" data-toggle="tab" href="#home-1" role="tab"
                                            aria-controls="home-1" aria-selected="true">Información de la Póliza
                    <i class="ti-pencil text-info ml-2"></i>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link text-info" id="profile-tab" data-toggle="tab" href="#profile-1" role="tab"
                                            aria-controls="profile-1" aria-selected="false">Acciones
                    <i class="ti-settings text-info ml-2"></i>
                                        </a>
                                    </li>
                                </ul>
                                <!--FIN DE TABS-->
                                <div class="tab-content" style="background-color: white;">
                                    <div class="tab-pane fade show active" id="home-1" role="tabpanel" aria-labelledby="home-tab">
                                        <div class="card">
                                            <div class="card-body">
                                                <h4 class="card-title">Editar Póliza de Seguros</h4>
                                                <br>
                                                <p class="card-description">
                                                    Identificación del Seguro
                                                </p>
                                                <div class="form-group row">
                                                    <div class="col">
                                                        <label class="campoobligatorio">*</label><label id="lbCodigoEditarPoliza" for="txtCodigoPoliza">
                                                            Código de Póliza</label>
                                                        <asp:TextBox ID="txtCodigoPoliza" name="txtEditarCodigoPoliza" runat="server" title="El Código debe tener letras mayúsculas y números" TextMode="SingleLine" class="form-control mb-2 mr-sm-2" minlength="10" MaxLength="10" pattern="[A-Z0-9]+" />
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ingresa el código de la póliza" ControlToValidate="txtCodigoPoliza" ForeColor="Red" ValidationGroup="EditarPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                    </div>
                                                    <div class="col">
                                                        <label class="campoobligatorio">*</label><label id="lbEditarTipoPagoClientePoliza" for="listEditarTipoPagoClientePoliza">
                                                            Tipo de Pago del Seguro</label>
                                                        <asp:DropDownList ID="listTipoPago" title="Tipo de Pago" runat="server" CssClass="form-control mb-2 mr-sm-2">
                                                            <asp:ListItem>Contado</asp:ListItem>
                                                            <asp:ListItem>Financiado</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                    <div class="col">
                                                        <label for="txtTipo" id="lbTipo">Tipo de Póliza</label>
                                                        <asp:TextBox ID="txtTipo" name="txtTipo" runat="server" title="Tipo de Póliza" TextMode="SingleLine" class="form-control mb-2 mr-sm-2" ReadOnly="true" BackColor="White" />
                                                    </div>
                                                </div>
                                                <asp:UpdatePanel ID="PANELNITCLIENTE" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <div class="form-group row">
                                                            <div class="col">
                                                                <label class="campoobligatorio">*</label><label id="lbEditarNitPoliza" for="txtNitEditarPoliza">
                                                                    Nit. de la Aseguradora Proveedora de la Póliza</label>
                                                                <div class="input-group">
                                                                    <div class="input-group-prepend">
                                                                        <asp:DropDownList runat="server" class="btn btn-sm btn-outline-primary" ID="listaProveedores" OnSelectedIndexChanged="listaProveedores_SelectedIndexChanged" AutoPostBack="true">
                                                                            <asp:ListItem Value="">--Seleccione--</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                    <asp:TextBox ID="txtNitEditarPoliza" name="txtNitEditarPoliza" runat="server" title="NIT. Proveedor" placeholder="Ingresa el NIT del Proveedor de la póliza" TextMode="SingleLine" class="form-control" aria-label="Text input with dropdown button" />
                                                                    <small id="nithelp" class="form-text text-muted">Seleccione o Digite el Número de Nit. del Proveedor registrado en el Sistema</small>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Ingresa el nit. de la aseguradora" ControlToValidate="txtNitEditarPoliza" ForeColor="Red" ValidationGroup="EditarPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>
                                                            <div class="col">
                                                                <label class="campoobligatorio">*</label><label id="lbEditarNumDocumentoClientePoliza" for="txtDocumentoEditarPoliza">
                                                                    Documento del Cliente Referido</label>
                                                                <div class="input-group">
                                                                    <div class="input-group-prepend">
                                                                        <asp:DropDownList runat="server" class="btn btn-sm btn-outline-primary" ID="listaClientes" OnSelectedIndexChanged="listaClientes_SelectedIndexChanged" AutoPostBack="true">
                                                                            <asp:ListItem Value="">--Seleccione--</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                    <asp:TextBox ID="txtDocumentoEditarPoliza" name="txtDocumentoEditarPoliza" runat="server" title="Documento Cliente" placeholder="Selecciona el número de documento" TextMode="SingleLine" class="form-control" aria-label="Text input with dropdown button" />
                                                                </div>
                                                                <small id="documentoHelp" class="form-text text-muted">Seleccione o Digite el Número de Documento del Cliente registrado en el Sistema</small>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Ingresa el documento del cliente" ControlToValidate="txtDocumentoEditarPoliza" ForeColor="Red" ValidationGroup="EditarPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <p class="card-description">
                                                    Personas del Seguro
                                                </p>
                                                <div class="form-group row">
                                                    <div class="col">
                                                        <label for="txtNomTomEditarPoliza" id="lbNomTomEditarPoliza">Nombre Completo del Tomador</label>
                                                        <asp:TextBox ID="txtNomTomEditarPoliza" name="txtNomTomEditarPoliza" runat="server" title="Nombre Tomador" placeholder="Ingresa el nombre del tomador de la póliza" TextMode="SingleLine" class="form-control" />
                                                        <small id="tomHelp" class="form-text text-muted">Ingrese si existe un Tomador</small>
                                                    </div>
                                                    <div class="col">
                                                        <label for="txtDocTomEditarPoliza" id="lbDocTomEditarPoliza">Número del Documento del Tomador</label>
                                                        <asp:TextBox ID="txtDocTomEditarPoliza" name="txtDocTomEditarPoliza" runat="server" title="Documento Tomador" placeholder="Ingresa el documento del tomador de la póliza" TextMode="SingleLine" class="form-control" />
                                                        <small id="tomdocHelp" class="form-text text-muted">Ingrese si existe un Tomador</small>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col">
                                                        <label for="txtNomBenEditarPoliza" id="lbNomBenEditarPoliza">Nombre Completo del Beneficiario</label>
                                                        <asp:TextBox ID="txtNomBenEditarPoliza" name="txtNomBenEditarPoliza" runat="server" title="Nombre Beneficiario" placeholder="Ingresa el nombre del beneficiario de la póliza" TextMode="SingleLine" class="form-control" />
                                                        <small id="benHelp" class="form-text text-muted">Ingrese si existe un Beneficiario</small>
                                                    </div>
                                                    <div class="col">
                                                        <label for="txtDocBenEditarPoliza" id="lbDocBenEditarPoliza">Número del Documento del Beneficiario</label>
                                                        <asp:TextBox ID="txtDocBenEditarPoliza" name="txtDocBenEditarPoliza" runat="server" title="Documento Beneficiario" placeholder="Ingresa el documento del beneficiario de la póliza" TextMode="SingleLine" class="form-control" />
                                                        <small id="bendocHelp" class="form-text text-muted">Ingrese si existe un Beneficiario</small>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col">
                                                        <label for="txtNomAsegEditarPoliza" id="lbNomAsegEditarPoliza">Nombre Completo del Asegurado</label>
                                                        <asp:TextBox ID="txtNomAsegEditarPoliza" name="txtNomAsegEditarPoliza" runat="server" title="Nombre Asegurado" placeholder="Ingresa el nombre del asegurado de la póliza" TextMode="SingleLine" class="form-control" />
                                                        <small id="asegHelp" class="form-text text-muted">Ingrese si existe un Asegurado</small>
                                                    </div>
                                                    <div class="col">
                                                        <label for="txtDocAsegEditarPoliza" id="lbDocAsegEditarPoliza">Número del Documento del Asegurado</label>
                                                        <asp:TextBox ID="txtDocAsegEditarPoliza" name="txtDocAsegEditarPoliza" runat="server" title="Documento Asegurado" placeholder="Ingresa el documento del asegurado de la póliza" TextMode="SingleLine" class="form-control" />
                                                        <small id="asegdocHelp" class="form-text text-muted">Ingrese si existe un Asegurado</small>
                                                    </div>
                                                </div>
                                                <p class="card-description">
                                                    Cobertura
                                                </p>
                                                <div class="form-group row">
                                                    <div class="col">
                                                        <label class="campoobligatorio">*</label><label id="lbFechasEditarPoliza">
                                                            Vigencia de la Cobertura del Seguro</label>
                                                        <div class="input-group input-daterange  d-flex align-items-center">
                                                            <asp:TextBox ID="txtFechaIEditarPoliza" name="txtFechaIEditarPoliza" runat="server" title="Selecciona una fecha válida" placeholder="Ingresa la fecha inicio de cobertura" TextMode="SingleLine" class="form-control" />
                                                            <div class="input-group-addon mx-4">hasta</div>
                                                            <asp:TextBox ID="txtFechaFEditarPoliza" name="txtFechaFEditarPoliza" runat="server" title="Selecciona una fecha válida" placeholder="Ingresa la fecha fin de cobertura" TextMode="SingleLine" class="form-control" />
                                                        </div>
                                                        <small id="fecha1Help" class="form-text text-muted">Selecciona las fechas que comprenden la cobertura de la póliza</small>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Ingresa la fecha de inicio de la cobertura" ControlToValidate="txtFechaIEditarPoliza" ForeColor="Red" ValidationGroup="EditarPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Ingresa la fecha de fin de la cobertura" ControlToValidate="txtFechaFEditarPoliza" ForeColor="Red" ValidationGroup="EditarPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col">
                                                        <label class="campoobligatorio">*</label><label for="txtFechaEEditarPoliza" id="lbFechaEEditarPoliza">
                                                            Fecha de Expedición de la Póliza</label>
                                                        <div id="datepicker-popup" class="input-group date datepicker">
                                                            <asp:TextBox ID="txtFechaEEditarPoliza" name="txtFechaEEditarPoliza" runat="server" title="Selecciona una fecha válida" placeholder="Ingresa la fecha de expedición de la póliza" TextMode="SingleLine" class="form-control" />
                                                            <span class="input-group-addon input-group-append border-left">
                                                                <span class="ti-calendar input-group-text"></span>
                                                            </span>
                                                        </div>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Ingresa la fecha de expedición de la póliza" ControlToValidate="txtFechaEEditarPoliza" ForeColor="Red" ValidationGroup="EditarPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                <asp:Panel ID="panelVehicular" runat="server" Visible="False">
                                                    <p class="card-description">
                                                        Descripción Póliza Vehicular
                                                    </p>
                                                    <div class="form-group row">
                                                        <div class="col">
                                                            <label class="campoobligatorio">*</label><label for="txtFechaNacimientoEditarPolizaVehicular" id="lbFechaNacimientoEditarPolizaVehicular">
                                                                Fecha de Nacimiento</label>
                                                            <div id="datepicker-popup2" class="input-group date datepicker">
                                                                <asp:TextBox ID="txtFechaNacimientoEditarPolizaVehicular" Text="Prueba" name="txtFechaNacimientoEditarPolizaVehicular" runat="server" title="Selecciona una fecha válida" placeholder="Ingresa la fecha de nacimiento del propietario" TextMode="SingleLine" class="form-control" />
                                                                <span class="input-group-addon input-group-append border-left">
                                                                    <span class="ti-calendar input-group-text"></span>
                                                                </span>
                                                            </div>
                                                            <small id="fecha2Help" class="form-text text-muted">Selecciona la fecha de nacimiento del actual propietario del vehículo</small>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ErrorMessage="Ingresa la fecha de nacimiento del propietario del vehículo" ControlToValidate="txtFechaNacimientoEditarPolizaVehicular" ForeColor="Red" ValidationGroup="EditarPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col">
                                                            <label class="campoobligatorio">*</label><label for="txtTipoAutoEditarPolizaVehicular" id="lbTipoAutoEditarPolizaVehicular">
                                                                Tipo de Auto</label>
                                                            <asp:TextBox ID="txtTipoAutoEditarPolizaVehicular" Text="Prueba" name="txtTipoAutoEditarPolizaVehicular" runat="server" title="Tipo de Auto" placeholder="Ingresa el tipo de auto" TextMode="SingleLine" class="form-control" />
                                                            <small id="tipoautoHelp" class="form-text text-muted">Realiza una pequeña descripción de la marca, modelo y año del vehículo</small>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ErrorMessage="Ingresa el tipo de auto y el modelo del vehículo" ControlToValidate="txtTipoAutoEditarPolizaVehicular" ForeColor="Red" ValidationGroup="EditarPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                        </div>
                                                        <div class="col">
                                                            <label class="campoobligatorio">*</label><label for="txtPlacasEditarPolizaVehicular" id="lbPlacasEditarPolizaVehicular">
                                                                Placas</label>
                                                            <asp:TextBox ID="txtPlacasEditarPolizaVehicular" Text="Prueba" name="txtPlacasEditarPolizaVehicular" runat="server" title="Placa del vehículo" placeholder="Ingresa las placas del auto de la póliza" TextMode="SingleLine" class="form-control" MaxLength="6" pattern="([A-Z]{3}[0-9]{3})" />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ErrorMessage="Ingresa las placas del vehículo" ControlToValidate="txtPlacasEditarPolizaVehicular" ForeColor="Red" ValidationGroup="EditarPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                        </div>
                                                    </div>
                                                </asp:Panel>
                                                <asp:Panel ID="panelEstudiantil" runat="server" Visible="False">
                                                    <p class="card-description">
                                                        Descripción Póliza Estudiantil
                                                    </p>
                                                    <div class="form-group row">
                                                        <div class="col">
                                                            <label class="campoobligatorio">*</label><label for="txtInstitucionEditarPolizaEstudiantil" id="lbEditarPolizaEstudiantil">
                                                                Institución</label>
                                                            <asp:TextBox ID="txtInstitucionEditarPolizaEstudiantil" Text="Prueba" name="txtInstitucionEditarPolizaEstudiantil" runat="server" title="Institución" placeholder="Ingresa la Institución" TextMode="SingleLine" class="form-control" />
                                                            <small id="institucionHelp" class="form-text text-muted">Ingresa el nombre de la Institución Educativa del Estudiante</small>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Ingresa la institución actual del estudiante" ControlToValidate="txtInstitucionEditarPolizaEstudiantil" ForeColor="Red" ValidationGroup="EditarPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                        </div>
                                                        <div class="col">
                                                            <label class="campoobligatorio">*</label><label for="txtCursoEditarPolizaEstudiantil" id="lbCursoEditarPolizaEstudiantil">
                                                                Curso o Semestre actual</label>
                                                            <asp:TextBox ID="txtCursoEditarPolizaEstudiantil" Text="Prueba" name="txtCursoEditarPolizaEstudiantil" runat="server" title="Curso o Semestre" TextMode="SingleLine" class="form-control" placeholder="ej. Segundo Trimestre, Segundo grado de Bachillerato" />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Ingresa el curso o el semestre que este cursando el estudiante" ControlToValidate="txtCursoEditarPolizaEstudiantil" ForeColor="Red" ValidationGroup="EditarPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col">
                                                            <label class="campoobligatorio">*</label><label for="txtFechaNacimientoEditarPolizaEstudiantil" id="lbFechaNacimientoEditarPolizaEstudiantil">
                                                                Fecha de Nacimiento</label>
                                                            <div id="datepicker-popup3" class="input-group date datepicker">
                                                                <asp:TextBox ID="txtFechaNacimientoEditarPolizaEstudiantil" Text="Prueba" name="txtFechaNacimientoEditarPolizaEstudiantil" runat="server" title="Selecciona una fecha válida" placeholder="Ingresa la fecha de nacimiento" TextMode="SingleLine" class="form-control" />
                                                                <span class="input-group-addon input-group-append border-left">
                                                                    <span class="ti-calendar input-group-text"></span>
                                                                </span>
                                                            </div>
                                                            <small id="fecha3Help" class="form-text text-muted">Selecciona la fecha de nacimiento del estudiante</small>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Ingresa la fecha de nacimiento del estudiante" ControlToValidate="txtFechaNacimientoEditarPolizaEstudiantil" ForeColor="Red" ValidationGroup="EditarPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                        </div>
                                                        <div class="col">
                                                            <label class="campoobligatorio">*</label><label for="txtCursadoEditarPolizaEstudiantil" id="lbCursadoEditarPolizaEstudiantil">
                                                                Año Cursado</label>
                                                            <asp:TextBox ID="txtCursadoEditarPolizaEstudiantil" Text="Prueba" name="txtCursadoEditarPolizaEstudiantil" runat="server" title="Anuario Cursado" class="form-control" placeholder="ej. 2020-2021" />
                                                            <small id="cursadoHelp" class="form-text text-muted">Ingresa los años que comprenden el actual grado</small>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Ingresa el año cursado por el estudiante" ControlToValidate="txtCursadoEditarPolizaEstudiantil" ForeColor="Red" ValidationGroup="EditarPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                        </div>
                                                    </div>
                                                </asp:Panel>
                                                <asp:Panel ID="panelHogar" runat="server" Visible="False">
                                                    <p class="card-description">
                                                        Descripción Póliza Hogar
                                                    </p>
                                                    <div class="form-group row">
                                                        <div class="col">
                                                            <label class="campoobligatorio">*</label><label for="txtFechaNacimientoEditarPolizaHogar" id="lbFechaNacimientoEditarPolizaHogar">
                                                                Fecha de Nacimiento</label>
                                                            <div id="datepicker-popup4" class="input-group date datepicker">
                                                                <asp:TextBox ID="txtFechaNacimientoEditarPolizaHogar" Text="Prueba" name="txtFechaNacimientoEditarPolizaHogar" runat="server" title="Seleccione una fecha válida" placeholder="Ingresa la fecha de nacimiento del propietario" TextMode="SingleLine" class="form-control" />
                                                                <span class="input-group-addon input-group-append border-left">
                                                                    <span class="ti-calendar input-group-text"></span>
                                                                </span>
                                                            </div>
                                                            <small id="fecha4Help" class="form-text text-muted">Selecciona la fecha de nacimiento del propietario del inmueble</small>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Ingresa la fecha de nacimiento del propietario del lote" ControlToValidate="txtFechaNacimientoEditarPolizaHogar" ForeColor="Red" ValidationGroup="EditarPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                        </div>
                                                        <div class="col">
                                                            <label class="campoobligatorio">*</label><label for="listlocalidadEditarPolizaHogar" id="lblocalidadEditarPolizaHogar">
                                                                Localidad</label>
                                                            <asp:DropDownList ID="listlocalidadEditarPolizaHogar" runat="server" name="listlocalidadEditarPolizaHogar" class="form-control">
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
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Ingresa la localidad de ubicación del lote" ControlToValidate="listlocalidadEditarPolizaHogar" ForeColor="Red" ValidationGroup="EditarPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col">
                                                            <label class="campoobligatorio">*</label><label for="txtValorConstruccionEditarPoliza" id="lbValorConstruccionEditarPoliza">
                                                                Valor Construcción</label>
                                                            <asp:TextBox ID="txtValorConstruccionEditarPoliza" Text="Prueba" name="txtValorConstruccionEditarPoliza" runat="server" title="Valor Construcción" placeholder="Ingresa de la Construcción" type="number" class="form-control" />
                                                            <small id="valorcHelp" class="form-text text-muted">Ingresa el valor de contrucción del inmueble</small>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Ingresa el valor de construccion inicial del lote" ControlToValidate="txtValorConstruccionEditarPoliza" ForeColor="Red" ValidationGroup="EditarPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                        </div>
                                                        <div class="col">
                                                            <label class="campoobligatorio">*</label><label for="txtValorEnseresEditarPolizaHogar" id="lbValorEnseresEditarPolizaHogar">
                                                                Valor Enseres</label>
                                                            <asp:TextBox ID="txtValorEnseresEditarPolizaHogar" Text="Prueba" name="txtValorEnseresEditarPolizaHogar" runat="server" title="Valor Enseres" placeholder="Ingresa el valor de enseres actuales" type="number" class="form-control" />
                                                            <small id="valorenHelp" class="form-text text-muted">Ingresa el valor estipulado actual de los enseres</small>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Ingresa el valor de los enseres actuales valuados" ControlToValidate="txtValorEnseresEditarPolizaHogar" ForeColor="Red" ValidationGroup="EditarPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                        </div>
                                                    </div>
                                                </asp:Panel>
                                                <asp:Panel ID="panelPyme" runat="server" Visible="False">
                                                    <p class="card-description">
                                                        Descripción Póliza Pyme
                                                    </p>
                                                    <div class="form-group row">
                                                        <div class="col">
                                                            <label class="campoobligatorio">*</label><label for="txtValorAseguradoEditarPolizaPyme" id="lbValorAseguradoEditarPolizaPyme">
                                                                Valor Asegurado</label>
                                                            <asp:TextBox ID="txtValorAseguradoEditarPolizaPyme" Text="Prueba" name="txtValorAseguradoEditarPolizaPyme" runat="server" title="Valor Asegurado" placeholder="Ingresa el valor asegurado" type="number" class="form-control" />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Ingresa el valor a asegurar" ControlToValidate="txtValorAseguradoEditarPolizaPyme" ForeColor="Red" ValidationGroup="EditarPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                        </div>
                                                        <div class="col">
                                                            <label class="campoobligatorio">*</label><label for="txtTipoNegocioEditarPolizaPyme" id="lbTipoNegocioEditarPolizaPyme">
                                                                Tipo de Negocio</label>
                                                            <asp:TextBox ID="txtTipoNegocioEditarPolizaPyme" Text="Prueba" name="txtTipoNegocioEditarPolizaPyme" runat="server" title="Tipo Negocio" TextMode="SingleLine" class="form-control" placeholder="ej. Supermercado de Dulces al detal" />
                                                            <small id="tiponegHelp" class="form-text text-muted">Escribe una breve descripción de la dedicación del negocio</small>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="Ingresa el tipo de negocio" ControlToValidate="txtTipoNegocioEditarPolizaPyme" ForeColor="Red" ValidationGroup="EditarPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col">
                                                            <label class="campoobligatorio">*</label><label for="txtLocalidadEditarPolizaPyme" id="lbLocalidadEditarPolizaPyme">
                                                                Localidad de ubicación del negocio</label>
                                                            <asp:DropDownList ID="listLocalidadEditarPolizaPyme" runat="server" name="listLocalidadEditarPolizaPyme" class="form-control">
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
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="Ingresa la localidad del negocio" ControlToValidate="listLocalidadEditarPolizaPyme" ForeColor="Red" ValidationGroup="EditarPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                        </div>
                                                        <div class="col">
                                                            <label class="campoobligatorio">*</label><label for="txtNombreNegocioEditarPolizaPyme" id="lbNombreNegocioEditarPolizaPyme">
                                                                Razón Social / Nombre del Negocio</label>
                                                            <asp:TextBox ID="txtNombreNegocioEditarPolizaPyme" Text="Prueba" name="txtNombreNegocioEditarPolizaPyme" runat="server" title="Nombre del Negocio" placeholder="Ingresa el nombre del negocio" TextMode="SingleLine" class="form-control" />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="Ingresa el nombre del negocio" ControlToValidate="txtNombreNegocioEditarPolizaPyme" ForeColor="Red" ValidationGroup="EditarPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                        </div>
                                                    </div>
                                                </asp:Panel>
                                                <asp:Panel ID="panelRC" runat="server" Visible="False">
                                                    <p class="card-description">
                                                        Descripción Póliza RC Médica
                                                    </p>
                                                    <div class="form-group row">
                                                        <div class="col">
                                                            <label class="campoobligatorio">*</label><label for="txtFechaNacimientoEditarPolizaRC" id="lbFechaNacimientoEditarPolizaRC">
                                                                Fecha de Nacimiento del Clínico</label>
                                                            <div id="datepicker-popup5" class="input-group date datepicker">
                                                                <asp:TextBox ID="txtFechaNacimientoEditarPolizaRC" Text="Prueba" name="txtFechaNacimientoEditarPolizaRC" runat="server" title="Selecciona una fecha válida" placeholder="Ingresa la fecha de nacimiento" TextMode="SingleLine" class="form-control" />
                                                                <span class="input-group-addon input-group-append border-left">
                                                                    <span class="ti-calendar input-group-text"></span>
                                                                </span>
                                                            </div>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ErrorMessage="Ingresa la fecha de nacimiento del profesional de la salud" ControlToValidate="txtFechaNacimientoEditarPolizaRC" ForeColor="Red" ValidationGroup="EditarPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col">
                                                            <label class="campoobligatorio">*</label><label for="txtTarjetaEditarPolizaRC" id="lbTarjetaEditarPolizaRC">
                                                                Tarjeta Profesional</label>
                                                            <asp:TextBox ID="txtTarjetaEditarPolizaRC" Text="Prueba" name="txtTarjetaEditarPolizaRC" runat="server" title="Tarjeta Profesional" placeholder="Ingresa el número de tarjeta profesional" TextMode="SingleLine" class="form-control" />
                                                            <small id="tarjetaHelp" class="form-text text-muted">Escribe el número de tarjeta profesional</small>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ErrorMessage="Ingresa el número de tarjeta profesional médica" ControlToValidate="txtTarjetaEditarPolizaRC" ForeColor="Red" ValidationGroup="EditarPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                        </div>
                                                        <div class="col">
                                                            <label class="campoobligatorio">*</label><label for="txtFechaExpedicionEditarPolizaRC" id="lbFechaExpedicionEditarPolizaRC">
                                                                Fecha de Expedición de la Tarjeta Profesional</label>
                                                            <div id="datepicker-popup6" class="input-group date datepicker">
                                                                <asp:TextBox ID="txtFechaExpedicionEditarPolizaRC" Text="Prueba" name="txtFechaExpedicionEditarPolizaRC" runat="server" title="Selecciona una fecha válida" placeholder="Ingresa la fecha de expedición" TextMode="SingleLine" class="form-control" />
                                                                <span class="input-group-addon input-group-append border-left">
                                                                    <span class="ti-calendar input-group-text"></span>
                                                                </span>
                                                            </div>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ErrorMessage="Ingresa la fecha de expedición de la tarjeta" ControlToValidate="txtFechaExpedicionEditarPolizaRC" ForeColor="Red" ValidationGroup="EditarPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                        </div>
                                                    </div>
                                                </asp:Panel>
                                                <asp:Panel ID="panelVida" runat="server" Visible="False">
                                                    <p class="card-description">
                                                        Descripción Póliza Vida
                                                    </p>
                                                    <div class="form-group row">
                                                        <div class="col">
                                                            <label class="campoobligatorio">*</label><label for="txtFechaNacimientoEditarPolizaVida" id="lbFechaNacimientoEditarPolizaVida">
                                                                Fecha de Nacimiento del Asegurado</label>
                                                            <div id="datepicker-popup7" class="input-group date datepicker">
                                                                <asp:TextBox ID="txtFechaNacimientoEditarPolizaVida" Text="Prueba" name="txtFechaNacimientoEditarPolizaVida" runat="server" title="Selecciona una fecha válida" placeholder="Ingresa la fecha de nacimiento" TextMode="SingleLine" class="form-control" />
                                                                <span class="input-group-addon input-group-append border-left">
                                                                    <span class="ti-calendar input-group-text"></span>
                                                                </span>
                                                            </div>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ErrorMessage="Ingresa la fecha de nacimiento de la persona a asegurar" ControlToValidate="txtFechaNacimientoEditarPolizaVida" ForeColor="Red" ValidationGroup="EditarPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                        </div>
                                                        <div class="col">
                                                            <label class="campoobligatorio">*</label><label for="txtValorBeneficiarioEditarPolizaVida" id="lbValorBeneficiarioEditarPolizaVida">
                                                                Valor Beneficiario</label>
                                                            <asp:TextBox ID="txtValorBeneficiarioEditarPolizaVida" Text="Prueba" name="txtValorBeneficiarioEditarPolizaVida" runat="server" title="Valor Beneficiario" placeholder="Ingresa el valor beneficiario" type="number" class="form-control" />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ErrorMessage="Ingresa el valor a recibir el beneficiario" ControlToValidate="txtValorBeneficiarioEditarPolizaVida" ForeColor="Red" ValidationGroup="EditarPoliza" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                        </div>
                                                    </div>
                                                </asp:Panel>
                                                <asp:Panel ID="PANELSUBIRPOLIZA" runat="server" Visible="False">
                                                    <div>
                                                        <div class="form-group">
                                                            <div class="card-body">
                                                                <h5 class="text-info">Adjuntar PDF de la Póliza (Opcional)</h5>
                                                                <asp:FileUpload runat="server" ID="FileUpload1" name="FileUpload1" title="Subir Póliza" CssClass="dropify" />
                                                                <asp:Label ID="lbMensaje" runat="server" CssClass="form-text text-muted" Text="El archivo debe ser formato PDF no mayor a 1MB"></asp:Label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </asp:Panel>
                                                <asp:Panel ID="PANELPOLIZASUBIDA" runat="server" Visible="False">
                                                    <div class="form-group">
                                                        <div class="border-bottom py-4">
                                                            <asp:Button ID="btnDescargar" runat="server" class="btn btn-success btn-icon-text ti-download btn-icon-prepend"
                                                                OnClick="btnDescargar_Click" Text="Descargar Póliza"></asp:Button>
                                                            <asp:Label ID="lbNombreArchivo" runat="server" CssClass="form-text text-muted" Text="Poliza"></asp:Label>
                                                        </div>
                                                    </div>
                                                </asp:Panel>
                                                <div style="float: right;">
                                                    <asp:Button ID="btnEditarPoliza" runat="server" class="btn btn-primary" OnClick="btnEditarPoliza_Click" ValidationGroup="EditarPoliza" Text="Guardar Cambios" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="profile-1" role="tabpanel" aria-labelledby="profile-tab">
                                        <asp:UpdatePanel ID="UpdatePanelAccion" runat="server">
                                            <ContentTemplate>
                                                <div class="card">
                                                    <div class="card-body">
                                                        <div class="form-group row">
                                                            <div class="col">
                                                                <h4 class="card-title">Eliminar Póliza del cliente</h4>
                                                                <p class="card-description">
                                                                    Eliminar póliza del sistema
                                                                </p>
                                                                <p>
                                                                    Si la eliminas ningún otro usuario podrá visualizarla.
                                                                </p>
                                                                <br>
                                                                <div>
                                                                    <asp:LinkButton ID="btnDeletePoliza" runat="server" class="btn btn-danger btn-icon-text" OnClick="btnDeletePoliza_Click" OnClientClick="return EliminarPoliza()"><i class="ti-close btn-icon-prepend"></i>Eliminar Póliza</asp:LinkButton>
                                                                </div>
                                                            </div>
                                                            <div class="col">
                                                                <asp:Panel ID="PANELELIMINARPOLIZA" runat="server" Visible="false">
                                                                    <h4 class="card-title">Eliminar Archivo de la póliza</h4>
                                                                    <p class="card-description">
                                                                        Eliminar archivo pdf
                                                                    </p>
                                                                    <p>
                                                                        Se elimina el PDF de la póliza, el cliente ya no podrá descargarla.
                                                                    </p>
                                                                    <br>
                                                                    <div>
                                                                        <asp:LinkButton ID="btnEliminarPoliza" runat="server" class="btn btn-danger btn-icon-text" OnClick="btnEliminarPoliza_Click" OnClientClick="return EliminarArchivo()"><i class="ti-eraser btn-icon-prepend"></i>Eliminar archivo</asp:LinkButton>
                                                                    </div>
                                                                </asp:Panel>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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
    <script type="text/javascript">
        function EliminarPoliza(ctl) {
            var defaultAction = $(ctl).prop("href");
            swal({
                title: "¿Desea eliminar la póliza del sistema?",
                text: "Esta acción no es reversible!",
                icon: "warning",
                buttons: {
                    cancel: {
                        text: "Cancelar",
                        value: null,
                        visible: true,
                        className: "btn btn-light",
                        closeModal: true,
                    },
                    confirm: {
                        text: "Eliminar póliza",
                        value: true,
                        visible: true,
                        className: "btn btn-danger",
                        closeModal: true
                    }
                }
            }).then(function (isConfirm) {
                if (isConfirm) {
                    __doPostBack('<%= btnDeletePoliza.UniqueID %>', "");
                        return true;
                    }
                });
            return false;
        }
    </script>
    <script type="text/javascript">
        function EliminarArchivo(ctl) {
            var defaultAction = $(ctl).prop("href");
            swal({
                title: "¿Desea eliminar el archivo subido?",
                text: "Esta acción no es reversible!",
                icon: "warning",
                buttons: {
                    cancel: {
                        text: "Cancelar",
                        value: null,
                        visible: true,
                        className: "btn btn-light",
                        closeModal: true,
                    },
                    confirm: {
                        text: "Eliminar archivo",
                        value: true,
                        visible: true,
                        className: "btn btn-danger",
                        closeModal: true
                    }
                }
            }).then(function (isConfirm) {
                if (isConfirm) {
                    __doPostBack('<%= btnEliminarPoliza.UniqueID %>', "");
                        return true;
                    }
                });
            return false;
        }
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
    <script src="../../library/dashboardAdmin/js/formpickers.js"></script>
    <script src="../../library/dashboardAdmin/js/form-addons.js"></script>
    <script src="../../library/dashboardAdmin/js/x-editable.js"></script>
    <script src="../../library/dashboardAdmin/js/dropify.js"></script>
    <script src="../../library/dashboardAdmin/js/dropzone.js"></script>
    <script src="../../library/dashboardAdmin/js/jquery-file-upload.js"></script>
    <script src="../../library/dashboardAdmin/js/form-repeater.js"></script>
    <script src="../../library/dashboardAdmin/js/inputmask.js"></script>
    <script src="../../library/dashboardAdmin/js/tabs.js"></script>
    <!-- End custom js for this page-->
</body>


<!-- Mirrored from www.bootstrapdash.com/demo/skydash/template/demo/vertical-default-light/pages/tables/data-table.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 16 Mar 2021 01:57:53 GMT -->
</html>

