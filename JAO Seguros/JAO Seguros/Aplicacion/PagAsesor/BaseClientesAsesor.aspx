<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BaseClientesAsesor.aspx.cs" Inherits="JAO_Seguros.Aplicacion.PagAsesor.BaseClientesAsesor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="es-419">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Asesor JAO Seguros</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../../library/dashboardAsesor/vendors/feather/feather.css">
    <link rel="stylesheet" href="../../library/dashboardAsesor/vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" href="../../library/dashboardAsesor/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="../../library/dashboardAsesor/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="../../library/dashboardAsesor/css/vertical-layout-light/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="../../library/dashboardAsesor/images/favicon.ico" />
</head>
<body>
    <div class="loader-page"></div>
    <form id="FormClientes" runat="server">
        <div class="container-scroller">
            <!-- partial:../../partials/_navbar.html -->
            <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
                <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
                    <a class="navbar-brand brand-logo mr-5" href="DefaultAsesor.aspx">
                        <img
                            src="../../library/dashboardAsesor/images/logo.png" class="mr-2" alt="logo" /></a>
                    <a class="navbar-brand brand-logo-mini" href="DefaultAsesor.aspx">
                        <img
                            src="../../library/dashboardAsesor/images/logo-mini.png" alt="logo" /></a>
                </div>
                <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
                    <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                        <span class="icon-menu"></span>
                    </button>
                    <ul class="navbar-nav navbar-nav-right">
                        <li class="nav-item nav-profile dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
                                <img src="../../library/dashboardAsesor/images/perfil.png" alt="profile" />
                            </a>
                            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
                                <a class="dropdown-item" href="Perfil.aspx" style="color: #2A7A82;">
                                    <i class="ti-settings text-info"></i>
                                    Perfil
                                </a>
                               <button id="btnCerrarSesion" class="dropdown-item" runat="server" onserverclick="btnCerrarSesion_ServerClick" style="color: #2A7A82;">
                                    <i class="ti-power-off text-info"></i>
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
                            <a class="nav-link" href="DefaultAsesor.aspx">
                                <i class="icon-grid menu-icon"></i>
                                <span class="menu-title">Inicio</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="BaseClientesAsesor.aspx">
                                <i class="icon-head menu-icon"></i>
                                <span class="menu-title">Mis Clientes</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Polizas.aspx">
                                <i class="icon-lock menu-icon"></i>
                                <span class="menu-title">Seguros</span>
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
                        <div class="card">
                            <div class="card-body">
                                <a type="button" class="btn btn-primary btn-icon-text" href="CrearCliente.aspx" style="float: right;">
                                    <i class="ti-plus btn-icon-prepend"></i>
                                    Cliente
                                </a>
                                <h4 class="card-title">Mis clientes asignados</h4>
                                <br>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="table-responsive">
                                            <asp:GridView ID="TablaClientesAsesoresActivos" CssClass="table" GridLines="None" runat="server" DataKeyNames="DocumentoCliente" BorderStyle="None" RowStyle-BorderColor="#CED4DA" RowStyle-BorderStyle="Solid" RowStyle-BorderWidth="0.5pt" AutoGenerateColumns="false">
                                                <Columns>
                                                    <asp:BoundField HeaderText="N° Documento" DataField="DocumentoCliente" />
                                                    <asp:BoundField HeaderText="Nombre" DataField="NombreCliente" />
                                                    <asp:BoundField HeaderText="Apellido" DataField="ApellidoCliente" />
                                                    <asp:BoundField HeaderText="Dirección Residencia" DataField="DireccionResidenciaCliente" />
                                                    <asp:BoundField HeaderText="Teléfono Fijo" DataField="TelefonoFijoCliente" />
                                                    <asp:BoundField HeaderText="Teléfono Celular" DataField="TelefonoCelularCliente" />
                                                    <asp:BoundField HeaderText="Tipo de Documento" DataField="TipoDocumentoCliente" />
                                                    <asp:BoundField HeaderText="Fecha de Expedición" DataField="FechaExpedicionDocumentoCliente" SortExpression="FechaExpedicionDocumentoCliente" DataFormatString="{0:d}"  />
                                                    <asp:BoundField HeaderText="Género" DataField="GeneroCliente" />
                                                    <asp:BoundField HeaderText="Ciudad de Nacimiento" DataField="CiudadNacimientoCliente" />
                                                    <asp:BoundField HeaderText="Dirección de Trabajo" DataField="DireccionTrabajoCliente" />
                                                    <asp:BoundField HeaderText="Teléfono de Trabajo" DataField="TelefonoTrabajoCliente" />
                                                    <asp:BoundField HeaderText="Profesión" DataField="EmpleoCliente" />
                                                    <asp:BoundField HeaderText="Empleado a cargo" DataField="IDEmpleado" />
                                                    <asp:TemplateField>
                                                        <HeaderTemplate>
                                                            <asp:Label ID="lblAction" runat="server" Text="Acciones"></asp:Label>
                                                        </HeaderTemplate>
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="lnkBtnEditar" runat="server"
                                                                CommandName="rowEdit" OnClick="lnkBtnEdit_Click" ToolTip="Ver detalles"><img src="../../library/dashboardAsesor/images/Ver.svg" alt="ver registro" style="width: 30px; height: 30px; padding: 2px;" /></asp:LinkButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
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
    <script src="../../library/dashboardAsesor/vendors/js/vendor.bundle.base.js"></script>
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
    <script src="../../library/dashboardAsesor/vendors/datatables.net/jquery.dataTables.js"></script>
    <script src="../../library/dashboardAsesor/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
    <script src="../../library/dashboardAsesor/vendors/sweetalert/sweetalert.min.js"></script>
    <script src="../../library/dashboardAsesor/vendors/jquery.avgrund/jquery.avgrund.min.js"></script>
    <!-- End plugin js for this page-->
    <!-- inject:js -->
    <script src="../../library/dashboardAsesor/js/off-canvas.js"></script>
    <script src="../../library/dashboardAsesor/js/hoverable-collapse.js"></script>
    <script src="../../library/dashboardAsesor/js/template.js"></script>
    <script src="../../library/dashboardAsesor/js/settings.js"></script>
    <script src="../../library/dashboardAsesor/js/todolist.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page-->
    <script src="../../library/dashboardAsesor/js/data-table.js"></script>
    <script src="../../library/dashboardAsesor/js/alerts.js"></script>
    <script src="../../library/dashboardAsesor/js/avgrund.js"></script>
    <!-- End custom js for this page-->
</body>


<!-- Mirrored from www.bootstrapdash.com/demo/skydash/template/demo/vertical-default-light/pages/tables/data-table.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 16 Mar 2021 01:57:53 GMT -->

</html>
