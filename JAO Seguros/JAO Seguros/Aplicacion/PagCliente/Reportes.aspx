<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reportes.aspx.cs" Inherits="JAO_Seguros.Aplicacion.PagCliente.Reportes" %>

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
    <link rel="stylesheet" href="../../library/dashboardCliente/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="../../library/dashboardCliente/css/vertical-layout-light/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="../../library/dashboardCliente/images/favicon.ico" />
</head>
<body>
    <div class="loader-page"></div>
    <form id="FormReportesCliente" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
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
                <!-- partial -->
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
                        <div class="row">
                            <div class="col-12 grid-margin">
                                <!--INICIO de TABS-->
                                <ul class="nav nav-tabs" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active text-info" id="home-tab" data-toggle="tab" href="#home-1" role="tab"
                                            aria-controls="home-1" aria-selected="true">Mis Reportes<i class="ti-star text-info ml-2"></i></a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link text-info" id="profile-tab" data-toggle="tab" href="#profile-1" role="tab"
                                            aria-controls="profile-1" aria-selected="false">Reporte<i class="ti-plus text-info ml-2"></i></a>
                                    </li>
                                </ul>
                                <!--FIN DE TABS-->
                                <div class="tab-content" style="background-color: white;">
                                    <!--TABLA 1-->
                                    <div class="tab-pane fade show active" id="home-1" role="tabpanel" aria-labelledby="home-tab">
                                        <div class="card">
                                            <div class="card-body">
                                                <h4 class="card-title">Mis reportes</h4>
                                                <br>
                                                <div class="row">
                                                    <div class="col-12">
                                                        <div class="table-responsive">
                                                            <asp:GridView ID="TablaReportesActivos" CssClass="table table-striped" GridLines="None" runat="server" BorderStyle="None" RowStyle-BorderColor="#CED4DA" RowStyle-BorderStyle="None" RowStyle-BorderWidth="0.5pt" OnRowDataBound="TablaReportesActivos_RowDataBound" AutoGenerateColumns="false">
                                                                <Columns>
                                                                    <asp:BoundField HeaderText="N° Reporte" DataField="IDReporte" />
                                                                    <asp:BoundField HeaderText="Tipo de Reporte" DataField="TipoReporte" />
                                                                    <asp:BoundField HeaderText="Fecha de Creación" DataField="FechaReporte" SortExpression="FechaReporte" DataFormatString="{0:d}" />
                                                                    <asp:BoundField HeaderText="Descripción" DataField="DescripcionReporte" />
                                                                    <asp:BoundField HeaderText="Documento del Cliente" DataField="DocumentoCliente" />
                                                                    <asp:BoundField HeaderText="Empleado a cargo" DataField="IDEmpleado" />
                                                                    <asp:BoundField HeaderText="Respuesta del Reporte" DataField="RespuestaReporte" />
                                                                </Columns>
                                                            </asp:GridView>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--TABLA 2-->
                                    <div class="tab-pane fade" id="profile-1" role="tabpanel" aria-labelledby="profile-tab">
                                        <div class="card">
                                            <asp:UpdatePanel ID="UpdateReporte" runat="server"><ContentTemplate>
                                            <div class="card-body">
                                                <h4 class="card-title">Crear reporte</h4>
                                                <p class="card-description">
                                                    Tu asesor asignado lo responderá lo más pronto posible
                                                </p>
                                                <div class="form-group">
                                                    <label for="exampleSelectGender">Tipo de Reporte</label>
                                                    <asp:DropDownList runat="server" class="form-control" ID="listTipoReporte">
                                                        <asp:ListItem Selected="True">Petición</asp:ListItem>
                                                        <asp:ListItem>Queja</asp:ListItem>
                                                        <asp:ListItem>Reclamo</asp:ListItem>
                                                        <asp:ListItem>Sugerencia</asp:ListItem>
                                                        <asp:ListItem>Solicitud</asp:ListItem>
                                                        <asp:ListItem>Corrección</asp:ListItem>
                                                        <asp:ListItem>Siniestro</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleTextarea1">Describe tu reporte</label>
                                                    <asp:TextBox title="Describe tu reporte" MinLength="10" runat="server" class="form-control" ID="txtDescripcionReporte" Rows="6" TextMode="MultiLine"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Ingresa una breve descripción del reporte que deseas crear" ControlToValidate="txtDescripcionReporte" ForeColor="Red" ValidationGroup="CrearReporte" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                </div>
                                                <div style="float: right;">
                                                    <asp:Button ID="btnCrearReporte" runat="server" class="btn btn-primary" Text="Crear Reporte" OnClick="btnCrearReporte_Click" ValidationGroup="CrearReporte" />
                                                </div>
                                            </div>
                                                </ContentTemplate></asp:UpdatePanel>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- partial:../../partials/_footer.aspx -->
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
    <!-- Plugin js for this page-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script>
        $(window).on('load', function () {
            setTimeout(function () {
                $(".loader-page").css({ visibility: "hidden", opacity: "0" })
            }, 2000);

        });
  </script>
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
    <script src="../../library/dashboardCliente/js/data-table.js"></script>
    <script src="../../library/dashboardCliente/js/alerts.js"></script>
    <script src="../../library/dashboardCliente/js/avgrund.js"></script>
    <script src="../../library/dashboardCliente/js/tabs.js"></script>
    <!-- End custom js for this page-->
</body>


<!-- Mirrored from www.bootstrapdash.com/demo/skydash/template/demo/vertical-default-light/pages/tables/data-table.aspx by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 16 Mar 2021 01:57:53 GMT -->

</html>
