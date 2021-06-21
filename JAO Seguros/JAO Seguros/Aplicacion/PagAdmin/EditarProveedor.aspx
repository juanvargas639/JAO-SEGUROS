<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditarProveedor.aspx.cs" Inherits="JAO_Seguros.Aplicacion.PagAdmin.EditarProveedor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
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
    <link rel="stylesheet"
        href="../../library/dashboardAdmin/vendors/tempusdominus-bootstrap-4/tempusdominus-bootstrap-4.min.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="../../library/dashboardAdmin/css/vertical-layout-light/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="../../library/dashboardAdmin/images/favicon.ico" />
</head>
<body>
    <div class="loader-page"></div>
    <form id="FormEditarProveedor" runat="server">
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
                        <div class="row">
                            <div class="col-12 grid-margin">
                                <!--INICIO MIGA DE PAN-->
                                <ol class="breadcrumb" style="float: right;">
                                    <li class="breadcrumb-item"><a href="DefaultAdmin.aspx">Inicio</a></li>
                                    <li class="breadcrumb-item"><a href="Proveedores.aspx">Proveedores</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Editar proveedor</li>
                                </ol>
                                <!--FIN MIGA DE PAN-->
                                <!--INICIO de TABS-->
                                <ul class="nav nav-tabs" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active text-info" id="home-tab" data-toggle="tab" href="#home-1" role="tab"
                                            aria-controls="home-1" aria-selected="true">Información del Proveedor
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
                                        <asp:UpdatePanel ID="PanelEditarAdmin" runat="server">
                                            <ContentTemplate>
                                                <div class="card">
                                                    <div class="card-body">
                                                        <h4 class="card-title">Editar Aseguradora proveedora de servicios</h4>
                                                        <div class="form-group row">
                                                            <div class="col">
                                                                <label for="txtEditarNitProveedor" id="lbEditarNitProveedor">
                                                                    <label class="campoobligatorio">*</label>Nit.
                          Aseguradora Proveedor</label>
                                                                <asp:TextBox SingleMode="text" minlength="10" ID="txtEditarNit" name="txtEditarNitProveedor"
                                                                    runat="server" title="Ingresa un número de nit válido" placeholder="Ingresa el nit del proveedor"
                                                                    class="form-control" pattern="([0-9]{3}.[0-9]{3}.[0-9]{3}-[0-9]{1})" />
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ingresa el Nit. de la Aseguradora" ControlToValidate="txtEditarNit" ForeColor="Red" ValidationGroup="EditarAseguradora" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                            </div>
                                                            <div class="col">
                                                                <label for="txtEditarNombreProveedor" id="lbEditarNombreProveedor">
                                                                    <label class="campoobligatorio">*</label>Razón
                          Social de la Aseguradora Proveedor</label>
                                                                <asp:TextBox TextMode="SingleLine" ID="txtEditarNombre" name="txtEditarNombreProveedor"
                                                                    title="Nombre del Proveedor" runat="server" placeholder="Ingresa el nombre del Proveedor"
                                                                    class="form-control" />
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Ingresa el Nombre o Razón Social de la Aseguradora" ControlToValidate="txtEditarNombre" ForeColor="Red" ValidationGroup="EditarAseguradora" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>
                                                        <div class="form-group row">
                                                            <div class="col">
                                                                <label for="txtEditarDireccionProveedor" id="lbEditarDireccionProveedor">
                                                                    <label class="campoobligatorio">*</label>Dirección de Atención</label>
                                                                <asp:TextBox TextMode="SingleLine" ID="txtEditarDireccion" title="Dirección de Atención"
                                                                    name="txtEditarDireccionProveedor" runat="server"
                                                                    placeholder="Ingresa la dirección de atención del proveedor" class="form-control" />
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Ingresa la dirección de la empresa" ControlToValidate="txtEditarDireccion" ForeColor="Red" ValidationGroup="EditarAseguradora" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                            </div>
                                                            <div class="col">
                                                                <label for="txtEditarTelefonoProveedor" id="lbEditarTelefonoProveedor">
                                                                    <label class="campoobligatorio">*</label>Teléfono de Atención</label>
                                                                <asp:TextBox TextMode="SingleLine" ID="txtEditarTelefono" title="Teléfono de Atención"
                                                                    name="txtEditarTelefonoProveedor" runat="server"
                                                                    placeholder="Ingresa el teléfono de atención del proveedor" class="form-control" />
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Ingresa el teléfono de la empresa" ControlToValidate="txtEditarTelefono" ForeColor="Red" ValidationGroup="EditarAseguradora" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>
                                                        <div class="form-group row">
                                                            <div class="col">
                                                                <label for="txtEditarCorreoProveedor" id="lbtxtEditarCorreoProveedor">
                                                                    <label class="campoobligatorio">*</label>Correo
                          de Atención</label>
                                                                <asp:TextBox TextMode="Email" ID="txtEditarCorreo" title="Correo de Atención"
                                                                    name="txtEditarCorreoProveedor" runat="server"
                                                                    placeholder="Ingresa el correo de atención del proveedor" class="form-control" />
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Ingresa el correo de la aseguradora" ControlToValidate="txtEditarCorreo" ForeColor="Red" ValidationGroup="EditarAseguradora" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>
                                                        <div style="float: right;">
                                                            <asp:Button ID="btnEditar" runat="server" class="btn btn-primary" OnClick="btnEditar_Click" Text="Guardar Cambios"
                                                                 ValidationGroup="EditarAseguradora" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>
                                    <!--TABLA 2-->
                                    <div class="tab-pane fade" id="profile-1" role="tabpanel" aria-labelledby="profile-tab">
                                        <asp:UpdatePanel ID="UpdatePanelAccion" runat="server">
                                            <ContentTemplate>
                                                <div class="card">
                                                    <div class="card-body">
                                                        <div class="form-group row">
                                                            <div class="col">
                                                                <h4 class="card-title">Eliminar Proveedor</h4>
                                                                <p class="card-description">
                                                                    Eliminar aseguradora principal
                                                                </p>
                                                                <p>
                                                                    El proveedor no debe tener pólizas relacionadas para ejecutar esta acción.
                                                                </p>
                                                                <br>
                                                                <div>
                                                                    <asp:LinkButton ID="btnDeleteProveedor" runat="server" class="btn btn-danger btn-icon-text" OnClick="btnDeleteProveedor_Click" OnClientClick="return EliminarProveedor()">
                                                                        <i class="ti-close btn-icon-prepend"></i>Eliminar proveedor</asp:LinkButton>
                                                                </div>
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

                    <!-- main-panel ends -->
                </div>
                <!-- page-body-wrapper ends -->
            </div>
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
        function EliminarProveedor(ctl) {
            var defaultAction = $(ctl).prop("href");
            swal({
                title: "¿Desea eliminar el proveedor del sistema?",
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
                        text: "Eliminar proveedor",
                        value: true,
                        visible: true,
                        className: "btn btn-danger",
                        closeModal: true
                    }
                }
            }).then(function (isConfirm) {
                if (isConfirm) {
                    __doPostBack('<%= btnDeleteProveedor.UniqueID %>', "");
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
