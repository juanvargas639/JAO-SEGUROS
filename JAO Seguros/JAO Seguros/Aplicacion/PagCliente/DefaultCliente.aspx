<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefaultCliente.aspx.cs" Inherits="JAO_Seguros.Aplicacion.PagCliente.DefaultCliente1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="es-419">
<head runat="server">
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
    <link rel="stylesheet" href="../../library/dashboardCliente/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
    <link rel="stylesheet" href="../../library/dashboardCliente/vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" type="text/css" href="../../library/dashboardCliente/js/select.dataTables.min.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="../../library/dashboardCliente/css/vertical-layout-light/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="../../library/dashboardCliente/images/favicon.ico" />
</head>

<body>
    <div class="loader-page"></div>
    <form id="FormDefaultCliente" runat="server">
        <div class="container-scroller">
            <!-- partial:partials/_navbar.html -->
            <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
                <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
                    <a class="navbar-brand brand-logo mr-5" href="DefaultCliente.aspx">
                        <img src="../../library/dashboardCliente/images/logo.png" class="mr-2"
                            alt="logo" /></a>
                    <a class="navbar-brand brand-logo-mini" href="DefaultCliente.aspx">
                        <img src="../../library/dashboardCliente/images/logo-mini.png" alt="logo" /></a>
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
                <!-- partial:partials/_settings-panel.html -->
                <!-- partial -->
                <!-- partial:partials/_sidebar.html -->
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
                        <div class="row">
                            <div class="col-md-12 grid-margin">
                                <div class="row">
                                    <div class="col-12 col-xl-8 mb-4 mb-xl-0">
                                        <h3 class="font-weight-bold">Bienvenido(a)
                                            <asp:Label ID="lbNombreCliente" runat="server" Text="label"></asp:Label>&nbsp;<asp:Label ID="lbApellidoCliente" runat="server" Text="label"></asp:Label>
                                            a JAO SEGUROS</h3>
                                        <h6 class="font-weight-normal mb-0">Recuerda estar revisando el estado de tus <span
                                            class="text-primary"> Pólizas </span>y<span
                                                class="text-primary"> Reportes!</span></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 grid-margin stretch-card">
                                <div class="card tale-bg">
                                    <div class="card-people mt-auto">
                                        <img src="../../library/dashboardCliente/images/dashboard/people.svg" alt="people">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 grid-margin transparent">
                                <div class="row">
                                    <a class="col-md-6 mb-4 stretch-card transparent" href="CrearReporte.aspx">
                                        <div class="card card-tale">
                                            <div class="card-body">
                                                <p class="mb-4">Crear nuevo</p>
                                                <p class="fs-30 mb-2">Reporte</p>
                                                <p>en JAO SEGUROS</p>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="col-md-6 mb-4 stretch-card transparent" href="Reportes.aspx">
                                        <div class="card card-dark-blue">
                                            <div class="card-body">
                                                <p class="mb-4">Ver mis</p>
                                                <p class="fs-30 mb-2">Reportes</p>
                                                <p>en JAO SEGUROS</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="row">
                                    <a class="col-md-6 mb-4 mb-lg-0 stretch-card transparent" href="Polizas.aspx">
                                        <div class="card card-light-blue">
                                            <div class="card-body">
                                                <p class="mb-4">Ver mis</p>
                                                <p class="fs-30 mb-2">Pólizas</p>
                                                <p>Registradas en JAO SEGUROS</p>
                                            </div>
                                        </div>
                                    </a>
                                    <div class="col-md-6 stretch-card transparent">
                                        <div class="card card-light-danger">
                                            <div class="card-body">
                                                <p class="mb-4">Un total de</p>
                                                <p class="fs-30 mb-2">
                                                    <asp:Label ID="lbNumeroClientesTotales" runat="server" Text="label"></asp:Label>
                                                </p>
                                                <p>Clientes están asegurados igual que tú</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <div class="row portfolio-grid">
                                    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-12">
                                        <figure class="effect-text-in">
                                            <img src="../../library/dashboardCliente/images/samples/300x300/Family Car.svg" alt="image" />
                                            <figcaption>
                                                <h4>Vehicular</h4>
                                                <p>Tu vehículo y tu familia estan protegidos a donde vayas</p>
                                            </figcaption>
                                        </figure>
                                    </div>
                                    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-12">
                                        <figure class="effect-text-in">
                                            <img src="../../library/dashboardCliente/images/samples/300x300/Dog Family.svg" alt="image" />
                                            <figcaption>
                                                <h4>Vida</h4>
                                                <p>Protege a los seres que más quieres, todo el tiempo</p>
                                            </figcaption>
                                        </figure>
                                    </div>
                                    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-12">
                                        <figure class="effect-text-in">
                                            <img src="../../library/dashboardCliente/images/samples/300x300/Home.svg" alt="image" />
                                            <figcaption>
                                                <h4>Pyme</h4>
                                                <p>Protege tu empresa ante los riesgos más comunes</p>
                                            </figcaption>
                                        </figure>
                                    </div>
                                    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-12">
                                        <figure class="effect-text-in">
                                            <img src="../../library/dashboardCliente/images/samples/300x300/Students.svg" alt="image" />
                                            <figcaption>
                                                <h4>Estudiantil</h4>
                                                <p>El futuro de tu familia también lo puedes asegurar</p>
                                            </figcaption>
                                        </figure>
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
    </form>
    <!-- container-scroller -->

    <!-- plugins:js -->
    <script src="../../library/dashboardCliente/vendors/js/vendor.bundle.base.js"></script>
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

    <script src="../../library/dashboardCliente/vendors/chart.js/Chart.min.js"></script>
    <script src="../../library/dashboardCliente/vendors/datatables.net/jquery.dataTables.js"></script>
    <script src="../../library/dashboardCliente/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
    <script src="../../library/dashboardCliente/js/dataTables.select.min.js"></script>
    <script src="../../library/dashboardCliente/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>

    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="../../library/dashboardCliente/js/off-canvas.js"></script>
    <script src="../../library/dashboardCliente/js/hoverable-collapse.js"></script>
    <script src="../../library/dashboardCliente/js/template.js"></script>
    <script src="../../library/dashboardCliente/js/settings.js"></script>
    <script src="../../library/dashboardCliente/js/todolist.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page-->
    <script src="../../library/dashboardCliente/js/formpickers.js"></script>
    <script src="../../library/dashboardCliente/js/dashboard.js"></script>
    <script src="../../library/dashboardCliente/js/Chart.roundedBarCharts.js"></script>
    <!-- End custom js for this page-->
</body>

</html>
