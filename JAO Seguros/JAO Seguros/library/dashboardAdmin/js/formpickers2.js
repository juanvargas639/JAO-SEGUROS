(function($) {
  'use strict';
  if ($("#timepicker-example").length) {
    $('#timepicker-example').datetimepicker({
      format: 'LT'
    });
  }
  if ($(".color-picker").length) {
    $('.color-picker').asColorPicker();
  }
  if ($("#datepicker-popup").length) {
    $('#datepicker-popup').datepicker({
      enableOnReadonly: true,
      todayHighlight: true,
    });
  }
  if ($("#txtFechaExpedicionCliente").length) {
    $('#datepicker-popup2').datepicker({
      enableOnReadonly: true,
      todayHighlight: true,
    });
  }
  if ($("#txtEditarFechaExpedicionCliente").length) {
    $('#datepicker-popup3').datepicker({
      enableOnReadonly: true,
      todayHighlight: true,
    });
  }
  if ($("#txtFechaECreaPoliza").length) {
    $('#datepicker-popup4').datepicker({
      enableOnReadonly: true,
      todayHighlight: true,
    });
  }
  if ($("#txtFechaNacimientoCreaPolizaVehicular").length) {
    $('#datepicker-popup5').datepicker({
      enableOnReadonly: true,
      todayHighlight: true,
    });
  }
  if ($("#txtFechaNacimientoCreaPolizaEstudiantil").length) {
    $('#datepicker-popup6').datepicker({
      enableOnReadonly: true,
      todayHighlight: true,
    });
  }
  if ($("#txtFechaNacimientoCreaPolizaHogar").length) {
    $('#datepicker-popup7').datepicker({
      enableOnReadonly: true,
      todayHighlight: true,
    });
  }
  if ($("#txtFechaNacimientoCreaPolizaRC").length) {
    $('#datepicker-popup8').datepicker({
      enableOnReadonly: true,
      todayHighlight: true,
    });
  }
  if ($("#txtFechaExpedicionCreaPolizaRC").length) {
    $('#datepicker-popup9').datepicker({
      enableOnReadonly: true,
      todayHighlight: true,
    });
  }
  if ($("#txtFechaNacimientoCreaPolizaVida").length) {
    $('#datepicker-popup10').datepicker({
      enableOnReadonly: true,
      todayHighlight: true,
    });
  }
  if ($("#txtFechaExpedicionCliente").length) {
    $('#datepicker-popup11').datepicker({
      enableOnReadonly: true,
      todayHighlight: true,
    });
  }
  if ($("#txtEditarFechaExpedicionCliente").length) {
    $('#datepicker-popup12').datepicker({
      enableOnReadonly: true,
      todayHighlight: true,
    });
  }
  if ($("#inline-datepicker").length) {
    $('#inline-datepicker').datepicker({
      enableOnReadonly: true,
      todayHighlight: true,
    });
  }
  if ($(".datepicker-autoclose").length) {
    $('.datepicker-autoclose').datepicker({
      autoclose: true
    });
  }
  if ($('input[name="date-range"]').length) {
    $('input[name="date-range"]').daterangepicker();
  }
  if($('.input-daterange').length) {
    $('#input').each(function() {
      $(this).datepicker('clearDates');
    });
    $('.input-daterange').datepicker({});
  }
})(jQuery);