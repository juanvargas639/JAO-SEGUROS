<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefaultAdmin.aspx.cs" Inherits="JAO_Seguros.Aplicacion.PagAdmin.DefaultAdmin" %>
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
    <script src="../../library/dashboardAdmin/vendors/sweetalert/sweetalert.min.js" type="text/javascript"></script>
    <script src="../../library/dashboardAdmin/js/alerts.js" type="text/javascript"></script>
    <script src="../../library/dashboardAdmin/js/avgrund.js" type="text/javascript"></script>

    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" type="text/css" href="../../library/dashboardAdmin/js/select.dataTables.min.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="../../library/dashboardAdmin/css/vertical-layout-light/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="../../library/dashboardAdmin/images/favicon.ico" />
</head>
<body>
    <form id="dashboardAdminForm" runat="server">
        <div class="loader-page"></div>
        <div class="container-scroller">
            <!-- partial:partials/_navbar.html -->
            <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
                <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
                    <a class="navbar-brand brand-logo mr-5" href="DefaultAdmin.aspx">
                        <img
                            src="../../library/dashboardAdmin/images/logo.png" class="mr-2" alt="logo" /></a>
                    <a class="navbar-brand brand-logo-mini" href="DefaultAdmin.aspx">
                        <img
                            src="../../library/dashboardAdmin/images/logo-mini.png" alt="logo" /></a>
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
                    <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button"
                        data-toggle="offcanvas">
                        <span class="icon-menu"></span>
                    </button>
                </div>
            </nav>
            <!-- partial -->
            <div class="container-fluid page-body-wrapper">
                <!-- partial -->
                <!-- partial:partials/_sidebar.html -->
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
                        <div class="row">
                            <div class="col-md-12 grid-margin">
                                <div class="row">
                                    <div class="col-12 col-xl-8 mb-4 mb-xl-0">
                                        <h3 class="font-weight-bold">Bienvenido(a) Admin.
                                        <asp:Label ID="lbNombreUsuarioDashboard" runat="server" Text="label"></asp:Label></h3>
                                        <h6 class="font-weight-normal mb-0">Todos los sistemas están funcionando correctamente!</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 grid-margin stretch-card">
                                <div class="card tale-bg">
                                    <div class="card-people mt-auto">
                                        <img src="../../library/dashboardAdmin/images/dashboard/people.svg" alt="people">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 grid-margin transparent">
                                <div class="row">
                                    <a class="col-md-6 mb-4 stretch-card transparent" href="CrearCliente.aspx">
                                        <div class="card card-tale">
                                            <div class="card-body">
                                                <p class="mb-4">Crear nuevo</p>
                                                <p class="fs-30 mb-2">Cliente</p>
                                                <p>JAO SEGUROS</p>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="col-md-6 mb-4 stretch-card transparent" href="CrearPoliza.aspx">
                                        <div class="card card-dark-blue">
                                            <div class="card-body">
                                                <p class="mb-4">Crear nueva</p>
                                                <p class="fs-30 mb-2">Póliza</p>
                                                <p>JAO SEGUROS</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="row">
                                    <a class="col-md-6 mb-4 mb-lg-0 stretch-card transparent" href="AsesoresAdmin.aspx">
                                        <div class="card card-light-blue">
                                            <div class="card-body">
                                                <p class="mb-4">Ver mis</p>
                                                <p class="fs-30 mb-2">Asesores</p>
                                                <p>Asignados</p>
                                            </div>
                                        </div>
                                    </a>
                                    <div class="col-md-6 stretch-card transparent">
                                        <div class="card card-light-danger">
                                            <div class="card-body">
                                                <p class="mb-4">Número de Clientes</p>
                                                <p class="fs-30 mb-2"><asp:Label ID="lbNumeroClientesTotales" runat="server" Text="label"></asp:Label></p>
                                                <p>Registrados</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-30 grid-margin stretch-card">
                                <div class="card position-relative">
                                    <div class="card-body">
                                        <div id="detailedReports" class="carousel slide detailed-report-carousel position-static pt-2"
                                            data-ride="carousel">
                                            <div class="carousel-inner">
                                                <div class="carousel-item active">
                                                    <div class="row">
                                                        <div class="col-md-24 col-xl-3 d-flex flex-column justify-content-start">
                                                            <div class="ml-xl-4 mt-3">
                                                                <p class="card-title" style="color: #212529;">Cotizaciones realizadas!</p>
                                                                <h1>
                                                                    <asp:Label ID="lbNumeroCotizaciones" runat="server" Text="Cotizaciones" class="text-primary"></asp:Label></h1>
                                                                <h3 class="font-weight-500 mb-xl-4 text-primary">Bogotá D.C</h3>
                                                                <p class="mb-2 mb-xl-0">
                                                                    El total de cotizaciones de los principales 6 ramos, recibidas en
                                la página principal. Algunas de las cotizaciones ya han sido respondidas por los
                                asesores del sistema
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12 col-xl-9">
                                                            <div class="row">
                                                                <div class="col-md-9 border-right">
                                                                    <div class="table-responsive mb-3 mb-md-0 mt-3">
                                                                        <table class="table table-borderless report-table">
                                                                            <tr>
                                                                                <td class="text-muted">Vehicular</td>
                                                                                <td class="w-100 px-0">
                                                                                    <div class="progress progress-md mx-4">
                                                                                        <div id="barraVehicular" runat="server" class="progress-bar bg-info" role="progressbar"
                                                                                            aria-valuemin="0" aria-valuemax="100">
                                                                                        </div>
                                                                                    </div>
                                                                                </td>
                                                                                <td>
                                                                                    <h5>
                                                                                        <asp:Label ID="lbNumeroCotizacionesVehicular" runat="server" Text="Cotizaciones" class="font-weight-bold mb-0"></asp:Label></h5>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="text-muted">Vida</td>
                                                                                <td class="w-100 px-0">
                                                                                    <div class="progress progress-md mx-4">
                                                                                        <div id="barraVida" runat="server" class="progress-bar bg-warning" role="progressbar"
                                                                                            aria-valuemin="0" aria-valuemax="100">
                                                                                        </div>
                                                                                    </div>
                                                                                </td>
                                                                                <td>
                                                                                    <h5>
                                                                                        <asp:Label ID="lbNumeroCotizacionesVida" runat="server" Text="Cotizaciones" class="font-weight-bold mb-0"></asp:Label></h5>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="text-muted">Pyme</td>
                                                                                <td class="w-100 px-0">
                                                                                    <div class="progress progress-md mx-4">
                                                                                        <div id="barraPyme" runat="server" class="progress-bar bg-danger" role="progressbar"
                                                                                            aria-valuemin="0" aria-valuemax="100">
                                                                                        </div>
                                                                                    </div>
                                                                                </td>
                                                                                <td>
                                                                                    <h5>
                                                                                        <asp:Label ID="lbNumeroCotizacionesPyme" runat="server" Text="Cotizaciones" class="font-weight-bold mb-0"></asp:Label></h5>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="text-muted">RC Médica</td>
                                                                                <td class="w-100 px-0">
                                                                                    <div class="progress progress-md mx-4">
                                                                                        <div id="barraRC" runat="server" class="progress-bar bg-info" role="progressbar"
                                                                                            aria-valuemin="0" aria-valuemax="100">
                                                                                        </div>
                                                                                    </div>
                                                                                </td>
                                                                                <td>
                                                                                    <h5>
                                                                                        <asp:Label ID="lbNumeroCotizacionesRC" runat="server" Text="Cotizaciones" class="font-weight-bold mb-0"></asp:Label></h5>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="text-muted">Estudiantil</td>
                                                                                <td class="w-100 px-0">
                                                                                    <div class="progress progress-md mx-4">
                                                                                        <div id="barraEstudiantil" runat="server" class="progress-bar bg-primary" role="progressbar"
                                                                                            aria-valuemin="0" aria-valuemax="100">
                                                                                        </div>
                                                                                    </div>
                                                                                </td>
                                                                                <td>
                                                                                    <h5>
                                                                                        <asp:Label ID="lbNumeroCotizacionesEstudiantil" runat="server" Text="Cotizaciones" class="font-weight-bold mb-0"></asp:Label></h5>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="text-muted">Hogar</td>
                                                                                <td class="w-100 px-0">
                                                                                    <div class="progress progress-md mx-4">
                                                                                        <div id="barraHogar" runat="server" class="progress-bar bg-danger" role="progressbar"
                                                                                            aria-valuemin="0" aria-valuemax="100">
                                                                                        </div>
                                                                                    </div>
                                                                                </td>
                                                                                <td>
                                                                                    <h5>
                                                                                        <asp:Label ID="lbNumeroCotizacionesHogar" runat="server" Text="Cotizaciones" class="font-weight-bold mb-0"></asp:Label></h5>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="carousel-item">
                                                    <div class="row">
                                                        <div class="col-md-12 col-xl-3 d-flex flex-column justify-content-start">
                                                            <div class="ml-xl-4 mt-3">
                                                                <p class="card-title" style="color: #212529;">Reportes registrados!</p>
                                                                <h1>
                                                                    <asp:Label ID="lbNumeroReportes" runat="server" Text="Reportes" class="text-primary"></asp:Label></h1>
                                                                <p class="mb-2 mb-xl-0">
                                                                    El total de peticiones, solicitudes, reclamos y sugerencias
                                hechos por los clientes registrados en el Sistema. Estos reportes están asignados a los
                                asesores correspondientes.
                             
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12 col-xl-9">
                                                            <div class="row">
                                                                <div class="col-md-9 border-right">
                                                                    <div class="table-responsive mb-3 mb-md-0 mt-3">
                                                                        <table class="table table-borderless report-table">
                                                                            <tr>
                                                                                <td class="text-muted">Sugerencias</td>
                                                                                <td class="w-100 px-0">
                                                                                    <div class="progress progress-md mx-4">
                                                                                        <div id="barraSugerencias" runat="server" class="progress-bar bg-info" role="progressbar"
                                                                                            aria-valuemin="0" aria-valuemax="100">
                                                                                        </div>
                                                                                    </div>
                                                                                </td>
                                                                                <td>
                                                                                    <h5>
                                                                                        <asp:Label ID="lbNumeroSugerencias" runat="server" Text="Reportes" class="font-weight-bold mb-0"></asp:Label></h5>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="text-muted">Peticiones</td>
                                                                                <td class="w-100 px-0">
                                                                                    <div class="progress progress-md mx-4">
                                                                                        <div id="barraPeticiones" runat="server" class="progress-bar bg-primary" role="progressbar"
                                                                                            aria-valuemin="0" aria-valuemax="100">
                                                                                        </div>
                                                                                    </div>
                                                                                </td>
                                                                                <td>
                                                                                    <h5>
                                                                                        <asp:Label ID="lbNumeroPeticiones" runat="server" Text="Reportes" class="font-weight-bold mb-0"></asp:Label></h5>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="text-muted">Quejas</td>
                                                                                <td class="w-100 px-0">
                                                                                    <div class="progress progress-md mx-4">
                                                                                        <div id="barraQuejas" runat="server" class="progress-bar bg-danger" role="progressbar"
                                                                                            aria-valuemin="0" aria-valuemax="100">
                                                                                        </div>
                                                                                    </div>
                                                                                </td>
                                                                                <td>
                                                                                    <h5>
                                                                                        <asp:Label ID="lbNumeroQuejas" runat="server" Text="Reportes" class="font-weight-bold mb-0"></asp:Label></h5>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="text-muted">Reclamos</td>
                                                                                <td class="w-100 px-0">
                                                                                    <div class="progress progress-md mx-4">
                                                                                        <div id="barraReclamos" runat="server" class="progress-bar bg-primary" role="progressbar"
                                                                                            aria-valuemin="0" aria-valuemax="100">
                                                                                        </div>
                                                                                    </div>
                                                                                </td>
                                                                                <td>
                                                                                    <h5>
                                                                                        <asp:Label ID="lbNumeroReclamos" runat="server" Text="Reportes" class="font-weight-bold mb-0"></asp:Label></h5>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="text-muted">Felicitaciones</td>
                                                                                <td class="w-100 px-0">
                                                                                    <div class="progress progress-md mx-4">
                                                                                        <div id="barraFelicitacion" runat="server" class="progress-bar bg-info" role="progressbar"
                                                                                            aria-valuemin="0" aria-valuemax="100">
                                                                                        </div>
                                                                                    </div>
                                                                                </td>
                                                                                <td>
                                                                                    <h5>
                                                                                        <asp:Label ID="lbNumeroFelicitaciones" runat="server" Text="Reportes" class="font-weight-bold mb-0"></asp:Label></h5>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <a class="carousel-control-prev" href="#detailedReports" role="button" data-slide="prev">
                                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                <span class="sr-only">Previous</span>
                                            </a>
                                            <a class="carousel-control-next" href="#detailedReports" role="button" data-slide="next">
                                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                <span class="sr-only">Next</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- content-wrapper ends -->
                    <!-- partial:partials/_footer.html -->
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
        <!-- container-scroller -->
    </form>
    <!-- plugins:js -->
    <script src="../../library/dashboardAdmin/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script>
        $(window).on('load', function () {
            setTimeout(function () {
                $(".loader-page").css({ visibility: "hidden", opacity: "0" })
            }, 2000);

        });
  </script>
    <script src="../../library/dashboardAdmin/vendors/chart.js/Chart.min.js"></script>
    <script src="../../library/dashboardAdmin/vendors/datatables.net/jquery.dataTables.js"></script>
    <script src="../../library/dashboardAdmin/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
    <script src="../../library/dashboardAdmin/js/dataTables.select.min.js"></script>
    <script src="../../library/dashboardAdmin/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>

    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="../../library/dashboardAdmin/js/off-canvas.js"></script>
    <script src="../../library/dashboardAdmin/js/hoverable-collapse.js"></script>
    <script src="../../library/dashboardAdmin/js/template.js"></script>
    <script src="../../library/dashboardAdmin/js/settings.js"></script>
    <script src="../../library/dashboardAdmin/js/todolist.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page-->
    <script src="../../library/dashboardAdmin/js/formpickers.js"></script>
    <script src="../../library/dashboardAdmin/js/dashboard.js"></script>
    <script src="../../library/dashboardAdmin/js/Chart.roundedBarCharts.js"></script>
    <!-- End custom js for this page-->
</body>

</html>
