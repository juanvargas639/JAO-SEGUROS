<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="JAO_Seguros.Aplicacion.PagAsesor.Perfil1" %>

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
    <!-- plugin css for this page -->
    <link rel="stylesheet" href="../../library/dashboardAsesor/vendors/jquery-bar-rating/css-stars.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="../../library/dashboardAsesor/css/vertical-layout-light/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="../../library/dashboardAsesor/images/favicon.ico" />
</head>

<body>
    <div class="loader-page"></div>
    <form id="FormPerfil" runat="server">
        <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
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
                <!-- partial:../../partials/_sidebar.html -->
                <nav class="sidebar sidebar-offcanvas" id="sidebar">
                    <ul class="nav">
                        <li class="nav-item">
                            <a class="nav-link" href="DefaultAsesor.aspx">
                                <i class="icon-grid menu-icon"></i>
                                <span class="menu-title">Dashboard</span>
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
                            <a class="nav-link" href="Reportes.aspx">
                                <i class="icon-stack menu-icon"></i>
                                <span class="menu-title">Reportes</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Cotizaciones.aspx">
                                <i class="icon-paper menu-icon"></i>
                                <span class="menu-title">Cotizaciones</span>
                            </a>
                        </li>
                    </ul>
                </nav>
                <!-- partial -->
                <div class="main-panel">
                    <div class="content-wrapper">
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="border-bottom text-center pb-4">
                                                    <img src="../../library/dashboardAsesor/images/perfil.png" alt="profile"
                                                        class="img-lg rounded-circle mb-3" />
                                                    <div class="mb-3">
                                                        <h3>
                                                            <asp:Label ID="lbNombreAsesorPerfil" runat="server" Text="label"></asp:Label>&nbsp;<asp:Label ID="lbApellidoAsesorPerfil" runat="server" Text="label"></asp:Label>
                                                        </h3>
                                                        <div class="d-flex align-items-center justify-content-center">
                                                            <select id="profile-rating" name="rating">
                                                                <option value="1">1</option>
                                                                <option value="2">2</option>
                                                                <option value="3">3</option>
                                                                <option value="4">4</option>
                                                                <option value="5" selected>5</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="py-4">
                                                    <p class="clearfix">
                                                        <span class="float-left">Estado
                                                        </span>
                                                        <span class="float-right text-muted">Activ@
                                                        </span>
                                                    </p>
                                                    <p class="clearfix">
                                                        <span class="float-left">ID
                                                        </span>
                                                        <span class="float-right text-muted">
                                                            <asp:Label ID="lbIDPerfilAsesor" runat="server" Text="label"></asp:Label>
                                                        </span>
                                                    </p>
                                                    <p class="clearfix">
                                                        <span class="float-left">ID Administrador Jefe
                                                        </span>
                                                        <span class="float-right text-muted">
                                                            <asp:Label ID="lbIDAdminPerfilAsesor" runat="server" Text="label"></asp:Label>
                                                        </span>
                                                    </p>
                                                    <p class="clearfix">
                                                        <span class="float-left">Teléfono Corporativo
                                                        </span>
                                                        <span class="float-right text-muted">
                                                            <asp:Label ID="lbTelPerfilAsesor" runat="server" Text="label"></asp:Label>
                                                        </span>
                                                    </p>
                                                    <p class="clearfix">
                                                        <span class="float-left">Rol
                                                        </span>
                                                        <span class="float-right text-muted">
                                                            <asp:Label ID="lbRolPerfilAsesor" runat="server" Text="label"></asp:Label>
                                                        </span>
                                                    </p>
                                                </div>
                                                <button onserverclick="btnCerrarSesion_ServerClick" runat="server" class="btn btn-primary btn-block btn-icon-text mb-2"><i class="ti-shift-right btn-icon-prepend"></i>Cerrar Sesión</button>
                                            </div>
                                            <div class="col-lg-8">
                                                <div class="mt-4 py-2 border-top border-bottom">
                                                    <ul class="nav profile-navbar">
                                                        <li class="nav-item">
                                                            <a class="nav-link active" href="#">
                                                                <i class="ti-user"></i>
                                                                Rol
                                                            </a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a class="nav-link" href="#" data-toggle="modal" data-target="#exampleModal-5">
                                                                <i class="ti-pencil-alt"></i>
                                                                Editar Información
                                                            </a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a class="nav-link" href="#" data-toggle="modal" data-target="#exampleModal-4">
                                                                <i class="ti-panel"></i>
                                                                Cambiar Contraseña
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="profile-feed">
                                                    <div class="d-flex align-items-start profile-feed-item">
                                                        <div class="ml-4">
                                                            <h4 class="card-title text-primary">Asesor. JAO SEGUROS</h4>
                                                            <p>
                                                                Gestión de los clientes y los reportes asignados, además podrá responder y cambiar el
                              estado de las
                              cotizaciones recibidas.
                                                            </p>
                                                            <img src="../../library/dashboardAsesor/images/asesor.png" alt="sample"
                                                                class="rounded mw-100" />
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
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- content-wrapper ends -->
                    <!-- Modal starts -->
                    <div class="modal fade" id="exampleModal-5" tabindex="-1" role="dialog" aria-labelledby="ModalLabel"
                        aria-hidden="true">
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title" id="ModalLabel">Mis Datos</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <div class="form-group row">
                                        <div class="col">
                                            <label class="campoobligatorio">*</label><label for="txtPerfilIDA" id="lbPerfilIDAsesor">
                                                ID Asesor</label>
                                            <asp:TextBox ID="txtPerfilIDA" runat="server" name="txtPerfilIDAsesor"
                                                title="El ID debe tener tres números seguido de dos letras mayúsculas"
                                                placeholder="Ingrese tu ID asignado" TextMode="SingleLine" MinLength="5" MaxLength="5" class="form-control"
                                                pattern="([0-9]{3}[A-Z]{2})" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Ingresa tu ID Asignado" ControlToValidate="txtPerfilIDA" ForeColor="Red" ValidationGroup="PerfilAsesor" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="col">
                                            <label for="txtPerfilIDAdminAsesor" id="lbPerfilIDAdminAsesor">
                                                ID Admin. Jefe</label>
                                            <asp:TextBox ID="txtIDAdminAsesor" runat="server" name="txtIDAdminAsesor"
                                                title="ID Administrador Jefe" TextMode="SingleLine" class="form-control" ReadOnly="true" BackColor="White" />
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col">
                                            <label class="campoobligatorio">*</label><label for="txtPerfilNombre" id="lbPerfilNombreAsesor">
                                                Nombre(s)</label>
                                            <asp:TextBox ID="txtPerfilNombre" name="txtPerfilNombreAsesor" runat="server"
                                                title="Mínimo tres caracteres, solo letras" placeholder="Ingresa tus nombres"
                                                TextMode="SingleLine" class="form-control" pattern="[a-zA-ZÀ-ÿ\u00f1\u00d1]+(\s*[a-zA-ZÀ-ÿ\u00f1\u00d1]*)*[a-zA-ZÀ-ÿ\u00f1\u00d1 ]{3,254}" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Ingresa tus nombres" ControlToValidate="txtPerfilNombre" ForeColor="Red" ValidationGroup="PerfilAsesor" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="col">
                                            <label class="campoobligatorio">*</label><label for="txtPerfilApellido" id="lbPerfilApellidoAsesor">
                                                Apellido(s)</label>
                                            <asp:TextBox ID="txtPerfilApellido" name="txtPerfilApellido" runat="server"
                                                title="Mínimo tres caracteres, solo letras" placeholder="Ingresa tus apellidos"
                                                TextMode="SingleLine" class="form-control" pattern="[a-zA-ZÀ-ÿ\u00f1\u00d1]+(\s*[a-zA-ZÀ-ÿ\u00f1\u00d1 ]*)*[a-zA-ZÀ-ÿ\u00f1\u00d1 ]{3,254}" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Ingresa tus apellidos" ControlToValidate="txtPerfilApellido" ForeColor="Red" ValidationGroup="PerfilAsesor" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col">
                                            <label class="campoobligatorio">*</label><label for="txtPerfilTel" id="lbPerfilTelAsesor">
                                                Teléfono
                      Corporativo</label>
                                            <asp:TextBox ID="txtPerfilTel" name="txtPerfilTelAsesor" runat="server"
                                                placeholder="Ingresa el teléfono corporativo" title="Teléfono Asesor" TextMode="number"
                                                class="form-control" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Ingresa tu número teléfonico" ControlToValidate="txtPerfilTel" ForeColor="Red" ValidationGroup="PerfilAsesor" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="col">
                                            <label for="txtRolAsesor" id="lbPerfilRolAsesor">
                                                Rol en el
                      Sistema</label>
                                            <asp:TextBox ID="txtRolAsesor" runat="server" name="txtRolAsesor"
                                                title="Rol en JAO SEGUROS" TextMode="SingleLine" class="form-control" ReadOnly="true" BackColor="White" />
                                        </div>
                                    </div>
                                </div>
                                <asp:UpdatePanel ID="PANEL" runat="server">
                                    <ContentTemplate>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-light" data-dismiss="modal">Cerrar</button>
                                            <asp:Button ID="btnEditarPerfil" runat="server" class="btn btn-primary" Text="Guardar Cambios" ValidationGroup="PerfilAsesor" OnClick="btnEditarPerfil_Click"></asp:Button>
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                        </div>
                    </div>
                    <!-- Modal Ends -->
                    <!-- Modal starts -->
                    <div class="modal fade" id="exampleModal-4" tabindex="-1" role="dialog" aria-labelledby="ModalLabel"
                        aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Cambiar mi contraseña</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <div>
                                        <div class="form-group">
                                            <label class="campoobligatorio">*</label><label for="exampleInputUsername1">Nueva contraseña</label>
                                            <asp:TextBox runat="server" TextMode="Password" class="form-control" ID="txtPassword1"
                                                placeholder="Digita la nueva contraseña"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ingresa la nueva contraseña" ControlToValidate="txtPassword1" ForeColor="Red" ValidationGroup="CambiarClave" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label class="campoobligatorio">*</label><label for="exampleInputUsername1">Confirma nueva contraseña</label>
                                            <asp:TextBox runat="server" TextMode="Password" class="form-control" ID="txtPassword2"
                                                placeholder="Digita nuevamente la contraseña"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Ingresa nuevamente la nueva contraseña" ControlToValidate="txtPassword2" ForeColor="Red" ValidationGroup="CambiarClave" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                </div>
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-light" data-dismiss="modal">Cerrar</button>
                                            <asp:Button runat="server" ID="btnCambiarClave" class="btn btn-primary" Text="Guardar Contraseña" ValidationGroup="CambiarClave" OnClick="btnCambiarClave_Click"></asp:Button>
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                        </div>
                    </div>
                    <!-- Modal Ends -->
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
    <script src="../../library/dashboardAsesor/vendors/jquery-bar-rating/jquery.barrating.min.js"></script>
    <script src="../../library/dashboardAdmin/vendors/sweetalert/sweetalert.min.js"></script>
    <!-- End plugin js for this page-->
    <!-- inject:js -->
    <script src="../../library/dashboardAsesor/js/off-canvas.js"></script>
    <script src="../../library/dashboardAsesor/js/hoverable-collapse.js"></script>
    <script src="../../library/dashboardAsesor/js/template.js"></script>
    <script src="../../library/dashboardAsesor/js/settings.js"></script>
    <script src="../../library/dashboardAsesor/js/todolist.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page-->
    <script src="../../library/dashboardAsesor/js/profile-demo.js"></script>
     <script src="../../library/dashboardAdmin/js/avgrund.js"></script>
        <script src="../../library/dashboardAdmin/js/alerts.js"></script>
    <!-- End custom js for this page-->
</body>


<!-- Mirrored from www.bootstrapdash.com/demo/skydash/template/demo/vertical-default-light/pages/samples/profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 16 Mar 2021 01:58:08 GMT -->

</html>
