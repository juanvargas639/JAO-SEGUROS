<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ingresar.aspx.cs" Inherits="JAO_Seguros.Aplicacion.Ingresar1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="es-419">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Ingresar</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="../library/login/images/icons/favicon.ico" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../library/login/vendor/bootstrap/css/bootstrap.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../library/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../library/login/vendor/animate/animate.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../library/login/vendor/css-hamburgers/hamburgers.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../library/login/vendor/select2/select2.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../library/login/css/util.css" />
    <link rel="stylesheet" type="text/css" href="../library/login/css/main.css" />
    <!--===============================================================================================-->
</head>
<body>
    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100">
                <div class="login100-pic js-tilt" data-tilt>
                    <img src="../library/login/images/img-04.png" alt="IMG" />
                </div>
                <form class="login100-form validate-form" runat="server">
                    <asp:ScriptManager ID="ScriptManagerLogin" runat="server"></asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanelLogin" runat="server">
                        <ContentTemplate>
                            <span class="login100-form-title">Iniciar Sesión
                            </span>
                            <span class="subtitle">Usuario
                            </span>
                            <div class="wrap-input100 validate-input" data-validate="Verifica el Usuario">
                                <asp:TextBox ID="txtUsuario" runat="server" class="input100" type="text" name="user" placeholder="Usuario" />
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-user" aria-hidden="true"></i>
                                </span>
                            </div>
                            <span class="subtitle">Contraseña
                            </span>
                            <div class="wrap-input100 validate-input" data-validate="Verifica la contraseña">
                                <asp:TextBox ID="txtClave" runat="server" class="input100" type="password" name="pass" placeholder="Contraseña" />
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-lock" aria-hidden="true"></i>
                                </span>
                            </div>

                            <div class="container-login100-form-btn">
                                <button id="btnIngreso" runat="server" class="login100-form-btn" onserverclick="btnIngreso_Click">
                                    Ingresar
                                </button>
                            </div>

                            <div class="text-center p-t-12">
                                <span class="txt1">Olvidaste
                                </span>
                                <a class="txt2" href="#">Usuario / Contraseña?
                                </a>
                            </div>

                            <div class="text-center p-t-136">
                                <a class="txt2" href="Default.aspx">Volver a la página principal
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
                                </a>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </form>
            </div>
        </div>
    </div>

    <!--===============================================================================================-->
    <script src="../library/login/vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="../library/login/vendor/bootstrap/js/popper.js"></script>
    <script src="../library/login/vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="../library/login/vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="../library/login/vendor/tilt/tilt.jquery.min.js"></script>
    <script>
        $('.js-tilt').tilt({
            scale: 1.1
        })
    </script>
    <!--===============================================================================================-->
    <script src="../library/login/js/main.js"></script>
    <!--===============================================================================================-->
    <script src="../library/dashboardAdmin/js/alerts.js"></script>
    <script src="../library/dashboardAdmin/js/avgrund.js"></script>
    <script src="../library/dashboardAdmin/vendors/sweetalert/sweetalert.min.js"></script>
    <script src="../library/dashboardAdmin/vendors/jquery.avgrund/jquery.avgrund.min.js"></script>

</body>
</html>
