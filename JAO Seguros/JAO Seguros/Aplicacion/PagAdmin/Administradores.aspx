<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Administradores.aspx.cs" Inherits="JAO_Seguros.Aplicacion.PagAdmin.Administradores1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="es-419">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin JAO Seguros</title>
    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/feather/feather.css">
    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
    <link rel="stylesheet" href="../../library/dashboardAdmin/css/vertical-layout-light/style.css">
    <link rel="shortcut icon" href="../../library/dashboardAdmin/images/favicon.ico" />
</head>
<body>
    <div class="loader-page"></div>
    <form id="FormAdministradores" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="container-scroller">
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
            <div class="container-fluid page-body-wrapper">
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
                <div class="main-panel">
                    <div class="content-wrapper">
                        <div class="card">
                            <div class="card-body">
                                <a class="btn btn-primary btn-icon-text" href="CrearAdmin.aspx" style="float: right;">
                                    <i class="ti-plus btn-icon-prepend"></i>
                                    Administrador
                                </a>
                                <h4 class="card-title">Administradores activos</h4>
                                <br>
                                <!--INICIO TABLA ADMINISTRADORES-->
                                <asp:UpdatePanel ID="UpdateTabla" runat="server"><ContentTemplate>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="table-responsive">
                                            <asp:GridView ID="TablaAdministradoresActivos" DataKeyNames="IDAdministrador" CssClass="table" GridLines="None" runat="server" BorderStyle="None" RowStyle-BorderColor="#CED4DA" RowStyle-BorderStyle="Solid" RowStyle-BorderWidth="0.5pt" AutoGenerateColumns="false">
                                                <Columns>
                                                    <asp:BoundField HeaderText="ID Administrador" DataField="IDAdministrador" />
                                                    <asp:BoundField HeaderText="Nombre" DataField="NombreAdmin" />
                                                    <asp:BoundField HeaderText="Apellido" DataField="ApellidoAdmin" />
                                                    <asp:BoundField HeaderText="Representante Legal" DataField="RepresentanteLegalAdmin" />
                                                    <asp:BoundField HeaderText="Correo" DataField="CorreoAdmin" />
                                                    <asp:BoundField HeaderText="Teléfono" DataField="TelefonoAdmin" />
                                                    <asp:TemplateField>
                                                        <HeaderTemplate>
                                                            <asp:Label ID="lblAction" runat="server" Text="Acción" Style="text-align:center"></asp:Label>
                                                        </HeaderTemplate>
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="lnkBtnEdit" runat="server" CommandArgument='<%# Eval("IDAdministrador")%>'
                                                                 CommandName="rowEdit" OnClick="lnkBtnEdit_Click" ToolTip="Ver detalles"><img src="../../library/dashboardAdmin/images/Ver.svg" alt="ver registro" style="width: 30px; height: 30px; padding: 2px;" /></asp:LinkButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                        </div>
                                    </div>
                                </div>
                                    </ContentTemplate></asp:UpdatePanel>
                                <!--FIN TABLA ADMINISTRADORES-->
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
                </div>
            </div>
        </div>
    </form>
    <!-- page-body-wrapper ends -->
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
    <script src="../../library/dashboardAdmin/vendors/datatables.net/jquery.dataTables.js"></script>
    <script src="../../library/dashboardAdmin/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
    <script src="../../library/dashboardAdmin/vendors/sweetalert/sweetalert.min.js"></script>
    <script src="../../library/dashboardAdmin/vendors/jquery.avgrund/jquery.avgrund.min.js"></script>
    <script src="../../library/dashboardAdmin/vendors/jquery-validation/jquery.validate.min.js"></script>
    <script src="../../library/dashboardAdmin/vendors/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>
    <!-- End plugin js for this page-->
    <!-- inject:js -->
    <script src="../../library/dashboardAdmin/js/off-canvas.js"></script>
    <script src="../../library/dashboardAdmin/js/hoverable-collapse.js"></script>
    <script src="../../library/dashboardAdmin/js/template.js"></script>
    <script src="../../library/dashboardAdmin/js/settings.js"></script>
    <script src="../../library/dashboardAdmin/js/todolist.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page-->
    <script src="../../library/dashboardAdmin/js/data-table.js"></script>
    <script src="../../library/dashboardAdmin/js/alerts.js"></script>
    <script src="../../library/dashboardAdmin/js/avgrund.js"></script>
    <script src="../../library/dashboardAdmin/js/form-validation.js"></script>
    <script src="../../library/dashboardAdmin/js/bt-maxLength.js"></script>
    <!-- End custom js for this page-->
</body>


<!-- Mirrored from www.bootstrapdash.com/demo/skydash/template/demo/vertical-default-light/pages/tables/data-table.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 16 Mar 2021 01:57:53 GMT -->

</html>


