<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditarCliente.aspx.cs" Inherits="JAO_Seguros.Aplicacion.PagAsesor.EditarCliente" %>

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
    <link rel="stylesheet" href="../../library/dashboardAsesor/vendors/jquery-file-upload/uploadfile.css">
    <script src="../../library/dashboardAsesor/vendors/jquery-tags-input/jquery.tagsinput.min.css"></script>
    <link rel="stylesheet" href="../../library/dashboardAsesor/vendors/dropzone/dropzone.css">
    <link rel="stylesheet" href="../../library/dashboardAsesor/vendors/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../../library/dashboardAsesor/vendors/jquery-bar-rating/bars-1to10.css">
    <link rel="stylesheet" href="../../library/dashboardAsesor/vendors/jquery-bar-rating/bars-horizontal.css">
    <link rel="stylesheet" href="../../library/dashboardAsesor/vendors/jquery-bar-rating/bars-movie.css">
    <link rel="stylesheet" href="../../library/dashboardAsesor/vendors/jquery-bar-rating/bars-pill.css">
    <link rel="stylesheet" href="../../library/dashboardAsesor/vendors/jquery-bar-rating/bars-reversed.css">
    <link rel="stylesheet" href="../../library/dashboardAsesor/vendors/jquery-bar-rating/bars-square.css">
    <link rel="stylesheet" href="../../library/dashboardAsesor/vendors/jquery-bar-rating/bootstrap-stars.css">
    <link rel="stylesheet" href="../../library/dashboardAsesor/vendors/jquery-bar-rating/css-stars.css">
    <link rel="stylesheet" href="../../library/dashboardAsesor/vendors/jquery-bar-rating/examples.css">
    <link rel="stylesheet" href="../../library/dashboardAsesor/vendors/jquery-bar-rating/fontawesome-stars-o.css">
    <link rel="stylesheet" href="../../library/dashboardAsesor/vendors/jquery-bar-rating/fontawesome-stars.css">
    <link rel="stylesheet" href="../../library/dashboardAsesor/vendors/jquery-asColorPicker/css/asColorPicker.min.css">
    <link rel="stylesheet" href="../../library/dashboardAsesor/vendors/x-editable/bootstrap-editable.css">
    <link rel="stylesheet" href="../../library/dashboardAsesor/vendors/bootstrap-datepicker/bootstrap-datepicker.min.css">
    <link rel="stylesheet" href="../../library/dashboardAsesor/vendors/dropify/dropify.min.css">
    <link rel="stylesheet" href="../../library/dashboardAsesor/vendors/jquery-file-upload/uploadfile.css">
    <link rel="stylesheet" href="../../library/dashboardAsesor/vendors/jquery-tags-input/jquery.tagsinput.min.css">
    <link rel="stylesheet"
        href="../../library/dashboardAsesor/vendors/tempusdominus-bootstrap-4/tempusdominus-bootstrap-4.min.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="../../library/dashboardAsesor/css/vertical-layout-light/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="../../library/dashboardAsesor/images/favicon.ico" />
