<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JAO_Seguros.Aplicacion.Default1" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="es-419">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>JAO Seguros</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
     <!-- Favicons -->
    <link href="../library/landing-page/img/icono2.ico" rel="icon">
    <link href="../library/landing-page/img/apple-touch-icon.png" rel="apple-touch-icon">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,700|Open+Sans:300,300i,400,400i,700,700i" rel="stylesheet">
    <!-- Bootstrap CSS File -->
    <link href="../library/landing-page/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Libraries CSS Files -->
    <link href="../library/landing-page/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="../library/landing-page/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
    <link href="../library/landing-page/lib/aos/aos.css" rel="stylesheet">
    <link href="../library/landing-page/lib/magnific-popup/magnific-popup.css" rel="stylesheet">
    <!-- Main Stylesheet File -->
    <link href="../library/landing-page/css/style.css" rel="stylesheet">
</head>
<body>
  <!--==========================
    Header
  ============================-->
  <header id="header">
    <div class="container">
      <div id="logo" class="pull-left">
        <!--<h1><a href="#intro" class="scrollto">Avilon</a></h1>-->
        <!-- Uncomment below if you prefer to use an image logo -->
         <a href="#intro"><img src="../library/landing-page/img/logo.png" alt="logo" title="JAO Seguros"/></a>
      </div>
      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="#intro">Home</a></li>
          <li><a href="#about">Solución</a></li>
          <li><a href="#features">Funciones</a></li>
          <li><a href="#more-features">Ventajas</a></li>
          <li><a href="#contact">Contacténos</a></li>
          <li><a href="Ingresar.aspx">Iniciar Sesión</a></li>
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

  <!--==========================
    Intro Section
  ============================-->
  <section id="intro">

    <div class="intro-text">
      <h2>Bienvenido a JAO Seguros</h2>
      <p>El primer paso para llevar su aseguradora a otro nivel.</p>
      <a href="#about" class="btn-get-started scrollto">Empecemos</a>
    </div>
  </section><!-- #intro -->

  <main id="main">

    <!--==========================
      About Us Section
    ============================-->
    <section id="about" class="section-bg">
      <div class="container-fluid">
        <div class="section-header">
          <h3 class="section-title">Solución informática para las aseguradoras</h3>
          <span class="section-divider"></span>
          <p class="section-description">
            Ofrecemos un Sistema que le ayudará a mejorar la gestión de su aseguradora.<br>
          </p>
        </div>

        <div class="row">
          <div class="col-lg-6 about-img" data-aos="fade-right">
            <img src="../library/landing-page/img/about-img.png" alt="">
          </div>
          <div class="col-lg-6 content" data-aos="fade-left">
            <h2>Mejore la gestión administrativa de sus clientes a la vez que le ofrece un mejor servicio</h2>
            <h3>Sin tanto enredo y con funciones puntuales, sencillas y efectivas.</h3>
            <p>
               Sabemos que su aseguradora está en crecimiento, y queremos ayudarle a dar ese paso a nuevas fronteras donde mantega a sus clientes satisfechos.
            </p>

            <ul>
              <li><i class="ion-android-checkmark-circle"></i> Administre y Visualice todo desde el rol de administrador.</li>
              <li><i class="ion-android-checkmark-circle"></i> Agregue asesores y relacionelos con sus clientes más prometedores.</li>
              <li><i class="ion-android-checkmark-circle"></i> Otorgue usuarios a sus clientes para que visualicen sus seguros y se sientan más protegidos.</li>
            </ul>
          </div>
        </div>
      </div>
    </section><!-- #about -->

    <!--==========================
      Product Featuress Section
    ============================-->
    <section id="features">
      <div class="container">

        <div class="row">

          <div class="col-lg-8 offset-lg-4">
            <div class="section-header" data-aos="fade" data-aos-duration="1000">
              <h3 class="section-title">Funcionalidades de JAO Seguros</h3>
              <span class="section-divider"></span>
            </div>
          </div>

          <div class="col-lg-4 col-md-5 features-img">
            <img src="../library/landing-page/img/product-features.png" alt="" data-aos="fade-right" data-aos-easing="ease-out-back">
          </div>
          <div class="col-lg-8 col-md-7 ">
            <div class="row">
              <div class="col-lg-6 col-md-6 box" data-aos="fade-left">
                <div class="icon"><i class="ion-android-lock"></i></div>
                <h4 class="title"><a href="#">Visualizar las Pólizas</a></h4>
                <p class="description">Con su Usuario, podrán ver los distintos Seguros que tienen con su compañia.</p>
              </div>
              <div class="col-lg-6 col-md-6 box" data-aos="fade-left" data-aos-delay="100">
                <div class="icon"><i class="ion-android-archive"></i></div>
                <h4 class="title"><a href="#">Descargar la Póliza</a></h4>
                <p class="description"> Si lo requieren sus clientes podrán descargar el PDF de su Seguro.</p>
              </div>
              <div class="col-lg-6 col-md-6 box" data-aos="fade-left" data-aos-delay="200">
                <div class="icon"><i class="ion-help-circled"></i></div>
                <h4 class="title"><a href="#">Solicitudes o Reclamos</a></h4>
                <p class="description">Sus clientes podrán hacer algún reporte y estar en contacto con su Aseguradora.</p>
              </div>
              <div class="col-lg-6 col-md-6 box" data-aos="fade-left" data-aos-delay="300">
                <div class="icon"><i class="ion-ios-compose"></i></div>
                <h4 class="title"><a href="#">Cotizaciones</a></h4>
                <p class="description">Desde la página principal los prospectos podrán enviar su información para la cotización.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section><!-- #features -->

    <!--==========================
      Product Advanced Featuress Section
    ============================-->
    <section id="advanced-features">

      <div class="features-row section-bg">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <img class="advanced-feature-img-right" src="../library/landing-page/img/referral1.png" alt="" data-aos="fade-left">
              <div data-aos="fade-right">
                <h2>Gestione las pólizas de sus clientes</h2>
                <h3>Maneje las seis principales pólizas del mercado.</h3>
                <p>Olvídese de bases de datos en Excel. Administre las pólizas fácilmente en un entorno simple.</p>
                <p>Adjunte el PDF de la póliza para que sus clientes puedan descargarlo.</p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="features-row">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <img class="advanced-feature-img-left" src="../library/landing-page/img/advanced-feature-2.jpg" alt="">
              <div data-aos="fade-left">
                <h2>Cree y coordine asesores</h2>
                <i class="ion-ios-toggle-outline" data-aos="fade-left"></i>
                <p data-aos="fade-left">El Asesor con su usuario podrá estar creando, modificando y eliminando Clientes y Pólizas.</p>
                <i class="ion-ios-redo-outline" data-aos="fade-left" data-aos-delay="200"></i>
                <p data-aos="fade-left" data-aos-delay="200">El asesor puede responder a los reportes hechos por sus Clientes.</p>
                <i class="ion-ios-compose-outline" data-aos="fade-left" data-aos-delay="400"></i>
                <p data-aos="fade-left" data-aos-delay="400">El asesor podrá modificar el estado de las cotizaciones por los prospectos.</p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="features-row section-bg">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <img class="advanced-feature-img-right" src="../library/landing-page/img/referral2.png" alt="" data-aos="fade-left">
              <div data-aos="fade-right">
                <h2>Administradores Designados</h2>
                <h3>Con su usuario podrá gestionar sus Administradores, Asesores, Clientes, Pólizas, Reportes y Cotizaciones.</h3>
                <i class="ion-ios-albums-outline"></i>
                <p> Agrege los Proveedores de Seguros, para que sus Clientes puedan comunicarse con la Aseguradora Principal.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section><!-- #advanced-features -->
    <!--==========================
      More Features Section
    ============================-->
    <section id="more-features" class="section-bg">
      <div class="container">

        <div class="section-header">
          <h3 class="section-title">Ventajas de JAO Seguros</h3>
          <span class="section-divider"></span>
          <p class="section-description">Gestione los procesos de su aseguradora más fácilmente de forma segura.</p>
        </div>

        <div class="row">

          <div class="col-lg-6">
            <div class="box" data-aos="fade-right">
              <div class="icon"><i class="ion-ios-stopwatch-outline"></i></div>
              <h4 class="title"><a href="#">Optimmiza tiempos de gestión</a></h4>
              <p class="description">Olvídese de excel, gestione todos tus usuarios fácilmente desde roles preestablecidos.</p>
            </div>
          </div>

          <div class="col-lg-6">
            <div class="box" data-aos="fade-left">
              <div class="icon"><i class="ion-ios-download-outline"></i></div>
              <h4 class="title"><a href="#">Descarga Pólizas</a></h4>
              <p class="description">Cargue el PDF de la póliza para que sus clientes pueda acceder a él en cualquier momento.</p>
            </div>
          </div>

          <div class="col-lg-6">
            <div class="box" data-aos="fade-right">
              <div class="icon"><i class="ion-ios-heart-outline"></i></div>
              <h4 class="title"><a href="#">Mejore la atención al cliente</a></h4>
              <p class="description">Reciba solicitudes, quejas o sugerencias de sus clientes y las podrá responder inmediatamente.</p>
            </div>
          </div>

          <div class="col-lg-6">
            <div class="box" data-aos="fade-left">
              <div class="icon"><i class="ion-ios-gear-outline"></i></div>
              <h4 class="title"><a href="#">Control mayor de asesores</a></h4>
              <p class="description">Gestione todos sus asesores y revise que dicen los clientes de ellos.</p>
            </div>
          </div>

        </div>
      </div>
    </section><!-- #more-features -->
    <!--==========================
      Contact Section
    ============================-->
    <section id="contact">
      <div class="container">
        <div class="row" data-aos="fade-up">

          <div class="col-lg-4 col-md-4">
            <div class="contact-about">
              <h3>JAO SEGUROS</h3>
              <p>Puede acercarte a nuestras instalaciones y solicitar su prueba o informarse más sobre el sofware. También puede comunicarse por medio de nuestras líneas o enviarnos un correo para que nos pongamos en contacto con su empresa.</p>
              <div class="social-links">
                <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
                <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
                <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
                <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="info">
              <div>
                <i class="ion-ios-location-outline"></i>
                <p>Cra 15A #21<br>Bogotá D.C, 7834698</p>
              </div>

              <div>
                <i class="ion-ios-email-outline"></i>
                <p>jaoseguros@gmail.com</p>
              </div>

              <div>
                <i class="ion-ios-telephone-outline"></i>
                <p>+57 319 561 0175</p>
              </div>

            </div>
          </div>

          <div class="col-lg-5 col-md-8">
            <div class="form">
              <div id="sendmessage">Su mensaje se ha enviado. Nos comunicaremos con su empresa!</div>
              <div id="errormessage"></div>
              <form action="#" method="post" role="form" class="contactForm">
                <div class="form-row">
                  <div class="form-group col-lg-6">
                    <input type="text" name="name" class="form-control" id="name" placeholder="Ingrese su nombre" data-rule="minlen:4" data-msg="Por favor ingrese su nombre!" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-6">
                    <input type="email" class="form-control" name="email" id="email" placeholder="Ingrese su correo" data-rule="email" data-msg="Por favor ingrese un correo válido" />
                    <div class="validation"></div>
                  </div>
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" name="subject" id="subject" placeholder="Asunto" data-rule="minlen:4" data-msg="Por favor escriba el asunto de tu mensaje" />
                  <div class="validation"></div>
                </div>
                <div class="form-group">
                  <textarea class="form-control" name="Message" rows="5" data-rule="required" data-msg="Por favor escríbe algo!" placeholder="Mensaje"></textarea>
                  <div class="validation"></div>
                </div>
                <div class="text-center"><button type="submit" title="Enviar Mensaje">Enviar Mensaje</button></div>
              </form>
            </div>
          </div>

        </div>

      </div>
    </section><!-- #contact -->

  </main>

  <!--==========================
    Footer
  ============================-->
  <footer id="footer">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 text-lg-left text-center">
          <div class="copyright">
            &copy; Copyright 2021<strong> JAO Seguros</strong>. Todos los Derechos Reservados
          </div>
        </div>
        <div class="col-lg-6">
          <nav class="footer-links text-lg-right text-center pt-2 pt-lg-0">
            <a href="#intro" class="scrollto">Home</a>
            <a href="#about" class="scrollto">Solución</a>
            <a href="#">Políticas de Privacidad</a>
            <a href="#">Términos de Uso</a>
          </nav>
        </div>
      </div>
    </div>
  </footer><!-- #footer -->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

  <!-- JavaScript Libraries -->
  <script src="../library/landing-page/lib/jquery/jquery.min.js"></script>
  <script src="../library/landing-page/lib/jquery/jquery-migrate.min.js"></script>
  <script src="../library/landing-page/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="../library/landing-page/lib/easing/easing.min.js"></script>
  <script src="../library/landing-page/lib/aos/aos.js"></script>
  <script src="../library/landing-page/lib/superfish/hoverIntent.js"></script>
  <script src="../library/landing-page/lib/superfish/superfish.min.js"></script>
  <script src="../library/landing-page/lib/magnific-popup/magnific-popup.min.js"></script>

  <!-- Contact Form JavaScript File -->
  <script src="../library/landing-page/contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="../library/landing-page/js/main.js"></script>
</body>
</html>
