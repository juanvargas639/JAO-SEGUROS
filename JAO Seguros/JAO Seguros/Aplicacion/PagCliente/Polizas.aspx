<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Polizas.aspx.cs" Inherits="JAO_Seguros.Aplicacion.PagCliente.Polizas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="es-419">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Cliente JAO Seguros</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../../library/dashboardCliente/vendors/feather/feather.css">
    <link rel="stylesheet" href="../../library/dashboardCliente/vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" href="../../library/dashboardCliente/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="../../library/dashboardCliente/vendors/jquery-bar-rating/css-stars.css">
    <link rel="stylesheet" href="../../library/dashboardCliente/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="../../library/dashboardCliente/css/vertical-layout-light/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="../../library/dashboardCliente/images/favicon.ico" />
</head>

<body>
    <div class="loader-page"></div>
    <form id="FormPolizas" runat="server">
        <div class="container-scroller">
            <!-- partial:../../partials/_navbar.html -->
            <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
                <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
                    <a class="navbar-brand brand-logo mr-5" href="DefaultCliente.aspx">
                        <img
                            src="../../library/dashboardCliente/images/logo.png" class="mr-2" alt="logo" /></a>
                    <a class="navbar-brand brand-logo-mini" href="DefaultCliente.aspx">
                        <img
                            src="../../library/dashboardCliente/images/logo-mini.png" alt="logo" /></a>
                </div>
                <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
                    <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                        <span class="icon-menu"></span>
                    </button>
                    <ul class="navbar-nav navbar-nav-right">
                        <li class="nav-item nav-profile dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
                                <img src="../../library/dashboardCliente/images/perfil.png" alt="profile" />
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
                    <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button"
                        data-toggle="offcanvas">
                        <span class="icon-menu"></span>
                    </button>
                </div>
            </nav>
            <!-- partial -->
            <div class="container-fluid page-body-wrapper">
                <!-- partial:../../partials/_sidebar.html -->
                <nav class="sidebar sidebar-offcanvas" id="sidebar">
                    <ul class="nav">
                        <li class="nav-item">
                            <a class="nav-link" href="DefaultCliente.aspx">
                                <i class="icon-grid menu-icon"></i>
                                <span class="menu-title">Inicio</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Polizas.aspx">
                                <i class="icon-lock menu-icon"></i>
                                <span class="menu-title">Mis Seguros</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Reportes.aspx">
                                <i class="icon-star menu-icon"></i>
                                <span class="menu-title">Mis Reportes</span>
                            </a>
                        </li>
                    </ul>
                </nav>
                <!-- partial -->
                <div class="main-panel">
                    <div class="content-wrapper">
                        <div class="card">
                            <div class="card-body">
                                <div class="dropdown" style="float: right;">
                                    <asp:DropDownList ID="listTipo" CssClass="select-css btn btn-primary"  runat="server" AutoPostBack="True" OnSelectedIndexChanged="listTipo_SelectedIndexChanged" style="width: 15em;">
                                        <asp:ListItem>Selecciona una Póliza</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <h3 class="card-title text-primary">Mis pólizas activas en JAO Seguros</h3>
                                <br>
                                <!--INICIO CARTA PRINCIPAL-->
                                <asp:Panel ID="PANELDEFAULT" runat="server">
                                    <div class="row">
                                        <div class="col-md-7 grid-margin grid-margin-md-0 stretch-card">
                                            <div class="card">
                                                <div class="card-body">
                                                    <div class="ml-4">
                                                        <p>
                                                            Consulta el estado de tus pólizas y descarga el PDF de ellas. Crea reportes si tienes una
                          sugerencia, petición o reclamo que deseas comunicar al asesor.
                                                        </p>
                                                        <img src="../../library/dashboardCliente/images/hola.svg" alt="sample" class="rounded mw-100" />
                                                        <p class="small text-muted mt-2 mb-0">
                                                            <span>
                                                                <i class="ti-star mr-1"></i>4
                                                            </span>
                                                            <span class="ml-2">
                                                                <i class="ti-comment mr-1"></i>11
                                                            </span>
                                                            <span class="ml-2">
                                                                <i class="ti-share"></i>
                                                            </span>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-5 grid-margin grid-margin-md-0 stretch-card">
                                            <div class="card">
                                                <div class="card-body text-center">
                                                    <div>
                                                        <img src="../../library/dashboardCliente/images/perfil.png"
                                                            class="img-lg rounded-circle mb-2" alt="profile image" />
                                                        <h4>
                                                            <asp:Label ID="lbNombreCliente" runat="server" Text="Perfil"></asp:Label></h4>
                                                        <p class="text-muted mb-0">Cliente</p>
                                                    </div>
                                                    <p class="mt-2 card-text">
                                                        Tus pólizas están registradas con tu
                                                    <asp:Label ID="lbTipoDocumentoCliente" runat="server" Text="Perfil"></asp:Label>
                                                        de número
                        <asp:Label ID="lbNumeroDocumentoCliente" runat="server" Text="Perfil"></asp:Label>.
                                                    </p>
                                                    <asp:Button ID="btnCrearReporte1" runat="server" class="btn btn-danger btn-sm mt-3 mb-4" Text="Notificar error de datos"></asp:Button>
                                                    <div class="border-top pt-3">
                                                        <div class="row">
                                                            <div class="col-6">
                                                                <h6>
                                                                    <asp:Label ID="lbNumeroPolizas" runat="server" Text="Perfil"></asp:Label></h6>
                                                                <p>Pólizas Activas</p>
                                                            </div>
                                                            <div class="col-6">
                                                                <h6>
                                                                    <asp:Label ID="lbNumeroReportes" runat="server" Text="Perfil"></asp:Label></h6>
                                                                <p>Reportes Activos</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </asp:Panel>
                                <!--FIN CARTA PRINCIPAL-->
                                <!--INICIO CARTA VEHICULAR-->
                                <asp:Panel ID="PANELVEHICULAR" runat="server" Visible="false">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <div class="border-bottom text-center pb-4">
                                                        <img src="../../library/dashboardCliente/images/Auto.svg" alt="profile"
                                                            class="img-lg rounded-circle mb-3" />
                                                        <div class="mb-3">
                                                            <h3>Póliza Vehicular</h3>
                                                            <h4>
                                                                <asp:Label ID="lbCodigoPolizaVehicular" runat="server" Text="Perfil"></asp:Label></h4>
                                                            <div class="d-flex align-items-center justify-content-center">
                                                                <select id="profile-rating" name="rating">
                                                                    <option value="1">1</option>
                                                                    <option value="2">2</option>
                                                                    <option value="3">3</option>
                                                                    <option value="4">4</option>
                                                                    <option selected value="5">5</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <p class="w-75 mx-auto mb-3">
                                                            Tu vehículo y tu familia esta protegida con el seguro contra todo
                          riesgo.
                                                        </p>
                                                        <div class="d-flex justify-content-center">
                                                        </div>
                                                    </div>
                                                    <div class="border-bottom py-4">
                                                        <h4>Cobertura de tu Seguro!</h4>
                                                        <p class="card-description">
                                                            Vence el <code>
                                                                <asp:Label ID="lbFechaFVehicular" runat="server" Text="Perfil"></asp:Label></code>
                                                        </p>
                                                        <div class="template-demo">
                                                            <div class="progress progress-md">
                                                                <div class="progress-bar bg-primary progress-bar-striped progress-bar-animated"
                                                                    role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0"
                                                                    aria-valuemax="100">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="py-4">
                                                        <p class="clearfix">
                                                            <span class="float-left">Estado del Seguro
                                                            </span>
                                                            <span class="float-right text-muted">
                                                                <label runat="server" id="lbEstadoFeed">Activo</label>
                                                            </span>
                                                        </p>
                                                        <p class="clearfix">
                                                            <span class="float-left">Cliente
                                                            </span>
                                                            <span class="float-right text-muted">
                                                                <asp:Label ID="lbNombreClienteVehicular" runat="server" Text="Perfil"></asp:Label>
                                                            </span>
                                                        </p>
                                                        <p class="clearfix">
                                                            <span class="float-left">Inicio Cobertura
                                                            </span>
                                                            <span class="float-right text-muted">
                                                                <asp:Label ID="lbFechaIVehicular" runat="server" Text="Perfil"></asp:Label>
                                                            </span>
                                                        </p>
                                                        <p class="clearfix">
                                                            <span class="float-left">Fecha de Expedición
                                                            </span>
                                                            <span class="float-right text-muted">
                                                                <asp:Label ID="lbFechaEVehicular" runat="server" Text="Perfil"></asp:Label>
                                                            </span>
                                                        </p>
                                                        <p class="clearfix">
                                                            <span class="float-left">Tipo de Pago
                                                            </span>
                                                            <span class="float-right text-muted">
                                                                <asp:Label ID="lbTipoPagoVehicular" runat="server" Text="Perfil"></asp:Label>
                                                            </span>
                                                        </p>
                                                    </div>
                                                    <!--INICIO CARTA BOTON DESCARGAR-->
                                                    <asp:Panel ID="PANELBOTONVEHICULAR" runat="server" Visible="false">
                                                        <div class="border-bottom py-4">
                                                            <asp:LinkButton ID="btnDescargarVehicular" runat="server" class="btn btn-success btn-block btn-icon-text mb-2"
                                                                 OnClick="btnDescargarVehicular_Click"><i class="ti-download btn-icon-prepend"></i>Descargar Póliza</asp:LinkButton>
                                                            <asp:Label ID="lbNombreArchivoVehicular" runat="server" Text="" Visible="false"></asp:Label>
                                                        </div>
                                                    </asp:Panel>
                                                    <asp:Panel ID="PANELSINBOTONVEHICULAR" runat="server" Visible="false">
                                                        <div class="border-bottom py-4">
                                                            <div class="card-body text-center">
                                                                <p class="mt-2 card-text">
                                                                    Actualmente no tienes disponible la póliza para la descarga
                                                                </p>
                                                                <small class="text-muted">Inténtalo más tarde nuevamente!
                                                                </small>
                                                            </div>
                                                        </div>
                                                    </asp:Panel>
                                                    <!--FIN CARTA BOTON DESCARGAR-->
                                                </div>
                                                <br>
                                                <div class="col-lg-8">
                                                    <div class="d-block d-md-flex justify-content-between mt-4 mt-md-0">
                                                        <div class="text-center mt-4 mt-md-0">
                                                            <a class="btn btn-outline-primary" href="Reportes.aspx" >Crear Reporte!</a>
                                                        </div>
                                                    </div>
                                                    <div class="mt-4 py-2 border-top border-bottom">
                                                        <ul class="nav profile-navbar">
                                                            <li class="nav-item">
                                                                <a class="nav-link" href="#" data-toggle="modal" data-target="#modal-vehicular">
                                                                    <i class="ti-car"></i>
                                                                    Información Seguro
                                                                </a>
                                                            </li>
                                                            <li class="nav-item">
                                                                <a class="nav-link" href="#" data-toggle="modal" data-target="#modal-asesor">
                                                                    <i class="ti-agenda"></i>
                                                                    Datos de mi Asesor
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="profile-feed">
                                                        <!--INICIO CARTA ACTORES-->
                                                        <div class="d-flex align-items-start profile-feed-item">
                                                            <asp:Panel ID="PANELTOMADORVEHICULAR" runat="server" Visible="false">
                                                                <div class="ml-4">
                                                                    <h5>Tomador
                                                                    </h5>
                                                                    <p>
                                                                        <asp:Label ID="lbNombreTomadorVehicular" runat="server" Text="Perfil"></asp:Label><br>
                                                                        N° Documento:<asp:Label ID="lbDocumentoTomadorVehicular" runat="server" Text="Perfil"></asp:Label>
                                                                    </p>
                                                                </div>
                                                            </asp:Panel>
                                                            <asp:Panel ID="PANELBENEFICIARIOVEHICULAR" runat="server" Visible="false">
                                                                <div class="ml-4">
                                                                    <h5>Beneficiario
                                                                    </h5>
                                                                    <p>
                                                                        <asp:Label ID="lbNombreBeneficiarioVehicular" runat="server" Text="Perfil"></asp:Label><br>
                                                                        N° Documento:<asp:Label ID="lbDocumentoBeneficiarioVehicular" runat="server" Text="Perfil"></asp:Label>
                                                                    </p>
                                                                </div>
                                                            </asp:Panel>
                                                            <asp:Panel ID="PANELASEGURADOVEHICULAR" runat="server" Visible="false">
                                                                <div class="ml-4">
                                                                    <h5>Asegurado
                                                                    </h5>
                                                                    <p>
                                                                        <asp:Label ID="lbNombreAseguradoVehicular" runat="server" Text="Perfil"></asp:Label><br>
                                                                        N° Documento:<asp:Label ID="lbDocumentoAseguradoVehicular" runat="server" Text="Perfil"></asp:Label>
                                                                    </p>
                                                                </div>
                                                            </asp:Panel>
                                                        </div>
                                                        <!--FIN CARTA ACTORES-->
                                                        <div class="d-flex align-items-start profile-feed-item">
                                                            <div class="ml-4">
                                                                <h6>
                                                                    <asp:Label ID="lbTipoAutoVehicular" runat="server" Text="Perfil"></asp:Label>
                                                                    <small class="ml-1 text-muted"><i class="ti-lock mr-1"></i></small>
                                                                </h6>
                                                                <img src="../../library/dashboardCliente/images/Auto2.svg" alt="sample"
                                                                    class="rounded mw-100" />
                                                                <p class="small text-muted mt-2 mb-0">
                                                                    <span>
                                                                        <i class="ti-star mr-1"></i>5
                                                                    </span>
                                                                </p>
                                                            </div>
                                                            <div class="ml-4">
                                                                <h5>Fecha de Nacimiento del Propietario
                                                                </h5>
                                                                <p>
                                                                    <asp:Label ID="lbFechaNacimientoVehicular" runat="server" Text="Perfil"></asp:Label><br>
                                                                </p>
                                                                <h5>Placas del Vehículo
                                                                </h5>
                                                                <p>
                                                                    <asp:Label ID="lbPlacasVehicular" runat="server" Text="Perfil"></asp:Label><br>
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div class="d-flex align-items-start profile-feed-item">
                                                            <img src="../../library/dashboardCliente/images/estrella.png" alt="profile"
                                                                class="img-sm rounded-circle" />
                                                            <div class="ml-4">
                                                                <h4>Proveedor de tu Seguro!
                              <small class="ml-4 text-muted"><i class="ti-lock mr-1"></i>
                                  <asp:Label ID="lbNitAseguradoraVehicular" runat="server" Text="Perfil"></asp:Label></small>
                                                                </h4>
                                                                <h5>
                                                                    <asp:Label ID="lbNombreAseguradoraVehicular" runat="server" Text="Perfil"></asp:Label></h5>
                                                                <h5>Dirección de Atención</h5>
                                                                <asp:Label ID="lbDireccionAseguradoraVehicular" runat="server" Text="Perfil"></asp:Label>
                                                                <h5>Teléfono de Atención</h5>
                                                                <asp:Label ID="lbTelefonoAseguradoraVehicular" runat="server" Text="Perfil"></asp:Label>
                                                                <h5>Correo de Atención</h5>
                                                                <asp:Label ID="lbCorreoAseguradoraVehicular" runat="server" Text="Perfil"></asp:Label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </asp:Panel>
                                <!--INICIO CARTA ESTUDIANTIL-->
                                <asp:Panel ID="PANELESTUDIANTIL" runat="server" Visible="false">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <div class="border-bottom text-center pb-4">
                                                        <img src="../../library/dashboardCliente/images/Estudiante.svg" alt="profile"
                                                            class="img-lg rounded-circle mb-3" />
                                                        <div class="mb-3">
                                                            <h3>Póliza Estudiantil</h3>
                                                            <h4>
                                                                <asp:Label ID="lbCodigoPolizaEstudiantil" runat="server" Text="Perfil"></asp:Label></h4>
                                                            <div class="d-flex align-items-center justify-content-center">
                                                                <select id="profile-rating2" name="rating">
                                                                    <option value="1">1</option>
                                                                    <option value="2">2</option>
                                                                    <option value="3">3</option>
                                                                    <option value="4">4</option>
                                                                    <option selected value="5">5</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <p class="w-75 mx-auto mb-3">Asegura el futuro de tus hijos, el día de hoy </p>
                                                        <div class="d-flex justify-content-center">
                                                        </div>
                                                    </div>
                                                    <div class="border-bottom py-4">
                                                        <h4>Cobertura de tu Seguro!</h4>
                                                        <p class="card-description">
                                                            Vence el <code>
                                                                <asp:Label ID="lbFechaFEstudiantil" runat="server" Text="Perfil"></asp:Label></code>
                                                        </p>
                                                        <div class="template-demo">
                                                            <div class="progress progress-md">
                                                                <div class="progress-bar bg-primary progress-bar-striped progress-bar-animated"
                                                                    role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0"
                                                                    aria-valuemax="100">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="py-4">
                                                        <p class="clearfix">
                                                            <span class="float-left">Estado del Seguro
                                                            </span>
                                                            <span class="float-right text-muted">
                                                                <label runat="server" id="Label2">Activo</label>
                                                            </span>
                                                        </p>
                                                        <p class="clearfix">
                                                            <span class="float-left">Cliente
                                                            </span>
                                                            <span class="float-right text-muted">
                                                                <asp:Label ID="lbNombreClienteEstudiantil" runat="server" Text="Perfil"></asp:Label>
                                                            </span>
                                                        </p>
                                                        <p class="clearfix">
                                                            <span class="float-left">Inicio Cobertura
                                                            </span>
                                                            <span class="float-right text-muted">
                                                                <asp:Label ID="lbFechaIEstudiantil" runat="server" Text="Perfil"></asp:Label>
                                                            </span>
                                                        </p>
                                                        <p class="clearfix">
                                                            <span class="float-left">Fecha de Expedición
                                                            </span>
                                                            <span class="float-right text-muted">
                                                                <asp:Label ID="lbFechaeEstudiantil" runat="server" Text="Perfil"></asp:Label>
                                                            </span>
                                                        </p>
                                                        <p class="clearfix">
                                                            <span class="float-left">Tipo de Pago
                                                            </span>
                                                            <span class="float-right text-muted">
                                                                <asp:Label ID="lbTipoPagoEstudiantil" runat="server" Text="Perfil"></asp:Label>
                                                            </span>
                                                        </p>
                                                    </div>
                                                    <!--INICIO BOTON DESCARGAR-->
                                                    <asp:Panel ID="PANELBOTONESTUDIANTIL" runat="server" Visible="false">
                                                        <div class="border-bottom py-4">
                                                            <asp:LinkButton ID="btnDescargarEstudiantil" runat="server" class="btn btn-success btn-block btn-icon-text mb-2"
                                                                 OnClick="btnDescargarEstudiantil_Click"><i class="ti-download btn-icon-prepend"></i>Descargar Póliza</asp:LinkButton>
                                                            <asp:Label ID="lbNombreArchivoEstudiantil" runat="server" Text="" Visible="false"></asp:Label>
                                                        </div>
                                                    </asp:Panel>
                                                    <asp:Panel ID="PANELSINBOTONESTUDIANTIL" runat="server" Visible="false">
                                                        <div class="border-bottom py-4">
                                                            <div class="card-body text-center">
                                                                <p class="mt-2 card-text">
                                                                    Actualmente no tienes disponible la póliza para la descarga
                                                                </p>
                                                                <small class="text-muted">Inténtalo más tarde nuevamente!
                                                                </small>
                                                            </div>
                                                        </div>
                                                    </asp:Panel>
                                                    <!--FIN BOTON DESCARGAR-->
                                                </div>
                                                <br>
                                                <div class="col-lg-8">
                                                    <div class="d-block d-md-flex justify-content-between mt-4 mt-md-0">
                                                        <div class="text-center mt-4 mt-md-0">
                                                            <a class="btn btn-outline-primary" href="Reportes.aspx" >Crear Reporte!</a>
                                                        </div>
                                                    </div>
                                                    <div class="mt-4 py-2 border-top border-bottom">
                                                        <ul class="nav profile-navbar">
                                                            <li class="nav-item">
                                                                <a class="nav-link" href="#" data-toggle="modal" data-target="#modal-estudiantil">
                                                                    <i class="ti-ruler"></i>
                                                                    Información Seguro
                                                                </a>
                                                            </li>
                                                            <li class="nav-item">
                                                                <a class="nav-link" href="#" data-toggle="modal" data-target="#modal-asesor">
                                                                    <i class="ti-agenda"></i>
                                                                    Datos de mi Asesor
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="profile-feed">
                                                        <!--INICIO CARTA ACTORES-->
                                                        <div class="d-flex align-items-start profile-feed-item">
                                                            <asp:Panel ID="PANELTOMADORESTUDIANTIL" runat="server" Visible="false">
                                                                <div class="ml-4">
                                                                    <h5>Tomador
                                                                    </h5>
                                                                    <p>
                                                                        <asp:Label ID="lbNombreTomadorEstudiantil" runat="server" Text="Perfil"></asp:Label><br>
                                                                        N° Documento:<asp:Label ID="lbDocumentoTomadorEstudiantil" runat="server" Text="Perfil"></asp:Label>
                                                                    </p>
                                                                </div>
                                                            </asp:Panel>
                                                            <asp:Panel ID="PANELBENEFICIARIOESTUDIANTIL" runat="server" Visible="false">
                                                                <div class="ml-4">
                                                                    <h5>Beneficiario
                                                                    </h5>
                                                                    <p>
                                                                        <asp:Label ID="lbNombreBeneficiarioEstudiantil" runat="server" Text="Perfil"></asp:Label><br>
                                                                        N° Documento:<asp:Label ID="lbDocumentoBeneficiarioEstudiantil" runat="server" Text="Perfil"></asp:Label>
                                                                    </p>
                                                                </div>
                                                            </asp:Panel>
                                                            <asp:Panel ID="PANELASEGURADOESTUDIANTIL" runat="server" Visible="false">
                                                                <div class="ml-4">
                                                                    <h5>Asegurado
                                                                    </h5>
                                                                    <p>
                                                                        <asp:Label ID="lbNombreAseguradoEstudiantil" runat="server" Text="Perfil"></asp:Label><br>
                                                                        N° Documento:<asp:Label ID="lbDocumentoAseguradoEstudiantil" runat="server" Text="Perfil"></asp:Label>
                                                                    </p>
                                                                </div>
                                                            </asp:Panel>
                                                        </div>
                                                        <!--FIN CARTA ACTORES-->
                                                        <div class="d-flex align-items-start profile-feed-item">
                                                            <div class="ml-4">
                                                                <h6>
                                                                    <asp:Label ID="lbInstitucionEstudiantil" runat="server" Text="Perfil"></asp:Label>
                                                                    <small class="ml-1 text-muted"><i class="ti-lock mr-1"></i></small>
                                                                </h6>
                                                                <img src="../../library/dashboardCliente/images/Estudiante2.svg" alt="sample"
                                                                    class="rounded mw-100" />
                                                            </div>
                                                            <div class="ml-4">
                                                                <h5>Fecha de Nacimiento del Estudiante
                                                                </h5>
                                                                <p>
                                                                    <asp:Label ID="lbFechaNacimientoEstudiantil" runat="server" Text="Perfil"></asp:Label><br>
                                                                </p>
                                                                <h5>Año Cursado
                                                                </h5>
                                                                <p>
                                                                    <asp:Label ID="lbAnuarioCursadoEstudiantil" runat="server" Text="Perfil"></asp:Label><br>
                                                                </p>
                                                                <h5>Semestre o Curso
                                                                </h5>
                                                                <p>
                                                                    <asp:Label ID="lbSemestreCursoEstudiantil" runat="server" Text="Perfil"></asp:Label>
                                                                    <br>
                                                                </p>
                                                            </div>

                                                        </div>
                                                        <div class="d-flex align-items-start profile-feed-item">
                                                            <img src="../../library/dashboardCliente/images/estrella.png" alt="profile"
                                                                class="img-sm rounded-circle" />
                                                            <div class="ml-4">
                                                                <h4>Proveedor de tu Seguro!
                              <small class="ml-4 text-muted"><i class="ti-lock mr-1"></i>
                                  <asp:Label ID="lbNitAseguradoraEstudiantil" runat="server" Text="Perfil"></asp:Label></small>
                                                                </h4>
                                                                <h5>
                                                                    <asp:Label ID="lbNombreAseguradoraEstudiantil" runat="server" Text="Perfil"></asp:Label></h5>
                                                                <h5>Dirección de Atención</h5>
                                                                <asp:Label ID="lbDireccionAseguradoraEstudiantil" runat="server" Text="Perfil"></asp:Label>
                                                                <h5>Teléfono de Atención</h5>
                                                                <asp:Label ID="lbTelefonoAseguradoraEstudiantil" runat="server" Text="Perfil"></asp:Label>
                                                                <h5>Correo de Atención</h5>
                                                                <asp:Label ID="lbCorreoAseguradoraEstudiantil" runat="server" Text="Perfil"></asp:Label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </asp:Panel>
                                <!--INICIO CARTA HOGAR-->
                                <asp:Panel ID="PANELHOGAR" runat="server" Visible="false">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <div class="border-bottom text-center pb-4">
                                                        <img src="../../library/dashboardCliente/images/Hogar.svg" alt="profile"
                                                            class="img-lg rounded-circle mb-3" />
                                                        <div class="mb-3">
                                                            <h3>Póliza Hogar</h3>
                                                            <h4>
                                                                <asp:Label ID="lbCodigoPolizaHogar" runat="server" Text="Perfil"></asp:Label></h4>
                                                            <div class="d-flex align-items-center justify-content-center">
                                                                <select id="profile-rating3" name="rating">
                                                                    <option value="1">1</option>
                                                                    <option value="2">2</option>
                                                                    <option value="3">3</option>
                                                                    <option value="4">4</option>
                                                                    <option selected value="5">5</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <p class="w-75 mx-auto mb-3">
                                                            Protege el lugar en el que vives, y todos los enseres que tienes.
                                                        </p>
                                                        <div class="d-flex justify-content-center">
                                                        </div>
                                                    </div>
                                                    <div class="border-bottom py-4">
                                                        <h4>Cobertura de tu Seguro!</h4>
                                                        <p class="card-description">
                                                            Vence el <code>
                                                                <asp:Label ID="lbFechaFHogar" runat="server" Text="Perfil"></asp:Label></code>
                                                        </p>
                                                        <div class="template-demo">
                                                            <div class="progress progress-md">
                                                                <div class="progress-bar bg-primary progress-bar-striped progress-bar-animated"
                                                                    role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0"
                                                                    aria-valuemax="100">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="py-4">
                                                        <p class="clearfix">
                                                            <span class="float-left">Estado del Seguro
                                                            </span>
                                                            <span class="float-right text-muted">
                                                                <label runat="server" id="Label19">Activo</label>
                                                            </span>
                                                        </p>
                                                        <p class="clearfix">
                                                            <span class="float-left">Cliente
                                                            </span>
                                                            <span class="float-right text-muted">
                                                                <asp:Label ID="lbNombreClienteHogar" runat="server" Text="Perfil"></asp:Label>
                                                            </span>
                                                        </p>
                                                        <p class="clearfix">
                                                            <span class="float-left">Inicio Cobertura
                                                            </span>
                                                            <span class="float-right text-muted">
                                                                <asp:Label ID="lbFechaIHogar" runat="server" Text="Perfil"></asp:Label>
                                                            </span>
                                                        </p>
                                                        <p class="clearfix">
                                                            <span class="float-left">Fecha de Expedición
                                                            </span>
                                                            <span class="float-right text-muted">
                                                                <asp:Label ID="lbFechaEHogar" runat="server" Text="Perfil"></asp:Label>
                                                            </span>
                                                        </p>
                                                        <p class="clearfix">
                                                            <span class="float-left">Tipo de Pago
                                                            </span>
                                                            <span class="float-right text-muted">
                                                                <asp:Label ID="lbTipoPagoHogar" runat="server" Text="Perfil"></asp:Label>
                                                            </span>
                                                        </p>
                                                    </div>
                                                    <!--INICIO CARTA SIN BOTON POLIZA-->
                                                    <asp:Panel ID="PANELSINBOTONHOGAR" runat="server" Visible="false">
                                                        <div class="border-bottom py-4">
                                                            <div class="card-body text-center">
                                                                <p class="mt-2 card-text">
                                                                    Actualmente no tienes disponible la póliza para la descarga
                                                                </p>
                                                                <small class="text-muted">Inténtalo más tarde nuevamente!
                                                                </small>
                                                            </div>
                                                        </div>
                                                    </asp:Panel>
                                                    <asp:Panel ID="PANELBOTONHOGAR" runat="server" Visible="false">
                                                        <div class="border-bottom py-4">
                                                            <asp:LinkButton ID="btnDescargarHogar" runat="server" class="btn btn-success btn-block btn-icon-text mb-2"
                                                                OnClick="btnDescargarHogar_Click"><i class="ti-download btn-icon-prepend"></i>Descargar Póliza</asp:LinkButton>
                                                            <asp:Label ID="lbNombreArchivoHogar" runat="server" Text="Poliza" Visible="false"></asp:Label>
                                                        </div>
                                                    </asp:Panel>
                                                    <!--FIN CARTA POLIZA-->
                                                </div>
                                                <br>
                                                <div class="col-lg-8">
                                                    <div class="d-block d-md-flex justify-content-between mt-4 mt-md-0">
                                                        <div class="text-center mt-4 mt-md-0">
                                                            <a class="btn btn-outline-primary" href="Reportes.aspx" >Crear Reporte!</a>
                                                        </div>
                                                    </div>
                                                    <div class="mt-4 py-2 border-top border-bottom">
                                                        <ul class="nav profile-navbar">
                                                            <li class="nav-item">
                                                                <a class="nav-link" href="#" data-toggle="modal" data-target="#modal-hogar">
                                                                    <i class="ti-home"></i>
                                                                    Información Seguro
                                                                </a>
                                                            </li>
                                                            <li class="nav-item">
                                                                <a class="nav-link" href="#" data-toggle="modal" data-target="#modal-asesor">
                                                                    <i class="ti-agenda"></i>
                                                                    Datos de mi Asesor
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="profile-feed">
                                                        <!--INICIO CARTA ACTORES-->
                                                        <div class="d-flex align-items-start profile-feed-item">
                                                            <asp:Panel ID="PANELTOMADORHOGAR" runat="server" Visible="false">
                                                                <div class="ml-4">
                                                                    <h5>Tomador
                                                                    </h5>
                                                                    <p>
                                                                        <asp:Label ID="lbNombreTomadorHogar" runat="server" Text="Perfil"></asp:Label><br>
                                                                        N° Documento:<asp:Label ID="lbDocumentoTomadorHogar" runat="server" Text="Perfil"></asp:Label>
                                                                    </p>
                                                                </div>
                                                            </asp:Panel>
                                                            <asp:Panel ID="PANELBENEFICIARIOHOGAR" runat="server" Visible="false">
                                                                <div class="ml-4">
                                                                    <h5>Beneficiario
                                                                    </h5>
                                                                    <p>
                                                                        <asp:Label ID="lbNombreBeneficiarioHogar" runat="server" Text="Perfil"></asp:Label><br>
                                                                        N° Documento:<asp:Label ID="lbDocumentoBeneficiarioHogar" runat="server" Text="Perfil"></asp:Label>
                                                                    </p>
                                                                </div>
                                                            </asp:Panel>
                                                            <asp:Panel ID="PANELASEGURADOHOGAR" runat="server" Visible="false">
                                                                <div class="ml-4">
                                                                    <h5>Asegurado
                                                                    </h5>
                                                                    <p>
                                                                        <asp:Label ID="lbNombreAseguradoHogar" runat="server" Text="Perfil"></asp:Label><br>
                                                                        N° Documento:<asp:Label ID="lbDocumentoAseguradoHogar" runat="server" Text="Perfil"></asp:Label>
                                                                    </p>
                                                                </div>
                                                            </asp:Panel>
                                                        </div>
                                                        <!--FIN CARTA ACTORES-->
                                                        <div class="d-flex align-items-start profile-feed-item">
                                                            <div class="ml-4">
                                                                <h6>
                                                                    <asp:Label ID="lbLocalidadHogar" runat="server" Text="Perfil"></asp:Label><small
                                                                        class="text-muted">
                                Localidad de Ubicación
                                                                    </small>
                                                                    <small class="ml-1 text-muted"><i class="ti-lock mr-1"></i></small>
                                                                </h6>
                                                                <img src="../../library/dashboardCliente/images/Hogar2.svg" alt="sample"
                                                                    class="rounded mw-100" />
                                                            </div>
                                                            <div class="ml-4">
                                                                <h5>Fecha de Nacimiento del Propietario
                                                                </h5>
                                                                <p>
                                                                    <asp:Label ID="lbFechaNacimientoHogar" runat="server" Text="Perfil"></asp:Label>
                                                                </p>
                                                                <h5>Valor Enseres Actuales
                                                                </h5>
                                                                <p>
                                                                    $
                              <asp:Label ID="lbValorEnseresHogar" runat="server" Text="Perfil"></asp:Label>&nbsp;COP
                                                                </p>
                                                                <h5>Valor Construcción
                                                                </h5>
                                                                <p>
                                                                    $
                              <asp:Label ID="lbValorConstruccionHogar" runat="server" Text="Perfil"></asp:Label>
                                                                    &nbsp;COP
                                                                </p>
                                                            </div>

                                                        </div>
                                                        <div class="d-flex align-items-start profile-feed-item">
                                                            <img src="../../library/dashboardCliente/images/estrella.png" alt="profile"
                                                                class="img-sm rounded-circle" />
                                                            <div class="ml-4">
                                                                <h4>Proveedor de tu Seguro!
                              <small class="ml-4 text-muted"><i class="ti-lock mr-1"></i>
                                  <asp:Label ID="lbNitAseguradoraHogar" runat="server" Text="Perfil"></asp:Label></small>
                                                                </h4>
                                                                <h5>
                                                                    <asp:Label ID="lbNombreAseguradoraHogar" runat="server" Text="Perfil"></asp:Label></h5>
                                                                <h5>Dirección de Atención</h5>
                                                                <asp:Label ID="lbDireccionAseguradoraHogar" runat="server" Text="Perfil"></asp:Label>
                                                                <h5>Teléfono de Atención</h5>
                                                                <asp:Label ID="lbTelefonoAseguradoraHogar" runat="server" Text="Perfil"></asp:Label>
                                                                <h5>Correo de Atención</h5>
                                                                <asp:Label ID="lbCorreoAseguradoraHogar" runat="server" Text="Perfil"></asp:Label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </asp:Panel>
                                <!--INICIO CARTA PYME-->
                                <asp:Panel ID="PANELPYME" runat="server" Visible="false">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <div class="border-bottom text-center pb-4">
                                                        <img src="../../library/dashboardCliente/images/Pyme.svg" alt="profile"
                                                            class="img-lg rounded-circle mb-3" />
                                                        <div class="mb-3">
                                                            <h3>Póliza Pyme</h3>
                                                            <h4>
                                                                <asp:Label ID="lbCodigoPolizaPyme" runat="server" Text="Perfil"></asp:Label></h4>
                                                            <div class="d-flex align-items-center justify-content-center">
                                                                <select id="profile-rating4" name="rating">
                                                                    <option value="1">1</option>
                                                                    <option value="2">2</option>
                                                                    <option value="3">3</option>
                                                                    <option value="4">4</option>
                                                                    <option selected value="5">5</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <p class="w-75 mx-auto mb-3">Protege las pequeñas y medianas empresas ante los riesgos. </p>
                                                        <div class="d-flex justify-content-center">
                                                        </div>
                                                    </div>
                                                    <div class="border-bottom py-4">
                                                        <h4>Cobertura de tu Seguro!</h4>
                                                        <p class="card-description">
                                                            Vence el <code>
                                                                <asp:Label ID="lbFechaFPyme" runat="server" Text="Perfil"></asp:Label></code>
                                                        </p>
                                                        <div class="template-demo">
                                                            <div class="progress progress-md">
                                                                <div class="progress-bar bg-primary progress-bar-striped progress-bar-animated"
                                                                    role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0"
                                                                    aria-valuemax="100">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="py-4">
                                                        <p class="clearfix">
                                                            <span class="float-left">Estado del Seguro
                                                            </span>
                                                            <span class="float-right text-muted">
                                                                <label runat="server" id="Label36">Activo</label>
                                                            </span>
                                                        </p>
                                                        <p class="clearfix">
                                                            <span class="float-left">Cliente
                                                            </span>
                                                            <span class="float-right text-muted">
                                                                <asp:Label ID="lbNombreClientePyme" runat="server" Text="Perfil"></asp:Label>
                                                            </span>
                                                        </p>
                                                        <p class="clearfix">
                                                            <span class="float-left">Inicio Cobertura
                                                            </span>
                                                            <span class="float-right text-muted">
                                                                <asp:Label ID="lbFechaIPyme" runat="server" Text="Perfil"></asp:Label>
                                                            </span>
                                                        </p>
                                                        <p class="clearfix">
                                                            <span class="float-left">Fecha de Expedición
                                                            </span>
                                                            <span class="float-right text-muted">
                                                                <asp:Label ID="lbFechaEPyme" runat="server" Text="Perfil"></asp:Label>
                                                            </span>
                                                        </p>
                                                        <p class="clearfix">
                                                            <span class="float-left">Tipo de Pago
                                                            </span>
                                                            <span class="float-right text-muted">
                                                                <asp:Label ID="lbTipoPagoPyme" runat="server" Text="Perfil"></asp:Label>
                                                            </span>
                                                        </p>
                                                    </div>
                                                    <!--INICIO CARTA SIN BOTON-->
                                                    <asp:Panel ID="PANELSINBOTONPYME" runat="server" Visible="false">
                                                        <div class="border-bottom py-4">
                                                            <div class="card-body text-center">
                                                                <p class="mt-2 card-text">
                                                                    Actualmente no tienes disponible la póliza para la descarga
                                                                </p>
                                                                <small class="text-muted">Inténtalo más tarde nuevamente!
                                                                </small>
                                                            </div>
                                                        </div>
                                                    </asp:Panel>
                                                    <asp:Panel ID="PANELBOTONPYME" runat="server" Visible="false">
                                                        <div class="border-bottom py-4">
                                                            <asp:LinkButton ID="btnDescargarPyme" runat="server" class="btn btn-success btn-block btn-icon-text mb-2"
                                                                 OnClick="btnDescargarPyme_Click"><i class="ti-download btn-icon-prepend"></i>Descargar Póliza</asp:LinkButton>
                                                            <asp:Label ID="lbNombreArchivoPyme" runat="server" Text="" Visible="false"></asp:Label>
                                                        </div>
                                                    </asp:Panel>
                                                    <!--FIN CARTA SIN BOTON-->
                                                </div>
                                                <br>
                                                <div class="col-lg-8">
                                                    <div class="d-block d-md-flex justify-content-between mt-4 mt-md-0">
                                                        <div class="text-center mt-4 mt-md-0">
                                                            <a class="btn btn-outline-primary" href="Reportes.aspx" >Crear Reporte!</a>
                                                        </div>
                                                    </div>
                                                    <div class="mt-4 py-2 border-top border-bottom">
                                                        <ul class="nav profile-navbar">
                                                            <li class="nav-item">
                                                                <a class="nav-link" href="#" data-toggle="modal" data-target="#modal-pyme">
                                                                    <i class="ti-hummer"></i>
                                                                    Información Seguro
                                                                </a>
                                                            </li>
                                                            <li class="nav-item">
                                                                <a class="nav-link" href="#" data-toggle="modal" data-target="#modal-asesor">
                                                                    <i class="ti-agenda"></i>
                                                                    Datos de mi Asesor
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="profile-feed">
                                                        <!--INICIO CARTA ACTORES-->
                                                        <div class="d-flex align-items-start profile-feed-item">
                                                            <asp:Panel ID="PANELTOMADORPYME" runat="server" Visible="false">
                                                                <div class="ml-4">
                                                                    <h5>Tomador
                                                                    </h5>
                                                                    <p>
                                                                        <asp:Label ID="lbNombreTomadorPyme" runat="server" Text="Perfil"></asp:Label><br>
                                                                        N° Documento:<asp:Label ID="lbDocumentoTomadorPyme" runat="server" Text="Perfil"></asp:Label>
                                                                    </p>
                                                                </div>
                                                            </asp:Panel>
                                                            <asp:Panel ID="PANELBENEFICIARIOPYME" runat="server" Visible="false">
                                                                <div class="ml-4">
                                                                    <h5>Beneficiario
                                                                    </h5>
                                                                    <p>
                                                                        <asp:Label ID="lbNombreBeneficiarioPyme" runat="server" Text="Perfil"></asp:Label><br>
                                                                        N° Documento:<asp:Label ID="lbDocumentoBeneficiarioPyme" runat="server" Text="Perfil"></asp:Label>
                                                                    </p>
                                                                </div>
                                                            </asp:Panel>
                                                            <asp:Panel ID="PANELASEGURADOPYME" runat="server" Visible="false">
                                                                <div class="ml-4">
                                                                    <h5>Asegurado
                                                                    </h5>
                                                                    <p>
                                                                        <asp:Label ID="lbNombreAseguradoPyme" runat="server" Text="Perfil"></asp:Label><br>
                                                                        N° Documento:<asp:Label ID="lbDocumentoAseguradoPyme" runat="server" Text="Perfil"></asp:Label>
                                                                    </p>
                                                                </div>
                                                            </asp:Panel>
                                                        </div>
                                                        <!--FIN CARTA ACTORES-->
                                                        <div class="d-flex align-items-start profile-feed-item">
                                                            <div class="ml-4">
                                                                <h6>
                                                                    <asp:Label ID="lbNombreNegocioPyme" runat="server" Text="Perfil"></asp:Label>
                                                                    <small class="ml-1 text-muted"><i class="ti-lock mr-1"></i></small>
                                                                </h6>
                                                                <img src="../../library/dashboardCliente/images/Pyme2.svg" alt="sample"
                                                                    class="rounded mw-100" />
                                                            </div>
                                                            <div class="ml-4">
                                                                <h5>Tipo de Negocio
                                                                </h5>
                                                                <p>
                                                                    <asp:Label ID="lbTipoNegocioPyme" runat="server" Text="Perfil"></asp:Label>
                                                                </p>
                                                                <h5>Valor Asegurado
                                                                </h5>
                                                                <p>
                                                                    <asp:Label ID="lbValorNeogcioPyme" runat="server" Text="Perfil"></asp:Label>
                                                                    &nbsp;COP
                                                                </p>
                                                                <h5>Localidad de Ubicación
                                                                </h5>
                                                                <p>
                                                                    <asp:Label ID="lbLocalidadNegocioPyme" runat="server" Text="Perfil"></asp:Label>
                                                                </p>
                                                            </div>

                                                        </div>
                                                        <div class="d-flex align-items-start profile-feed-item">
                                                            <img src="../../library/dashboardCliente/images/estrella.png" alt="profile"
                                                                class="img-sm rounded-circle" />
                                                            <div class="ml-4">
                                                                <h4>Proveedor de tu Seguro!
                              <small class="ml-4 text-muted"><i class="ti-lock mr-1"></i>
                                  <asp:Label ID="lbNitAseguradoraPyme" runat="server" Text="Perfil"></asp:Label></small>
                                                                </h4>
                                                                <h5>
                                                                    <asp:Label ID="lbNombreAseguradoraPyme" runat="server" Text="Perfil"></asp:Label></h5>
                                                                <h5>Dirección de Atención</h5>
                                                                <asp:Label ID="lbDireccionAseguradoraPyme" runat="server" Text="Perfil"></asp:Label>
                                                                <h5>Teléfono de Atención</h5>
                                                                <asp:Label ID="lbTelefonoAseguradoraPyme" runat="server" Text="Perfil"></asp:Label>
                                                                <h5>Correo de Atención</h5>
                                                                <asp:Label ID="lbCorreoAseguradoraPyme" runat="server" Text="Perfil"></asp:Label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </asp:Panel>
                                <!--INICIO CARTA MEDICA-->
                                <asp:Panel ID="PANELRC" runat="server" Visible="false">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <div class="border-bottom text-center pb-4">
                                                        <img src="../../library/dashboardCliente/images/RC.svg" alt="profile"
                                                            class="img-lg rounded-circle mb-3" />
                                                        <div class="mb-3">
                                                            <h3>Póliza RC Médica</h3>
                                                            <h4>
                                                                <asp:Label ID="lbCodigoPolizaMedica" runat="server" Text="Perfil"></asp:Label></h4>
                                                            <div class="d-flex align-items-center justify-content-center">
                                                                <select id="profile-rating5" name="rating">
                                                                    <option value="1">1</option>
                                                                    <option value="2">2</option>
                                                                    <option value="3">3</option>
                                                                    <option value="4">4</option>
                                                                    <option selected value="5">5</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <p class="w-75 mx-auto mb-3">
                                                            Desarrolla tu profesión médica con tranquilidad, mientras protege
                          su patrimonio.
                                                        </p>
                                                        <div class="d-flex justify-content-center">
                                                        </div>
                                                    </div>
                                                    <div class="border-bottom py-4">
                                                        <h4>Cobertura de tu Seguro!</h4>
                                                        <p class="card-description">
                                                            Vence el <code>
                                                                <asp:Label ID="lbFechaFMedica" runat="server" Text="Perfil"></asp:Label></code>
                                                        </p>
                                                        <div class="template-demo">
                                                            <div class="progress progress-md">
                                                                <div class="progress-bar bg-primary progress-bar-striped progress-bar-animated"
                                                                    role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0"
                                                                    aria-valuemax="100">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="py-4">
                                                        <p class="clearfix">
                                                            <span class="float-left">Estado del Seguro
                                                            </span>
                                                            <span class="float-right text-muted">
                                                                <label runat="server" id="Label53">Activo</label>
                                                            </span>
                                                        </p>
                                                        <p class="clearfix">
                                                            <span class="float-left">Cliente
                                                            </span>
                                                            <span class="float-right text-muted">
                                                                <asp:Label ID="lbNombreClienteMedica" runat="server" Text="Perfil"></asp:Label>
                                                            </span>
                                                        </p>
                                                        <p class="clearfix">
                                                            <span class="float-left">Inicio Cobertura
                                                            </span>
                                                            <span class="float-right text-muted">
                                                                <asp:Label ID="lbFechaIMedica" runat="server" Text="Perfil"></asp:Label>
                                                            </span>
                                                        </p>
                                                        <p class="clearfix">
                                                            <span class="float-left">Fecha de Expedición
                                                            </span>
                                                            <span class="float-right text-muted">
                                                                <asp:Label ID="lbFechaEMedica" runat="server" Text="Perfil"></asp:Label>
                                                            </span>
                                                        </p>
                                                        <p class="clearfix">
                                                            <span class="float-left">Tipo de Pago
                                                            </span>
                                                            <span class="float-right text-muted">
                                                                <asp:Label ID="lbTipoPagoMedica" runat="server" Text="Perfil"></asp:Label>
                                                            </span>
                                                        </p>
                                                    </div>
                                                    <!--INICIO CARTA BOTÓN-->
                                                    <asp:Panel ID="PANELSINBOTONMEDICA" runat="server" Visible="false">
                                                        <div class="border-bottom py-4">
                                                            <div class="card-body text-center">
                                                                <p class="mt-2 card-text">
                                                                    Actualmente no tienes disponible la póliza para la descarga
                                                                </p>
                                                                <small class="text-muted">Inténtalo más tarde nuevamente!
                                                                </small>
                                                            </div>
                                                        </div>
                                                    </asp:Panel>
                                                    <asp:Panel ID="PANELBOTONMEDICA" runat="server" Visible="false">
                                                        <div class="border-bottom py-4">
                                                            <asp:LinkButton ID="btnDescargarMedica" runat="server" class="btn btn-success btn-block btn-icon-text mb-2"
                                                                 OnClick="btnDescargarMedica_Click"><i class="ti-download btn-icon-prepend"></i>Descargar Póliza</asp:LinkButton>
                                                            <asp:Label ID="lbNombreArchivoMedica" runat="server" Text="" Visible="false"></asp:Label>
                                                        </div>
                                                    </asp:Panel>
                                                    <!--INICIO CARTA BOTÓN-->
                                                </div>
                                                <br>
                                                <div class="col-lg-8">
                                                    <div class="d-block d-md-flex justify-content-between mt-4 mt-md-0">
                                                        <div class="text-center mt-4 mt-md-0">
                                                            <a class="btn btn-outline-primary" href="Reportes.aspx" >Crear Reporte!</a>
                                                        </div>
                                                    </div>
                                                    <div class="mt-4 py-2 border-top border-bottom">
                                                        <ul class="nav profile-navbar">
                                                            <li class="nav-item">
                                                                <a class="nav-link" href="#" data-toggle="modal" data-target="#modal-rc">
                                                                    <i class="ti-pulse"></i>
                                                                    Información Seguro
                                                                </a>
                                                            </li>
                                                            <li class="nav-item">
                                                                <a class="nav-link" href="#" data-toggle="modal" data-target="#modal-asesor">
                                                                    <i class="ti-agenda"></i>
                                                                    Datos de mi Asesor
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="profile-feed">
                                                        <!--INICIO CARTA ACTORES-->
                                                        <div class="d-flex align-items-start profile-feed-item">
                                                            <asp:Panel ID="PANELTOMADORMEDICA" runat="server" Visible="false">
                                                                <div class="ml-4">
                                                                    <h5>Tomador
                                                                    </h5>
                                                                    <p>
                                                                        <asp:Label ID="lbNombreTomadorMedica" runat="server" Text="Perfil"></asp:Label><br>
                                                                        N° Documento:<asp:Label ID="lbDocumentoTomadorMedica" runat="server" Text="Perfil"></asp:Label>
                                                                    </p>
                                                                </div>
                                                            </asp:Panel>
                                                            <asp:Panel ID="PANELBENEFICIARIOMEDICA" runat="server" Visible="false">
                                                                <div class="ml-4">
                                                                    <h5>Beneficiario
                                                                    </h5>
                                                                    <p>
                                                                        <asp:Label ID="lbNombreBeneficiarioMedica" runat="server" Text="Perfil"></asp:Label><br>
                                                                        N° Documento:<asp:Label ID="lbDocumentoBeneficiarioMedica" runat="server" Text="Perfil"></asp:Label>
                                                                    </p>
                                                                </div>
                                                            </asp:Panel>
                                                            <asp:Panel ID="PANELASEGURADOMEDICA" runat="server" Visible="false">
                                                                <div class="ml-4">
                                                                    <h5>Asegurado
                                                                    </h5>
                                                                    <p>
                                                                        <asp:Label ID="lbNombreAseguradoMedica" runat="server" Text="Perfil"></asp:Label><br>
                                                                        N° Documento:<asp:Label ID="lbDocumentoAseguradoMedica" runat="server" Text="Perfil"></asp:Label>
                                                                    </p>
                                                                </div>
                                                            </asp:Panel>
                                                        </div>
                                                        <!--FIN CARTA ACTORES-->
                                                        <div class="d-flex align-items-start profile-feed-item">
                                                            <div class="ml-4">
                                                                <h6>
                                                                    <asp:Label ID="lbNumeroTarjetaProfesionalMedica" runat="server" Text="Perfil"></asp:Label>
                                                                    <small class="ml-1 text-muted"><i class="ti-lock mr-1"></i></small>
                                                                </h6>
                                                                <img src="../../library/dashboardCliente/images/RC2.svg" alt="sample"
                                                                    class="rounded mw-100" />
                                                            </div>
                                                            <div class="ml-4">
                                                                <h5>Fecha de Nacimiento Clínico
                                                                </h5>
                                                                <p>
                                                                    <asp:Label ID="lbFechaNacimientoMedica" runat="server" Text="Perfil"></asp:Label><br>
                                                                </p>
                                                                <h5>Fecha de Nacimiento Expedición Tarjeta Profesional
                                                                </h5>
                                                                <p>
                                                                    <asp:Label ID="lbFechaExpedicionMedica" runat="server" Text="Perfil"></asp:Label><br>
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div class="d-flex align-items-start profile-feed-item">
                                                            <img src="../../library/dashboardCliente/images/estrella.png" alt="profile"
                                                                class="img-sm rounded-circle" />
                                                            <div class="ml-4">
                                                                <h4>Proveedor de tu Seguro!
                              <small class="ml-4 text-muted"><i class="ti-lock mr-1"></i>
                                  <asp:Label ID="lbNitAseguradoraMedica" runat="server" Text="Perfil"></asp:Label></small>
                                                                </h4>
                                                                <h5>
                                                                    <asp:Label ID="lbNombreAseguradoraMedica" runat="server" Text="Perfil"></asp:Label></h5>
                                                                <h5>Dirección de Atención</h5>
                                                                <asp:Label ID="lbDireccionAseguradoraMedica" runat="server" Text="Perfil"></asp:Label>
                                                                <h5>Teléfono de Atención</h5>
                                                                <asp:Label ID="lbTelefonoAseguradoraMedica" runat="server" Text="Perfil"></asp:Label>
                                                                <h5>Correo de Atención</h5>
                                                                <asp:Label ID="lbCorreoAseguradoraMedica" runat="server" Text="Perfil"></asp:Label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </asp:Panel>
                                <!--INICIO CARTA VIDA-->
                                <asp:Panel ID="PANELVIDA" runat="server" Visible="false">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <div class="border-bottom text-center pb-4">
                                                        <img src="../../library/dashboardCliente/images/Vida.svg" alt="profile"
                                                            class="img-lg rounded-circle mb-3" />
                                                        <div class="mb-3">
                                                            <h3>Póliza de Vida</h3>
                                                            <h4>
                                                                <asp:Label ID="lbCodigoPolizaVida" runat="server" Text="Perfil"></asp:Label></h4>
                                                            <div class="d-flex align-items-center justify-content-center">
                                                                <select id="profile-rating6" name="rating">
                                                                    <option value="1">1</option>
                                                                    <option value="2">2</option>
                                                                    <option value="3">3</option>
                                                                    <option value="4">4</option>
                                                                    <option selected value="5">5</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <p class="w-75 mx-auto mb-3">Protege a tus seres queridos, todo el tiempo. </p>
                                                        <div class="d-flex justify-content-center">
                                                        </div>
                                                    </div>
                                                    <div class="border-bottom py-4">
                                                        <h4>Cobertura de tu Seguro!</h4>
                                                        <p class="card-description">
                                                            Vence el <code>
                                                                <asp:Label ID="lbFechaFVida" runat="server" Text="Perfil"></asp:Label></code>
                                                        </p>
                                                        <div class="template-demo">
                                                            <div class="progress progress-md">
                                                                <div class="progress-bar bg-primary progress-bar-striped progress-bar-animated"
                                                                    role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0"
                                                                    aria-valuemax="100">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="py-4">
                                                        <p class="clearfix">
                                                            <span class="float-left">Estado del Seguro
                                                            </span>
                                                            <span class="float-right text-muted">
                                                                <label runat="server" id="Label71">Activo</label>
                                                            </span>
                                                        </p>
                                                        <p class="clearfix">
                                                            <span class="float-left">Cliente
                                                            </span>
                                                            <span class="float-right text-muted">
                                                                <asp:Label ID="lbNombreClienteVida" runat="server" Text="Perfil"></asp:Label>
                                                            </span>
                                                        </p>
                                                        <p class="clearfix">
                                                            <span class="float-left">Inicio Cobertura
                                                            </span>
                                                            <span class="float-right text-muted">
                                                                <asp:Label ID="lbFechaIVida" runat="server" Text="Perfil"></asp:Label>
                                                            </span>
                                                        </p>
                                                        <p class="clearfix">
                                                            <span class="float-left">Fecha de Expedición
                                                            </span>
                                                            <span class="float-right text-muted">
                                                                <asp:Label ID="lbFechaEVida" runat="server" Text="Perfil"></asp:Label>
                                                            </span>
                                                        </p>
                                                        <p class="clearfix">
                                                            <span class="float-left">Tipo de Pago
                                                            </span>
                                                            <span class="float-right text-muted">
                                                                <asp:Label ID="lbTipoPagoVida" runat="server" Text="Perfil"></asp:Label>
                                                            </span>
                                                        </p>
                                                    </div>
                                                    <!--INICIO CARTA BOTON-->
                                                    <asp:Panel ID="PANELBOTONVIDA" runat="server" Visible="false">
                                                        <div class="border-bottom py-4">
                                                            <asp:LinkButton ID="btnDescargarVida" runat="server" class="btn btn-success btn-block btn-icon-text mb-2"
                                                                OnClick="btnDescargarVida_Click"><i class="ti-download btn-icon-prepend"></i>Descargar Póliza</asp:LinkButton>
                                                            <asp:Label ID="lbNombreArchivoVida" runat="server" Text="" Visible="false"></asp:Label>
                                                        </div>
                                                    </asp:Panel>
                                                    <asp:Panel ID="PANELSINBOTONVIDA" runat="server" Visible="false">
                                                        <div class="border-bottom py-4">
                                                            <div class="card-body text-center">
                                                                <p class="mt-2 card-text">
                                                                    Actualmente no tienes disponible la póliza para la descarga
                                                                </p>
                                                                <small class="text-muted">Inténtalo más tarde nuevamente!
                                                                </small>
                                                            </div>
                                                        </div>
                                                    </asp:Panel>
                                                    <!--FIN CARTA BOTON-->
                                                </div>
                                                <br>
                                                <div class="col-lg-8">
                                                    <div class="d-block d-md-flex justify-content-between mt-4 mt-md-0">
                                                        <div class="text-center mt-4 mt-md-0">
                                                            <a class="btn btn-outline-primary" href="Reportes.aspx" >Crear Reporte!</a>
                                                        </div>
                                                    </div>
                                                    <div class="mt-4 py-2 border-top border-bottom">
                                                        <ul class="nav profile-navbar">
                                                            <li class="nav-item">
                                                                <a class="nav-link" href="#" data-toggle="modal" data-target="#modal-vida">
                                                                    <i class="ti-heart"></i>
                                                                    Información Seguro
                                                                </a>
                                                            </li>
                                                            <li class="nav-item">
                                                                <a class="nav-link" href="#" data-toggle="modal" data-target="#modal-asesor">
                                                                    <i class="ti-agenda"></i>
                                                                    Datos de mi Asesor
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="profile-feed">
                                                        <!--INICIO CARTA ACTORES-->
                                                        <div class="d-flex align-items-start profile-feed-item">
                                                            <asp:Panel ID="PANELTOMADORVIDA" runat="server" Visible="false">
                                                                <div class="ml-4">
                                                                    <h5>Tomador
                                                                    </h5>
                                                                    <p>
                                                                        <asp:Label ID="lbNombreTomadorVida" runat="server" Text="Perfil"></asp:Label><br>
                                                                        N° Documento:<asp:Label ID="lbDocumentoTomadorVida" runat="server" Text="Perfil"></asp:Label>
                                                                    </p>
                                                                </div>
                                                            </asp:Panel>
                                                            <asp:Panel ID="PANELBENEFICIARIOVIDA" runat="server" Visible="false">
                                                                <div class="ml-4">
                                                                    <h5>Beneficiario
                                                                    </h5>
                                                                    <p>
                                                                        <asp:Label ID="lbNombreBeneficiarioVida" runat="server" Text="Perfil"></asp:Label><br>
                                                                        N° Documento:<asp:Label ID="lbDocumentoBeneficiarioVida" runat="server" Text="Perfil"></asp:Label>
                                                                    </p>
                                                                </div>
                                                            </asp:Panel>
                                                            <asp:Panel ID="PANELASEGURADOVIDA" runat="server" Visible="false">
                                                                <div class="ml-4">
                                                                    <h5>Asegurado
                                                                    </h5>
                                                                    <p>
                                                                        <asp:Label ID="lbNombreAseguradoVida" runat="server" Text="Perfil"></asp:Label><br>
                                                                        N° Documento:<asp:Label ID="lbDocumentoAseguradoVida" runat="server" Text="Perfil"></asp:Label>
                                                                    </p>
                                                                </div>
                                                            </asp:Panel>
                                                        </div>
                                                        <!--FIN CARTA ACTORES-->
                                                        <div class="d-flex align-items-start profile-feed-item">
                                                            <div class="ml-4">
                                                                <h6>
                                                                    <label runat="server" id="Label82">Seguro de Vida</label>
                                                                    <small class="ml-1 text-muted"><i class="ti-lock mr-1"></i></small>
                                                                </h6>
                                                                <img src="../../library/dashboardCliente/images/Vida2.svg" alt="sample"
                                                                    class="rounded mw-100" />
                                                            </div>
                                                            <div class="ml-4">
                                                                <h5>Fecha de Nacimiento Asegurado
                                                                </h5>
                                                                <p>
                                                                    <asp:Label ID="lbFechaNacimientoVida" runat="server" Text="Perfil"></asp:Label><br>
                                                                </p>
                                                                <h5>Valor Asegurado
                                                                </h5>
                                                                <p>
                                                                    $
                              <asp:Label ID="lbValorAseguradoVida" runat="server" Text="Perfil"></asp:Label>&nbsp;COP
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div class="d-flex align-items-start profile-feed-item">
                                                            <img src="../../library/dashboardCliente/images/estrella.png" alt="profile"
                                                                class="img-sm rounded-circle" />
                                                            <div class="ml-4">
                                                                <h4>Proveedor de tu Seguro!
                              <small class="ml-4 text-muted"><i class="ti-lock mr-1"></i>
                                  <asp:Label ID="lbNitAseguradoraVida" runat="server" Text="Perfil"></asp:Label>></small>
                                                                </h4>
                                                                <h5>
                                                                    <asp:Label ID="lbNombreAseguradoraVida" runat="server" Text="Perfil"></asp:Label></h5>
                                                                <h5>Dirección de Atención</h5>
                                                                <asp:Label ID="lbDireccionAseguradoraVida" runat="server" Text="Perfil"></asp:Label>
                                                                <h5>Teléfono de Atención</h5>
                                                                <asp:Label ID="lbTelefonoAseguradoraVida" runat="server" Text="Perfil"></asp:Label>
                                                                <h5>Correo de Atención</h5>
                                                                <asp:Label ID="lbCorreoAseguradoraVida" runat="server" Text="Perfil"></asp:Label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </asp:Panel>
                            </div>
                            <!--MODAL VEHICULAR-->
                            <div class="modal fade" id="modal-vehicular" tabindex="-1" role="dialog" aria-labelledby="ModalLabel"
                                aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 class="modal-title text-success" id="ModalLabel">Información sobre mi Seguro Vehícular!</h4>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="card-body">
                                                <h5 class="card-title text-success">Responsabilidad Civil por el Vehículo</h5>
                                                <p class="text-muted">
                                                    Cubre lesiones a terceros, daños a bienes particulares o casos de muerte al momento de un
                        accidente donde esté involucrado el vehículo.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <h5 class="card-title text-success">Cobertura por daños causados al vehículo</h5>
                                                <p class="text-muted">
                                                    Indemnización por daños que sufra el vehículo ante cualquier eventualidad. Garantizamos la
                        reparación y el empleo de repuestos originales.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <h5 class="card-title text-success">Cobertura por pérdida o hurto y Asistencia en viajes</h5>
                                                <p class="text-muted">
                                                    Garantía en caso de robo de partes o cuando se produce la desaparición forzada del automóvil. En
                        el caso de que el automóvil sufra un desperfecto mecánico. el seguro envía un servicio de
                        transporte que te recogerá en la ruta y te llevará a tu destino final.
                                                </p>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-light" data-dismiss="modal">Cerrar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--FIN MODAL VEHICULAR-->
                            <!--MODAL ESTUDIANTIL-->
                            <div class="modal fade" id="modal-estudiantil" tabindex="-1" role="dialog" aria-labelledby="ModalLabel"
                                aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 class="modal-title text-success" id="ModalEstudiantil">Información sobre mi Seguro Estudiantil!</h4>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="card-body">
                                                <h5 class="card-title text-success">Renta Educativa</h5>
                                                <p class="text-muted">
                                                    Asegura el pago de la carrera universitaria que elija el estudiante sin nigún problema.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <h5 class="card-title text-success">Seguro por fallecimiento por cualquier motivo</h5>
                                                <p class="text-muted">
                                                    En el caso de que el asegurado fallezca antes del vencimiento del contrato, esta póliza asume
                        los pagos correspondientes hasta que el beneficiario comience los estudios.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <h5 class="card-title text-success">Cubre tus gastos</h5>
                                                <p class="text-muted">
                                                    El seguro te permite cubrir gastos de matrícula y manutención​ para estudios primarios,
                        secundarios, no convencionales y universitarios, ​ya sean de pregrado o posgrado.
                                                </p>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-light" data-dismiss="modal">Cerrar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--FIN MODAL ESTUDIANTIL-->
                            <!--MODAL HOGAR-->
                            <div class="modal fade" id="modal-hogar" tabindex="-1" role="dialog" aria-labelledby="ModalLabel"
                                aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 class="modal-title text-success" id="ModalHogar">Información sobre mi Seguro Hogar!</h4>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="card-body">
                                                <h5 class="card-title text-success">Protección</h5>
                                                <p class="text-muted">
                                                    Sin importar si eres propietario o arrendatario, tenemos coberturas para tu vivienda y tus
                        pertenencias.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <h5 class="card-title text-success">Respaldo</h5>
                                                <p class="text-muted">
                                                    Cobertura de Responsabilidad civil extracontractual, para los daños que tú o tus familiares,
                        puedan causar a otros, o los daños que ocurran en tu propiedad.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <h5 class="card-title text-success">Tranquilidad</h5>
                                                <p class="text-muted">
                                                    Asistencias para el bienestar de tu mascota, y cobertura en caso que cause daño a alguien.
                                                </p>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-light" data-dismiss="modal">Cerrar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--FIN MODAL HOGAR-->
                            <!--MODAL PYME-->
                            <div class="modal fade" id="modal-pyme" tabindex="-1" role="dialog" aria-labelledby="ModalLabel"
                                aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 class="modal-title text-success" id="ModalPyme">Información sobre mi Seguro Pyme!</h4>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="card-body">
                                                <h5 class="card-title text-success">Respaldo Bienes</h5>
                                                <p class="text-muted">
                                                    Los elementos que sean propiedad de su negocio o estén bajo su cuidado, están protegidos
                        frente a las pérdidas o daños materiales que sufran en diferentes eventos.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <h5 class="card-title text-success">Respaldo económico afectación a terceros</h5>
                                                <p class="text-muted">
                                                    Si la empresa causa perjuicios a empleados, clientes u otras personas en el desarrollo de
                        sus actividades. Asumimos las indemnizaciones correspondientes.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <h5 class="card-title text-success">Asistencia</h5>
                                                <p class="text-muted">
                                                    Si en su empresa ocurre un evento accidental que genere daños, nosotros enviaremos a un experto
                        que haga las reparaciones que se requieran o reembolsaremos lo que estas cuesten con previa
                        autorización.
                                                </p>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-light" data-dismiss="modal">Cerrar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--FIN MODAL PYME-->
                            <!--MODAL RC-->
                            <div class="modal fade" id="modal-rc" tabindex="-1" role="dialog" aria-labelledby="ModalLabel"
                                aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 class="modal-title text-success" id="ModalRC">Información sobre mi Seguro RC!</h4>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="card-body">
                                                <h5 class="card-title text-success">Responsabilidad Civil Profesional</h5>
                                                <p class="text-muted">
                                                    Cubre actos u omisiones cometidos en el ejercicio de una actividad profesional médica por
                        personal médico y/o al servicio y bajo la supervisión del asegurado.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <h5 class="card-title text-success">Responsabilidad Civil Asistencia Médica</h5>
                                                <p class="text-muted">
                                                    Cubre actos como consecuencia de asistencia médica de emergencia a persona o personas, en
                            cumplimiento de una obligación legal y/o un deber de humanidad generalmente aceptado.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <h5 class="card-title text-success">Daños morales y gastos judiciales</h5>
                                                <p class="text-muted">
                                                    Gastos judiciales hasta el sublímite señalado en la carátula de la póliza. Este valor está
                        incluido en el límite asegurado básico y no en exceso de este.
                                                </p>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-light" data-dismiss="modal">Cerrar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--FIN MODAL RC-->
                            <!--MODAL VIDA-->
                            <div class="modal fade" id="modal-vida" tabindex="-1" role="dialog" aria-labelledby="ModalLabel"
                                aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 class="modal-title text-success" id="ModalVida">Información sobre mi Seguro de Vida!</h4>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="card-body">
                                                <h5 class="card-title text-success">Protección de accidentes personales</h5>
                                                <p class="text-muted">
                                                    Si tienes una fractura o quemadura como producto de un accidente, te pagamos una indemnización
                        para que cubras los gastos que hayan debido a este evento.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <h5 class="card-title text-success">Protección ante muerte accidental</h5>
                                                <p class="text-muted">
                                                    Si el fallecimiento es consecuencia de un accidente, les entregamos a tus beneficiarios una
                            doble indemnización dependiendo del valor asegurado.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <h5 class="card-title text-success">Enfermedad</h5>
                                                <p class="text-muted">
                                                    Si en algún momento eres diagnosticado con una enfermedad grave, tendrás respaldo económico
                        suficiente para el tratamiento dependiendo del valor que asegures
                                                </p>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-light" data-dismiss="modal">Cerrar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--FIN MODAL VIDA-->
                            <!-- Modal starts -->
                            <div class="modal fade" id="modal-asesor" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                                aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 class="card-title">Mi asesor asignado</h4>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <h3>
                                                <asp:Label id="NombreAsesor" class="card-title" runat="server"></asp:Label>
                                                <small class="text-muted">Nombre del Asesor
                                                </small>
                                            </h3>
                                            <h4>
                                                <asp:Label id="TelefonoAsesor" class="card-title" runat="server">3126596532</asp:Label>
                                                <small class="text-muted">Teléfono de Contacto
                                                </small>
                                            </h4>
                                            <br>
                                            <p>
                                                Te puedes comunicar con tu asesor para alguna inquietud o reportar algún siniestro que hayas
                      tenido. También puedes poner un reporte para que tu asesor la responda lo más pronto posible
                                            </p>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-light" data-dismiss="modal">Cerrar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Modal Ends -->
                        </div>
                    </div>
                    <!-- Modal Ends -->
                    <!-- content-wrapper ends -->
                    <!-- partial:../../partials/_footer.html -->
                    <footer class="footer">
                        <div class="d-sm-flex justify-content-center justify-content-sm-between">
                            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2021.</span>
                            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Todos los Derechos Reservados.
                            </span>
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
    <script src="../../library/dashboardCliente/vendors/js/vendor.bundle.base.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script>
        $(window).on('load', function () {
            setTimeout(function () {
                $(".loader-page").css({ visibility: "hidden", opacity: "0" })
            }, 2000);

        });
    </script>
    <!-- endinject -->
    <!-- Plugin js for this page-->
    <script src="../../library/dashboardCliente/vendors/jquery-bar-rating/jquery.barrating.min.js"></script>
    <script src="../../library/dashboardCliente/vendors/colcade/colcade.js"></script>
    <script src="../../../../vendors/progressbar.js/progressbar.min.js"></script>
    <script src="../../library/dashboardCliente/vendors/progressbar.js/progressbar.min.js"></script>
    <script src="../../library/dashboardCliente/vendors/jquery-steps/jquery.steps.min.js"></script>
    <script src="../../library/dashboardCliente/vendors/jquery-validation/jquery.validate.min.js"></script>
    <script src="../../library/dashboardCliente/vendors/datatables.net/jquery.dataTables.js"></script>
    <script src="../../library/dashboardCliente/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
    <script src="../../library/dashboardCliente/vendors/sweetalert/sweetalert.min.js"></script>
    <script src="../../library/dashboardCliente/vendors/jquery.avgrund/jquery.avgrund.min.js"></script>
    <!-- End plugin js for this page-->
    <!-- inject:js -->
    <script src="../../library/dashboardCliente/js/off-canvas.js"></script>
    <script src="../../library/dashboardCliente/js/hoverable-collapse.js"></script>
    <script src="../../library/dashboardCliente/js/template.js"></script>
    <script src="../../library/dashboardCliente/js/settings.js"></script>
    <script src="../../library/dashboardCliente/js/todolist.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page-->
    <script src="../../library/dashboardCliente/js/profile-demo.js"></script>
    <script src="../../library/dashboardCliente/js/progress-bar.js"></script>
    <script src="../../library/dashboardCliente/js/wizard.js"></script>
    <script src="../../library/dashboardCliente/js/data-table.js"></script>
    <script src="../../library/dashboardCliente/js/alerts.js"></script>
    <script src="../../library/dashboardCliente/js/avgrund.js"></script>
    <script src="../../library/dashboardCliente/js/tight-grid.js"></script>
    <!-- End custom js for this page-->
</body>


<!-- Mirrored from www.bootstrapdash.com/demo/skydash/template/demo/vertical-default-light/pages/tables/data-table.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 16 Mar 2021 01:57:53 GMT -->

</html>
