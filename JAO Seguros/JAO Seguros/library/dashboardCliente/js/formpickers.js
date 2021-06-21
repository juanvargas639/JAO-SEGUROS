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
  if ($("#datepicker-popup2").length) {
    $('#datepicker-popup2').datepicker({
      enableOnReadonly: true,
      todayHighlight: true,
    });
  }
  if ($("#datepicker-popup3").length) {
    $('#datepicker-popup3').datepicker({
      enableOnReadonly: true,
      todayHighlight: true,
    });
  }
  if ($("#datepicker-popup3").length) {
    $('#datepicker-popup3').datepicker({
      enableOnReadonly: true,
      todayHighlight: true,
    });
  }
  if ($("#datepicker-popup4").length) {
    $('#datepicker-popup4').datepicker({
      enableOnReadonly: true,
      todayHighlight: true,
    });
  }
  if ($("#datepicker-popup5").length) {
    $('#datepicker-popup5').datepicker({
      enableOnReadonly: true,
      todayHighlight: true,
    });
  }
  if ($("#datepicker-popup6").length) {
    $('#datepicker-popup6').datepicker({
      enableOnReadonly: true,
      todayHighlight: true,
    });
  }
  if ($("#datepicker-popup7").length) {
    $('#datepicker-popup7').datepicker({
      enableOnReadonly: true,
      todayHighlight: true,
    });
  }
  if ($("#datepicker-popup10").length) {
    $('#datepicker-popup10').datepicker({
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
    $('.input-daterange input').each(function() {
      $(this).datepicker('clearDates');
    });
    $('.input-daterange').datepicker({});
  }
})(jQuery);