</head>
<body>
    <div class="loader-page"></div>
    <form id="FormEditarCliente" runat="server">
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
                <!-- partial -->
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
                        <div class="row">
                            <div class="col-12 grid-margin">
                                <!--INICIO MIGA DE PAN-->
                                <ol class="breadcrumb" style="float: right;">
                                    <li class="breadcrumb-item"><a href="DefaultAsesor.aspx">Inicio</a></li>
                                    <li class="breadcrumb-item"><a href="BaseClientesAsesor.aspx">Clientes</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Editar cliente</li>
                                </ol>
                                <!--INICIO de TABS-->
                                <ul class="nav nav-tabs" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active text-info" id="home-tab" data-toggle="tab" href="#home-1" role="tab"
                                            aria-controls="home-1" aria-selected="true">Información del Cliente
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
                                <!--FIN MIGA DE PAN-->
                                <div class="tab-content" style="background-color: white;">
                                    <div class="tab-pane fade show active" id="home-1" role="tabpanel" aria-labelledby="home-tab">
                                        <asp:UpdatePanel ID="PanelEditarCliente" runat="server">
                                            <ContentTemplate>
                                                <div class="card">
                                                    <div class="card-body">
                                                        <h4 class="card-title">Editar cliente</h4>
                                                        <br>
                                                        <p class="card-description">
                                                            Información Personal
                                                        </p>
                                                        <div class="form-group row">
                                                            <div class="col">
                                                                <label class="campoobligatorio">*</label><label for="txtEditarNombreCliente" id="lbEditarNombreCliente">
                                                                    Nombre(s)</label>
                                                                <asp:TextBox ID="txtEditarNombreCliente" name="txtEditarNombreCliente" runat="server"
                                                                    title="Mínimo tres caracteres, solo letras" placeholder="Ingresa el nombre del Cliente"
                                                                    TextMode="SingleLine" class="form-control" pattern="[a-zA-ZÀ-ÿ\u00f1\u00d1]+(\s*[a-zA-ZÀ-ÿ\u00f1\u00d1]*)*[a-zA-ZÀ-ÿ\u00f1\u00d1 ]{3,254}" />
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Ingresa los nombres del cliente" ControlToValidate="txtEditarNombreCliente" ForeColor="Red" ValidationGroup="EditarCliente" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                            </div>
                                                            <div class="col">
                                                                <label class="campoobligatorio">*</label><label for="txtEditarApellidoCliente" id="lbEditarApellidoCliente">
                                                                    Apellido(s)</label>
                                                                <asp:TextBox ID="txtEditarApellidoCliente" name="txtEditarApellidoCliente" runat="server"
                                                                    title="Mínimo tres caracteres, solo letras" placeholder="Ingresa el apellido del Cliente"
                                                                    TextMode="SingleLine" class="form-control" pattern="[a-zA-ZÀ-ÿ\u00f1\u00d1]+(\s*[a-zA-ZÀ-ÿ\u00f1\u00d1]*)*[a-zA-ZÀ-ÿ\u00f1\u00d1 ]{3,254}" />
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Ingresa los apellidos del cliente" ControlToValidate="txtEditarApellidoCliente" ForeColor="Red" ValidationGroup="EditarCliente" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>
                                                        <div class="form-group row">
                                                            <div class="col">
                                                                <label class="campoobligatorio">*</label><label for="txtEditarNumDocumentoCliente" id="lbEditarNumDocumentoCliente">
                                                                    Número de
                        Documento</label>
                                                                <asp:TextBox ID="txtEditarNumDocumentoCliente" name="txtEditarNumDocumentoCliente" runat="server"
                                                                    title="Número de Documento del Cliente" placeholder="N° de Documento del Cliente"
                                                                    TextMode="SingleLine" class="form-control" />
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ingresa el número de documento de identidad del cliente" ControlToValidate="txtEditarNumDocumentoCliente" ForeColor="Red" ValidationGroup="EditarCliente" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                            </div>
                                                            <div class="col">
                                                                <label class="campoobligatorio">*</label><label for="txtEditarFechaExpedicionCliente" id="lbEditarFechaExpedicionCliente">
                                                                    Fecha de Expedición
                        Documento</label>
                                                                <div id="datepicker-popup10" class="input-group date datepicker">
                                                                    <asp:TextBox ID="txtEditarFechaExpedicionCliente" name="txtEditarFechaExpedicionCliente" runat="server"
                                                                        title="Fecha de Expedición del Documento" placeholder="dd/mm/aaaa" TextMode="SingleLine"
                                                                        class="form-control" />
                                                                    <span class="input-group-addon input-group-append border-left">
                                                                        <span class="ti-calendar input-group-text"></span>
                                                                    </span>
                                                                </div>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Ingresa la fecha de expedición del documento del cliente" ControlToValidate="txtEditarFechaExpedicionCliente" ForeColor="Red" ValidationGroup="EditarCliente" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>
                                                        <div class="form-group row">
                                                            <div class="col">
                                                                <label class="campoobligatorio">*</label><label for="listEditarTipoDocumento" id="lblistEditarTipoDocumento">
                                                                    Tipo de Documento</label>
                                                                <asp:DropDownList ID="listEditarTipoDocumento" name="listEditarTipoDocumento" runat="server" title="Tipo de Documento del Cliente" class="form-control mb-2 mr-sm-2">
                                                                    <asp:ListItem>Cédula de Ciudadanía</asp:ListItem>
                                                                    <asp:ListItem>Pasaporte</asp:ListItem>
                                                                    <asp:ListItem>Cédula de Extranjería</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </div>
                                                            <div class="col">
                                                                <label class="campoobligatorio">*</label><label for="txtEditarGeneroCliente" id="lbEditarGeneroCliente">
                                                                    Genéro</label>
                                                                <asp:DropDownList ID="listEditarGeneroCliente" name="txtEditarGeneroCliente" runat="server" title="Genéro del Cliente" class="form-control mb-2 mr-sm-2">
                                                                    <asp:ListItem>Masculino</asp:ListItem>
                                                                    <asp:ListItem>Femenino</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </div>
                                                            <div class="col">
                                                                <label class="campoobligatorio">*</label><label for="listEditarCiudadNacimientoCliente" id="lbEditarCiudadNacimientoCliente">
                                                                    Ciudad de
                        Nacimiento</label>
                                                                <asp:DropDownList ID="listEditarCiudadNacimientoCliente" name="listEditarCiudadNacimientoCliente"
                                                                    runat="server" title="Ciudad de Nacimiento del Cliente" class="form-control mb-2 mr-sm-2">
                                                                    <asp:ListItem>Bogotá D.C</asp:ListItem>
                                                                    <asp:ListItem>Medellín</asp:ListItem>
                                                                    <asp:ListItem>Barranquilla</asp:ListItem>
                                                                    <asp:ListItem>Cartagena</asp:ListItem>
                                                                    <asp:ListItem>Madrid</asp:ListItem>
                                                                    <asp:ListItem>Caracas</asp:ListItem>
                                                                    <asp:ListItem>Boyacá</asp:ListItem>
                                                                    <asp:ListItem>Tolima</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </div>
                                                        </div>
                                                        <div class="form-group row">
                                                            <div class="col">
                                                                <label for="txtEditarTelefonoFijoCliente" id="lbEditarTelefonoFijoCliente">Teléfono Fijo</label>
                                                                <asp:TextBox ID="txtEditarTelefonoFijoCliente" name="txtEditarTelefonoFijoCliente" runat="server"
                                                                    title="Teléfono fijo del Cliente" placeholder="Ingresa el teléfono fijo"
                                                                    type="number" class="form-control mb-2 mr-sm-2" />
                                                            </div>
                                                            <div class="col">
                                                                <label class="campoobligatorio">*</label><label for="txtEditarTelefonoCelularCliente" id="lbEditarTelefonoCelularCliente">
                                                                    Teléfono
                        Celular</label>
                                                                <asp:TextBox ID="txtEditarTelefonoCelularCliente" name="txtEditarTelefonoCelularCliente" runat="server"
                                                                    title="Teléfono Celular del Cliente" placeholder="Ingresa el teléfono celular"
                                                                    type="number" class="form-control mb-2 mr-sm-2" />
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Ingresa el número de celular" ControlToValidate="txtEditarTelefonoCelularCliente" ForeColor="Red" ValidationGroup="EditarCliente" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                            </div>
                                                            <div class="col">
                                                                <label class="campoobligatorio">*</label><label for="txtEditarDireccionResidenciaCliente" id="lbEditarDireccionResidenciaCliente">
                                                                    Dirección
                        de Residencia</label>
                                                                <asp:TextBox ID="txtEditarDireccionResidenciaCliente" name="txtEditarDireccionResidenciaCliente"
                                                                    runat="server" title="Dirección de Residencia del Cliente"
                                                                    placeholder="Dirección de residencia" TextMode="SingleLine"
                                                                    class="form-control mb-2 mr-sm-2" />
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Ingresa la dirección de residencia" ControlToValidate="txtEditarDireccionResidenciaCliente" ForeColor="Red" ValidationGroup="EditarCliente" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>
                                                        <div class="form-group row">
                                                            <div class="col">
                                                                <label for="txtEditarDireccionTrabajoCliente" id="lbEditarDireccionTrabajoCliente">
                                                                    Dirección de
                        Trabajo</label>
                                                                <asp:TextBox ID="txtEditarDireccionTrabajoCliente" name="txtEditarDireccionTrabajoCliente" runat="server"
                                                                    title="Dirección del Trabajo del Cliente"
                                                                    placeholder="Ingresa la dirección laboral" TextMode="SingleLine"
                                                                    class="form-control mb-2 mr-sm-2" />
                                                            </div>
                                                            <div class="col">
                                                                <label for="txtEditarTelefonoTrabajoCliente" id="lbEditarTelefonoTrabajoCliente">
                                                                    Teléfono de
                        Trabajo</label>
                                                                <asp:TextBox ID="txtEditarTelefonoTrabajoCliente" name="txtEditarTelefonoTrabajoCliente" runat="server"
                                                                    title="Teléfono del Trabajo del Cliente" placeholder="Ingresa el teléfono laboral"
                                                                    type="number" class="form-control mb-2 mr-sm-2" />
                                                            </div>
                                                            <div class="col">
                                                                <label class="campoobligatorio">*</label><label for="txtEditarProfesionCliente" id="lbEditarProfesionCliente">
                                                                    Profesión</label>
                                                                <asp:TextBox ID="txtEditarProfesionCliente" name="txtEditarProfesionCliente" runat="server"
                                                                    title="Profesión del Cliente" placeholder="Ej. Mécanico Automotriz, Contadora"
                                                                    TextMode="SingleLine" class="form-control mb-2 mr-sm-2" />
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Ingresa el cargo o empleo del cliente" ControlToValidate="txtEditarProfesionCliente" ForeColor="Red" ValidationGroup="EditarCliente" SetFocusOnError="true" Font-Size="Small" Font-Bold="true"></asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>
                                                        <div style="float: right;">
                                                             <asp:Button ID="btnEditarCliente" runat="server" class="btn btn-primary" ValidationGroup="EditarCliente" OnClick="btnEditarCliente_Click" Text="Guardar Cambios"
                                                                />
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
                                                                <h4 class="card-title">Restablecer contraseña</h4>
                                                                <p class="card-description">
                                                                    Información Personal
                                                                </p>
                                                                <p>
                                                                    Se restablece la contraseña de ingreso, la contraseña tomará el "ID" o número de documento del usuario, no olvide notificar el cambio.
                                                                </p>
                                                                <br>
                                                                <div>
                                                                    <asp:LinkButton ID="btnResetPassword" runat="server" class="btn btn-primary btn-icon-text" OnClick="btnResetPassword_Click" OnClientClick="return RestablecerClave()"
                                                                         ><i class="ti-reload btn-icon-prepend"></i>Restablecer contraseña</asp:LinkButton>
                                                                </div>
                                                            </div>
                                                            <div class="col">
                                                                <h4 class="card-title">Eliminar Cliente</h4>
                                                                <p class="card-description">
                                                                    Información Personal
                                                                </p>
                                                                <p>
                                                                    Se elimina el cliente del sistema, también se eliminarán todas las pólizas y los reportes relacionados a este usuario.
                                                                </p>
                                                                <br>
                                                                <div>
                                                                    <asp:LinkButton ID="btnDeleteCliente" runat="server" class="btn btn-danger btn-icon-text" OnClick="btnDeleteCliente_Click" OnClientClick="return EliminarCliente()"
                                                                         ><i class="ti-close btn-icon-prepend"></i>Eliminar cliente</asp:LinkButton>
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
    <script type="text/javascript">
        function EliminarCliente(ctl) {
            var defaultAction = $(ctl).prop("href");
            swal({
                title: "¿Desea eliminar el cliente del sistema?",
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
                        text: "Eliminar usuario",
                        value: true,
                        visible: true,
                        className: "btn btn-danger",
                        closeModal: true
                    }
                }
            }).then(function (isConfirm) {
                if (isConfirm) {
                    __doPostBack('<%= btnDeleteCliente.UniqueID %>', "");
                        return true;
                    }
                });
            return false;
        }
    </script>
    <script type="text/javascript">
        function RestablecerClave(ctl) {
            var defaultAction = $(ctl).prop("href");
            swal({
                title: "¿Restablecer la contraseña del usuario?",
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
                        text: "Restablecer",
                        value: true,
                        visible: true,
                        className: "btn btn-danger",
                        closeModal: true
                    }
                }
            }).then(function (isConfirm) {
                if (isConfirm) {
                    __doPostBack('<%= btnResetPassword.UniqueID %>', "");
                        return true;
                    }
                });
            return false;
        }
    </script>
    <script src="../../library/dashboardAsesor/vendors/jquery-file-upload/jquery.uploadfile.min.js"></script>
    <script src="../../library/dashboardAsesor/vendors/jquery-tags-input/jquery.tagsinput.min.js"></script>
    <script src="../../library/dashboardAsesor/vendors/jquery-steps/jquery.steps.min.js"></script>
    <script src="../../library/dashboardAsesor/vendors/jquery-validation/jquery.validate.min.js"></script>
    <script src="../../library/dashboardAsesor/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
    <script src="../../library/dashboardAsesor/vendors/datatables.net/jquery.dataTables.js"></script>
    <script src="../../library/dashboardAsesor/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
    <script src="../../library/dashboardAsesor/vendors/sweetalert/sweetalert.min.js"></script>
    <script src="../../library/dashboardAsesor/vendors/jquery.avgrund/jquery.avgrund.min.js"></script>
    <script src="../../library/dashboardAsesor/vendors/jquery-bar-rating/jquery.barrating.min.js"></script>
    <script src="../../library/dashboardAsesor/vendors/jquery-asColor/jquery-asColor.min.js"></script>
    <script src="../../library/dashboardAsesor/vendors/jquery-asGradient/jquery-asGradient.min.js"></script>
    <script src="../../library/dashboardAsesor/vendors/jquery-asColorPicker/jquery-asColorPicker.min.js"></script>
    <script src="../../library/dashboardAsesor/vendors/x-editable/bootstrap-editable.min.js"></script>
    <script src="../../library/dashboardAsesor/vendors/moment/moment.min.js"></script>
    <script src="../../library/dashboardAsesor/vendors/tempusdominus-bootstrap-4/tempusdominus-bootstrap-4.js"></script>
    <script src="../../library/dashboardAsesor/vendors/dropify/dropify.min.js"></script>
    <script src="../../library/dashboardAsesor/vendors/jquery-file-upload/jquery.uploadfile.min.js"></script>
    <script src="../../library/dashboardAsesor/vendors/jquery-tags-input/jquery.tagsinput.min.js"></script>
    <script src="../../library/dashboardAsesor/vendors/dropzone/dropzone.js"></script>
    <script src="../../library/dashboardAsesor/vendors/jquery.repeater/jquery.repeater.min.js"></script>
    <script src="../../library/dashboardAsesor/vendors/inputmask/jquery.inputmask.bundle.js"></script>
    <!-- End plugin js for this page-->
    <!-- inject:js -->
    <script src="../../library/dashboardAsesor/js/off-canvas.js"></script>
    <script src="../../library/dashboardAsesor/js/hoverable-collapse.js"></script>
    <script src="../../library/dashboardAsesor/js/template.js"></script>
    <script src="../../library/dashboardAsesor/js/settings.js"></script>
    <script src="../../library/dashboardAsesor/js/todolist.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page-->
    <script src="../../library/dashboardAsesor/js/jquery-file-upload.js"></script>
    <script src="../../library/dashboardAsesor/js/data-table.js"></script>
    <script src="../../library/dashboardAsesor/js/alerts.js"></script>
    <script src="../../library/dashboardAsesor/js/avgrund.js"></script>
    <script src="../../library/dashboardAsesor/js/wizard.js"></script>
    <script src="../../library/dashboardAsesor/js/formpickers.js"></script>
    <script src="../../library/dashboardAsesor/js/form-addons.js"></script>
    <script src="../../library/dashboardAsesor/js/x-editable.js"></script>
    <script src="../../library/dashboardAsesor/js/dropify.js"></script>
    <script src="../../library/dashboardAsesor/js/dropzone.js"></script>
    <script src="../../library/dashboardAsesor/js/jquery-file-upload.js"></script>
    <script src="../../library/dashboardAsesor/js/form-repeater.js"></script>
    <script src="../../library/dashboardAsesor/js/inputmask.js"></script>
    <script src="../../library/dashboardAsesor/js/tabs.js"></script>
    <!-- End custom js for this page-->
</body>


<!-- Mirrored from www.bootstrapdash.com/demo/skydash/template/demo/vertical-default-light/pages/tables/data-table.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 16 Mar 2021 01:57:53 GMT -->

</html>

