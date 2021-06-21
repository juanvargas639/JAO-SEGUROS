<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="JAO_Seguros.Aplicacion.PagCliente.Perfil" %>

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
    <!-- plugin css for this page -->
    <link rel="stylesheet" href="../../library/dashboardCliente/vendors/jquery-bar-rating/css-stars.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="../../library/dashboardCliente/css/vertical-layout-light/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="../../library/dashboardCliente/images/favicon.ico" />
</head>

<body>
    <div class="loader-page"></div>
    <form id="FormPerfilCliente" runat="server">
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
                <!-- partial:../../partials/_settings-panel.html -->

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
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="border-bottom text-center pb-4">
                                                    <img src="../../library/dashboardCliente/images/perfil.png" alt="profile"
                                                        class="img-lg rounded-circle mb-3" />
                                                    <div class="mb-3">
                                                        <h3>
                                                            <asp:Label ID="lbNombreClienteUsuario" runat="server" Text="label"></asp:Label>&nbsp;<asp:Label ID="lbApellidoClienteUsuario" runat="server" Text="label"></asp:Label></h3>
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
                                                        <span class="float-left">
                                                            <asp:Label ID="lbTipoDocumentoClienteUsuario" runat="server" Text="label"></asp:Label>
                                                        </span>
                                                        <span class="float-right text-muted">
                                                            <asp:Label ID="lbDocumentoClienteUsuario" runat="server" Text="label"></asp:Label>
                                                        </span>
                                                    </p>
                                                    <p class="clearfix">
                                                        <span class="float-left">Fecha Expedición Documento
                          </span>
                                                        <span class="float-right text-muted">
                                                            <asp:Label ID="lbFechaExpClienteUsuario" runat="server" Text="label"></asp:Label>
                                                        </span>
                                                    </p>
                                                    <p class="clearfix">
                                                        <span class="float-left">Ciudad de Nacimiento
                          </span>
                                                        <span class="float-right text-muted">
                                                            <asp:Label ID="lbCiudadNacimientoClienteUsuario" runat="server" Text="label"></asp:Label>
                                                        </span>
                                                    </p>
                                                    <p class="clearfix">
                                                        <span class="float-left">Dirección Residencia
                          </span>
                                                        <span class="float-right text-muted">
                                                            <asp:Label ID="lbDireccionResidenciaClienteUsuario" runat="server" Text="label"></asp:Label>
                                                        </span>
                                                    </p>
                                                    <p class="clearfix">
                                                        <span class="float-left">Teléfono Fijo
                          </span>
                                                        <span class="float-right text-muted">
                                                            <asp:Label ID="lbTelFijoClienteUsuario" runat="server" Text="label"></asp:Label>
                                                        </span>
                                                    </p>
                                                    <p class="clearfix">
                                                        <span class="float-left">Género
                          </span>
                                                        <span class="float-right text-muted">
                                                            <asp:Label ID="lbGeneroClienteUsuario" runat="server" Text="label"></asp:Label>
                                                        </span>
                                                    </p>
                                                    <p class="clearfix">
                                                        <span class="float-left">Teléfono Celular
                          </span>
                                                        <span class="float-right text-muted">
                                                            <asp:Label ID="lbTelCelularClienteUsuario" runat="server" Text="label"></asp:Label>
                                                        </span>
                                                    </p>
                                                    <p class="clearfix">
                                                        <span class="float-left">ID Asesor
                          </span>
                                                        <span class="float-right text-muted">
                                                            <asp:Label ID="lbIDAsesorClienteUsuario" runat="server" Text="label"></asp:Label>
                                                        </span>
                                                    </p>
                                                    <p class="clearfix">
                                                        <span class="float-left">Mi Asesor
                          </span>
                                                        <span class="float-right text-muted">
                                                            <asp:Label ID="lbNombreAsesorClienteUsuario" runat="server" Text="label"></asp:Label>&nbsp;<asp:Label ID="lbApellidoAsesorClienteUsuario" runat="server" Text="label"></asp:Label>
                                                        </span>
                                                    </p>
                                                </div>
                                                <button onserverclick="btnCerrarSesion_ServerClick" runat="server" class="btn btn-primary btn-block btn-icon-text mb-2"><i class="ti-shift-right btn-icon-prepend"></i>Cerrar Sesión</button>
                                            </div>
                                            <div class="col-lg-8">
                                                <div class="mt-4 py-2 border-top border-bottom">
                                                    <ul class="nav profile-navbar">
                                                        <li class="nav-item">
                                                            <a class="nav-link" href="#" data-toggle="modal" data-target="#exampleModal-5">
                                                                <i class="ti-pencil-alt"></i>
                                                                Editar Contacto
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
                                                            <h4 class="card-title text-primary">Cliente. JAO SEGUROS</h4>
                                                            <p>
                                                                Consulta el estado de tus pólizas y descarga el PDF de ellas. Crea reportes si tienes una sugerencia, petición o reclamo que deseas comunicar al asesor. 
                           
                                                            </p>
                                                            <img src="../../library/dashboardCliente/images/Cliente.svg" alt="sample" class="rounded mw-100" />
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
                                    <h4 class="modal-title" id="ModalLabel">Mis datos de contacto</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <div class="form-group row">
                                        <div class="col">
                                            <label for="txtdireccionResidencia" id="lbdireccionResidencia">
                                                <label class="campoobligatorio">*</label>Dirección de residencia</label>
                                            <asp:TextBox ID="txtdireccionResidencia" runat="server" placeholder="Ingresa tu dirección de residencia" name="txtdireccionResidencia"
                                                title="Dirección donde vives actualmente" TextMode="SingleLine" class="form-control" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ingresa tu dirección de residencia" ControlToValidate="txtdireccionResidencia" ForeColor="Red" ValidationGroup="PerfilCliente" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="col">
                                            <label for="txttelCelular" id="lbtelCelular">
                                                <label class="campoobligatorio">*</label>Teléfono celular</label>
                                            <asp:TextBox ID="txttelCelular" runat="server" placeholder="Ingresa tu número celular"
                                                name="txttelCelular" title="Número de Teléfono Celular" TextMode="number"
                                                class="form-control" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Ingresa tu número de teléfono celular" ControlToValidate="txttelCelular" ForeColor="Red" ValidationGroup="PerfilCliente" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col">
                                            <label for="txttelfijo" id="lbttelfijo">
                                                Teléfono fijo</label>
                                            <asp:TextBox ID="txttelfijo" runat="server" placeholder="Ingresa tu número de teléfono fijo (Opcional)" name="txttelfijo"
                                                title="Número de Teléfono	Fijo" TextMode="number" class="form-control" />
                                        </div>
                                        <div class="col">
                                            <label for="txttelProfesion" id="lbtelProfesion">Teléfono Laboral</label>
                                            <asp:TextBox ID="txttelProfesion" runat="server" placeholder="Ingresa tu número de teléfono laboral(Opcional)" name="txttelProfesion" title="Número de Teléfono del Trabajo" TextMode="SingleLine" CssClass="form-control" Font-Size="Small" Font-Bold="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <small id="emailHelp" class="form-text text-muted">Si debes cambiar un dato más importante, comunícate con tu asesor o crea un reporte.</small>
                                </div>
                                <asp:UpdatePanel ID="PANEL" runat="server">
                                    <ContentTemplate>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-light" data-dismiss="modal">Cerrar</button>
                                            <asp:Button ID="btnEditarPerfil" runat="server" class="btn btn-primary" Text="Guardar Cambios" ValidationGroup="PerfilCliente" OnClick="btnEditarPerfil_Click"></asp:Button>
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
                                    <h5 class="modal-title">Cambiar mi contraseña de ingreso a JAO Seguros</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label for="exampleInputUsername1">Nueva contraseña</label>
                                            <asp:TextBox runat="server" TextMode="Password" class="form-control" ID="txtPassword1"
                                                placeholder="Digita la nueva contraseña"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Ingresa la nueva contraseña" ControlToValidate="txtPassword1" ForeColor="Red" ValidationGroup="CambiarClave" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputUsername1">Repita la nueva contraseña</label>
                                            <asp:TextBox runat="server" TextMode="Password" class="form-control" ID="txtPassword2"
                                                placeholder="Digita nuevamente la contraseña"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Ingresa nuevamente la nueva contraseña" ControlToValidate="txtPassword2" ForeColor="Red" ValidationGroup="CambiarClave" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
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
    <script src="../../library/dashboardCliente/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page-->
    <script src="../../library/dashboardCliente/vendors/jquery-bar-rating/jquery.barrating.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script src="../../library/dashboardAdmin/vendors/sweetalert/sweetalert.min.js"></script>
    <script>
        $(window).on('load', function () {
            setTimeout(function () {
                $(".loader-page").css({ visibility: "hidden", opacity: "0" })
            }, 2000);

        });
  </script>
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
     <script src="../../library/dashboardAdmin/js/avgrund.js"></script>
        <script src="../../library/dashboardAdmin/js/alerts.js"></script>
    <!-- End custom js for this page-->
</body>


<!-- Mirrored from www.bootstrapdash.com/demo/skydash/template/demo/vertical-default-light/pages/samples/profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 16 Mar 2021 01:58:08 GMT -->

</html>
