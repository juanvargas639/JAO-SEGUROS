﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearAsesor.aspx.cs" Inherits="JAO_Seguros.Aplicacion.PagAdmin.CrearAsesor" %>

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
    <form id="FormCrearAsesor" runat="server">
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
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="DefaultAdmin.aspx">Inicio</a></li>
                                    <li class="breadcrumb-item"><a href="Asesores.aspx">Asesores</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Crear asesor</li>
                                </ol>
                                <!--FIN MIGA DE PAN-->
                                <asp:UpdatePanel ID="PanelCrearAsesor" runat="server">
                                    <ContentTemplate>
                                        <div class="card">
                                            <div class="card-body">
                                                <h4 class="card-title">Crear nuevo asesor</h4>
                                                <div class="form-group row">
                                                    <div class="col">
                                                        <label class="campoobligatorio">*</label><label for="txtCrearIDA" id="lbCrearIDAsesor">
                                                            ID Asesor</label>
                                                        <asp:TextBox ID="txtCrearIDA" runat="server" name="txtCrearIDAsesor"
                                                            title="El ID debe tener tres números seguido de dos letras mayúsculas"
                                                            placeholder="Ingresa el ID del nuevo Asesor" MinLength="5" MaxLength="5" TextMode="SingleLine" class="form-control"
                                                            pattern="([0-9]{3}[A-Z]{2})" />
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Ingresa el ID del asesor" ControlToValidate="txtCrearIDA" ForeColor="Red" ValidationGroup="CrearAsesor" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                    </div>
                                                    <div class="col">
                                                        <label class="campoobligatorio">*</label><label for="txtCrearIDAdminAsesor" id="lbCrearIDAdminAsesor">
                                                            ID Admin. Jefe</label>
                                                        <div class="input-group">
                                                            <div class="input-group-prepend">
                                                                <asp:DropDownList runat="server" class="btn btn-sm btn-outline-primary" ID="listaAdmin" OnSelectedIndexChanged="listaAdmin_SelectedIndexChanged" AutoPostBack="true">
                                                                    <asp:ListItem Value="">--Seleccione--</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </div>
                                                            <asp:TextBox ID="txtCrearIDAdAsesor" name="txtCrearIDAdminAsesor" runat="server"
                                                                placeholder="Ingresa el ID del Admin. Jefe" title="ID Admin. a cargo" TextMode="SingleLine"
                                                                class="form-control"></asp:TextBox>
                                                        </div>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Ingresa el ID del administrador jefe" ControlToValidate="txtCrearIDAdAsesor" ForeColor="Red" ValidationGroup="CrearAsesor" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col">
                                                        <label class="campoobligatorio">*</label><label for="txtCrearNombre" id="lbCrearNombreAsesor">
                                                            Nombre(s)</label>
                                                        <asp:TextBox ID="txtCrearNombre" name="txtCrearNombreAsesor" runat="server"
                                                            title="Mínimo tres caracteres, solo letras" placeholder="Ingresa el nombre del nuevo Asesor"
                                                            TextMode="SingleLine" class="form-control" pattern="[a-zA-ZÀ-ÿ\u00f1\u00d1]+(\s*[a-zA-ZÀ-ÿ\u00f1\u00d1]*)*[a-zA-ZÀ-ÿ\u00f1\u00d1 ]{2,254}" />
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Ingresa los nombres del asesor" ControlToValidate="txtCrearNombre" ForeColor="Red" ValidationGroup="CrearAsesor" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                    </div>
                                                    <div class="col">
                                                        <label class="campoobligatorio">*</label><label for="txtCrearApellido" id="lbCrearApellidoAsesor">
                                                            Apellido(s)</label>
                                                        <asp:TextBox ID="txtCrearApellido" name="txtCrearApellido" runat="server"
                                                            title="Mínimo tres caracteres, solo letras" placeholder="Ingresa el apellido del nuevo Asesor"
                                                            TextMode="SingleLine" class="form-control" pattern="[a-zA-ZÀ-ÿ\u00f1\u00d1]+(\s*[a-zA-ZÀ-ÿ\u00f1\u00d1]*)*[a-zA-ZÀ-ÿ\u00f1\u00d1 ]{3,254}" />
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Ingresa los apellidos del asesor" ControlToValidate="txtCrearApellido" ForeColor="Red" ValidationGroup="CrearAsesor" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col">
                                                        <label for="listCrearRolAsesor" id="lbCrearRolAsesor">
                                                            Rol en el
                      Sistema</label>
                                                        <asp:DropDownList ID="listRolAsesor" name="listCrearRolAsesor" runat="server"
                                                            title="Rol en la Aseguradora" class="form-control">
                                                            <asp:ListItem>Asesor</asp:ListItem>
                                                            <asp:ListItem>Gerente</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                    <div class="col">
                                                        <label class="campoobligatorio">*</label><label for="txtCrearTel" id="lbCrearTelAsesor">
                                                            Teléfono
                      Corporativo</label>
                                                        <asp:TextBox ID="txtCrearTel" name="txtCrearTelAsesor" runat="server"
                                                            placeholder="Ingresa el teléfono del nuevo Asesor" title="Teléfono Asesor" type="number"
                                                            class="form-control" />
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Ingresa el teléfono del asesor" ControlToValidate="txtCrearTel" ForeColor="Red" ValidationGroup="CrearAsesor" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                <div style="float: right;">
                                                    <asp:Button ID="btnCrearAsesor" runat="server" class="btn btn-primary" ValidationGroup="CrearAsesor" OnClick="btnCrearAsesor_Click" Text="Crear Asesor" />
                                                </div>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
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

    <script src="../../library/dashboardAdmin/vendors/jquery-file-upload/jquery.uploadfile.min.js"></script>
    <script src="../../library/dashboardAdmin/vendors/jquery-tags-input/jquery.tagsinput.min.js"></script>
    <script src="../../library/dashboardAdmin/vendors/jquery-steps/jquery.steps.min.js"></script>
    <script src="../../library/dashboardAdmin/vendors/jquery-validation/jquery.validate.min.js"></script>
    <script src="../../library/dashboardAdmin/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
    <script src="../../library/dashboardAdmin/vendors/datatables.net/jquery.dataTables.js"></script>
    <script src="../../library/dashboardAdmin/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
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
    <script src="../../library/dashboardAdmin/js/avgrund.js"></script>
    <script src="../../library/dashboardAdmin/js/alerts.js"></script>
    <script src="../../library/dashboardAdmin/js/wizard.js"></script>
    <script src="../../library/dashboardAdmin/js/formpickers.js"></script>
    <script src="../../library/dashboardAdmin/js/form-addons.js"></script>
    <script src="../../library/dashboardAdmin/js/x-editable.js"></script>
    <script src="../../library/dashboardAdmin/js/dropify.js"></script>
    <script src="../../library/dashboardAdmin/js/dropzone.js"></script>
    <script src="../../library/dashboardAdmin/js/jquery-file-upload.js"></script>
    <script src="../../library/dashboardAdmin/js/form-repeater.js"></script>
    <script src="../../library/dashboardAdmin/js/inputmask.js"></script>
    <!-- End custom js for this page-->
</body>


<!-- Mirrored from www.bootstrapdash.com/demo/skydash/template/demo/vertical-default-light/pages/tables/data-table.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 16 Mar 2021 01:57:53 GMT -->

</html>
