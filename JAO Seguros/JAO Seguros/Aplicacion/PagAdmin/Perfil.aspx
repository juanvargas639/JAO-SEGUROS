<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="JAO_Seguros.Aplicacion.PagAdmin.Perfil" %>

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
    <!-- plugin css for this page -->
    <link rel="stylesheet" href="../../library/dashboardAdmin/vendors/jquery-bar-rating/css-stars.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="../../library/dashboardAdmin/css/vertical-layout-light/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="../../library/dashboardAdmin/images/favicon.ico" />
</head>
<body>
    <div class="loader-page"></div>
    <form id="formPerfilAdmin" runat="server">
        <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
        <div class="container-scroller">
            <!-- partial:../../partials/_navbar.html -->
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
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="border-bottom text-center pb-4">
                                                    <img src="../../library/dashboardAdmin/images/perfil.png" alt="profile"
                                                        class="img-lg rounded-circle mb-3" />
                                                    <div class="mb-3">
                                                        <h3>
                                                            <asp:Label ID="lbNombreAdminUsuario" runat="server" Text="label"></asp:Label>&nbsp;<asp:Label ID="lbApellidoAdminUsuario" runat="server" Text="label"></asp:Label></h3>
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
                                                            <asp:Label ID="lbIDAdminUsuario" runat="server" Text="label"></asp:Label>
                                                        </span>
                                                    </p>
                                                    <p class="clearfix">
                                                        <span class="float-left">Teléfono Corporativo
                          </span>
                                                        <span class="float-right text-muted">
                                                            <asp:Label ID="lbTelAdminUsuario" runat="server" Text="label"></asp:Label>
                                                        </span>
                                                    </p>
                                                    <p class="clearfix">
                                                        <span class="float-left">Correo
                          </span>
                                                        <span class="float-right text-muted">
                                                            <asp:Label ID="lbCorreoAdminUsuario" runat="server" Text="label"></asp:Label>
                                                        </span>
                                                    </p>
                                                    <p class="clearfix">
                                                        <span class="float-left">Rol
                          </span>
                                                        <span class="float-right text-muted">Administrador(a)
                          </span>
                                                    </p>
                                                    <p class="clearfix">
                                                        <span class="float-left">Representante Legal
                          </span>
                                                        <span class="float-right text-muted">
                                                            <asp:Label ID="lbRepresentanteAdminUsuario" runat="server" Text="label"></asp:Label>
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
                                                            <h4 class="card-title text-primary">Admin. JAO SEGUROS</h4>
                                                            <p>
                                                                Gestión de los proveedores de las pólizas, los clientes registrados, los asesores activos
                              y las cotizaciones recibidas.
                           
                                                            </p>
                                                            <img src="../../library/dashboardAdmin/images/admin.png" alt="sample" class="rounded mw-100" />
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
                                            <label class="campoobligatorio">*</label><label for="txtIDAdmin" id="lbIDAdminPerfil">
                                                ID
                        Administrador</label>
                                            <asp:TextBox ID="txtIDAdmin" runat="server" placeholder="Ingresa tu ID Admin."
                                                name="txtIDAdminPerfil" title="El ID debe tener dos letras mayúsculas seguido de tres números"
                                                TextMode="SingleLine" class="form-control" MinLength="5" MaxLength="5" pattern="([A-Z]{2}[0-9]{3})" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Ingresa tu ID designado" ControlToValidate="txtIDAdmin" CssClass="text-danger" SetFocusOnError="true" ValidationGroup="EditarAdmin" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="col">
                                            <label class="campoobligatorio">*</label><label for="txtRepresentante" id="lbRepresentantePerfil">
                                                Representante Legal</label>
                                            <asp:TextBox ID="txtRepresentante" runat="server"
                                                placeholder="Ingresa el nombre de tu Representante" name="txtRepresentantePerfil"
                                                title="Mínimo seis caracteres, solo letras" TextMode="SingleLine" class="form-control" pattern="[a-zA-ZÀ-ÿ\u00f1\u00d1]+(\s*[a-zA-ZÀ-ÿ\u00f1\u00d1]*)*[a-zA-ZÀ-ÿ\u00f1\u00d1 ]{6,254}" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Ingresa el nombre de tu representante legal" ControlToValidate="txtRepresentante" CssClass="text-danger" SetFocusOnError="true" ValidationGroup="EditarAdmin" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col">
                                            <label class="campoobligatorio">*</label><label for="txtNombre" id="lbNombrePerfil">
                                                Nombre(s)</label>
                                            <asp:TextBox ID="txtNombre" runat="server" placeholder="Ingresa tu nombre" name="txtNombrePerfil"
                                                title="Mínimo tres caracteres, solo letras" TextMode="SingleLine" class="form-control"
                                                pattern="[a-zA-ZÀ-ÿ\u00f1\u00d1]+(\s*[a-zA-ZÀ-ÿ\u00f1\u00d1]*)*[a-zA-ZÀ-ÿ\u00f1\u00d1]{3,254}" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Ingresa tus nombres" ControlToValidate="txtNombre" CssClass="text-danger" SetFocusOnError="true" ValidationGroup="EditarAdmin" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="col">
                                            <label class="campoobligatorio">*</label><label for="txtApellido" id="lbApellidoPerfil">
                                                Apellido(s)</label>
                                            <asp:TextBox ID="txtApellidoPerfil" runat="server" placeholder="Ingresa tu apellido"
                                                name="txtApellidoPerfil" title="Mínimo tres caracteres, solo letras" TextMode="SingleLine"
                                                class="form-control" pattern="[a-zA-ZÀ-ÿ\u00f1\u00d1]+(\s*[a-zA-ZÀ-ÿ\u00f1\u00d1]*)*[a-zA-ZÀ-ÿ\u00f1\u00d1]{3,254}" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Ingresa tus apellidos" ControlToValidate="txtApellidoPerfil" CssClass="text-danger form-text" SetFocusOnError="true" ValidationGroup="EditarAdmin" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col">
                                            <label class="campoobligatorio">*</label><label for="txtCorreo" id="lbCorreoPerfil">
                                                Correo
                        Corporativo</label>
                                            <asp:TextBox ID="txtCorreo" runat="server" placeholder="Ingresa tu correo corporativo"
                                                name="txtCorreoPerfil" title="Mi Correo Corporativo" TextMode="email" class="form-control" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Ingresa tu correo electrónico" ControlToValidate="txtCorreo" CssClass="text-danger" SetFocusOnError="true" ValidationGroup="EditarAdmin" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>

                                        </div>
                                        <div class="col">
                                            <label class="campoobligatorio">*</label><label for="txtTelPerfil" id="lbTelefonoPerfil">
                                                Teléfono
                        Corporativo</label>
                                            <asp:TextBox ID="txtTel" runat="server" placeholder="Ingresa tu teléfono corporativo"
                                                name="txtTelefonoPerfil" title="Mi telefono Corporativo" type="number" class="form-control" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Ingresa tu teléfono corporativo" ControlToValidate="txtTel" CssClass="text-danger" SetFocusOnError="true" ValidationGroup="EditarAdmin" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <asp:UpdatePanel ID="PANEL" runat="server">
                                        <ContentTemplate>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-light" data-dismiss="modal">Cerrar</button>
                                                <asp:Button ID="btnEditarPerfil" runat="server" class="btn btn-primary" Text="Guardar Cambios" ValidationGroup="EditarAdmin" OnClick="btnEditarPerfil_Click"></asp:Button>
                                            </div>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>
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
                                <h5 class="modal-title">Cambiar mi contraseña de ingreso</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div>
                                    <div class="form-group">
                                        <label class="campoobligatorio">*</label><label for="exampleInputUsername1">Nueva contraseña</label>
                                        <asp:TextBox runat="server" TextMode="Password" class="form-control" ID="txtPassword1"
                                            placeholder="Ingresa la nueva contraseña"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ingresa la nueva contraseña" ControlToValidate="txtPassword1" ForeColor="Red" ValidationGroup="CambiarClave" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label class="campoobligatorio">*</label><label for="exampleInputUsername1">Confirma nueva contraseña</label>
                                        <asp:TextBox runat="server" TextMode="Password" class="form-control" ID="txtPassword2"
                                            placeholder="Ingresa nuevamente la contraseña"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Ingresa nuevamente la nueva contraseña" ControlToValidate="txtPassword2" ForeColor="Red" ValidationGroup="CambiarClave" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
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
            </div>
            <!-- Modal Ends -->
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
        <script src="../../library/dashboardAdmin/vendors/sweetalert/sweetalert.min.js"></script>
        <script src="../../library/dashboardAdmin/vendors/jquery.avgrund/jquery.avgrund.min.js"></script>
        <script src="../../library/dashboardAdmin/vendors/jquery-bar-rating/jquery.barrating.min.js"></script>
        <!-- End plugin js for this page-->
        <!-- inject:js -->
        <script src="../../library/dashboardAdmin/js/off-canvas.js"></script>
        <script src="../../library/dashboardAdmin/js/hoverable-collapse.js"></script>
        <script src="../../library/dashboardAdmin/js/template.js"></script>
        <script src="../../library/dashboardAdmin/js/settings.js"></script>
        <script src="../../library/dashboardAdmin/js/todolist.js"></script>
        <!-- endinject -->
        <!-- Custom js for this page-->
        <script src="../../library/dashboardAdmin/js/profile-demo.js"></script>
        <script src="../../library/dashboardAdmin/js/avgrund.js"></script>
        <script src="../../library/dashboardAdmin/js/alerts.js"></script>
        <!-- End custom js for this page-->
    </form>
</body>
</html>
