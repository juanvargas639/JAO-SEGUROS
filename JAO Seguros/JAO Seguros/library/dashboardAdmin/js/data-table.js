(function($) {
  'use strict';
  $(function() {
    $('#TablaAdministradoresActivos').DataTable({
      "aLengthMenu": [
        [5, 10, 15, -1],
        [5, 10, 15, "Todos"]
      ],
      "iDisplayLength": 10,
      "language": {
        search: ""
      }
    });
    $('#TablaAdministradoresActivos').each(function() {
      var datatable = $(this);
      // SEARCH - Add the placeholder for Search and Turn this into in-line form control
      var search_input = datatable.closest('.dataTables_wrapper').find('div[id$=_filter] input');
      search_input.attr('placeholder', 'Buscar');
      search_input.removeClass('form-control-sm');
      // LENGTH - Inline-Form control
      var length_sel = datatable.closest('.dataTables_wrapper').find('div[id$=_length] select');
      length_sel.removeClass('form-control-sm');
    });
  });
})(jQuery);
(function($) {
  'use strict';
  $(function() {
    $('#TablaAsesoresActivos').DataTable({
      "aLengthMenu": [
        [5, 10, 15, -1],
        [5, 10, 15, "Todos"]
      ],
      "iDisplayLength": 10,
      "language": {
        search: ""
      }
    });
    $('#TablaAsesoresActivos').each(function() {
      var datatable = $(this);
      // SEARCH - Add the placeholder for Search and Turn this into in-line form control
      var search_input = datatable.closest('.dataTables_wrapper').find('div[id$=_filter] input');
      search_input.attr('placeholder', 'Buscar');
      search_input.removeClass('form-control-sm');
      // LENGTH - Inline-Form control
      var length_sel = datatable.closest('.dataTables_wrapper').find('div[id$=_length] select');
      length_sel.removeClass('form-control-sm');
    });
  });
})(jQuery);
(function($) {
  'use strict';
  $(function() {
    $('#TablaAsesoresAdminActivos').DataTable({
      "aLengthMenu": [
        [5, 10, 15, -1],
        [5, 10, 15, "Todos"]
      ],
      "iDisplayLength": 10,
      "language": {
        search: ""
      }
    });
    $('#TablaAsesoresAdminActivos').each(function() {
      var datatable = $(this);
      // SEARCH - Add the placeholder for Search and Turn this into in-line form control
      var search_input = datatable.closest('.dataTables_wrapper').find('div[id$=_filter] input');
      search_input.attr('placeholder', 'Buscar');
      search_input.removeClass('form-control-sm');
      // LENGTH - Inline-Form control
      var length_sel = datatable.closest('.dataTables_wrapper').find('div[id$=_length] select');
      length_sel.removeClass('form-control-sm');
    });
  });
})(jQuery);
(function($) {
  'use strict';
  $(function() {
    $('#TablaClientesActivos').DataTable({
      "aLengthMenu": [
        [5, 10, 15, -1],
        [5, 10, 15, "Todos"]
      ],
      "iDisplayLength": 10,
      "language": {
        search: ""
      }
    });
    $('#TablaClientesActivos').each(function() {
      var datatable = $(this);
      // SEARCH - Add the placeholder for Search and Turn this into in-line form control
      var search_input = datatable.closest('.dataTables_wrapper').find('div[id$=_filter] input');
      search_input.attr('placeholder', 'Buscar');
      search_input.removeClass('form-control-sm');
      // LENGTH - Inline-Form control
      var length_sel = datatable.closest('.dataTables_wrapper').find('div[id$=_length] select');
      length_sel.removeClass('form-control-sm');
    });
  });
})(jQuery);
(function($) {
  'use strict';
  $(function() {
    $('#TablaCotizacionesActivas').DataTable({
      "aLengthMenu": [
        [5, 10, 15, -1],
        [5, 10, 15, "Todos"]
      ],
      "iDisplayLength": 10,
      "language": {
        search: ""
      }
    });
    $('#TablaCotizacionesActivas').each(function() {
      var datatable = $(this);
      // SEARCH - Add the placeholder for Search and Turn this into in-line form control
      var search_input = datatable.closest('.dataTables_wrapper').find('div[id$=_filter] input');
      search_input.attr('placeholder', 'Buscar');
      search_input.removeClass('form-control-sm');
      // LENGTH - Inline-Form control
      var length_sel = datatable.closest('.dataTables_wrapper').find('div[id$=_length] select');
      length_sel.removeClass('form-control-sm');
    });
  });
})(jQuery);
(function($) {
  'use strict';
  $(function() {
    $('#TablaPolizasActivas').DataTable({
      "aLengthMenu": [
        [5, 10, 15, -1],
        [5, 10, 15, "Todos"]
      ],
      "iDisplayLength": 10,
      "language": {
        search: ""
      }
    });
    $('#TablaPolizasActivas').each(function() {
      var datatable = $(this);
      // SEARCH - Add the placeholder for Search and Turn this into in-line form control
      var search_input = datatable.closest('.dataTables_wrapper').find('div[id$=_filter] input');
      search_input.attr('placeholder', 'Buscar');
      search_input.removeClass('form-control-sm');
      // LENGTH - Inline-Form control
      var length_sel = datatable.closest('.dataTables_wrapper').find('div[id$=_length] select');
      length_sel.removeClass('form-control-sm');
    });
  });
})(jQuery);
(function($) {
  'use strict';
  $(function() {
    $('#TablaProveedoresActivos').DataTable({
      "aLengthMenu": [
        [5, 10, 15, -1],
        [5, 10, 15, "Todos"]
      ],
      "iDisplayLength": 10,
      "language": {
        search: ""
      }
    });
    $('#TablaProveedoresActivos').each(function() {
      var datatable = $(this);
      // SEARCH - Add the placeholder for Search and Turn this into in-line form control
      var search_input = datatable.closest('.dataTables_wrapper').find('div[id$=_filter] input');
      search_input.attr('placeholder', 'Buscar');
      search_input.removeClass('form-control-sm');
      // LENGTH - Inline-Form control
      var length_sel = datatable.closest('.dataTables_wrapper').find('div[id$=_length] select');
      length_sel.removeClass('form-control-sm');
    });
  });
})(jQuery);
(function($) {
  'use strict';
  $(function() {
    $('#TablaReportesActivos').DataTable({
      "aLengthMenu": [
        [5, 10, 15, -1],
        [5, 10, 15, "Todos"]
      ],
      "iDisplayLength": 10,
      "language": {
        search: ""
      }
    });
    $('#TablaReportesActivos').each(function() {
      var datatable = $(this);
      // SEARCH - Add the placeholder for Search and Turn this into in-line form control
      var search_input = datatable.closest('.dataTables_wrapper').find('div[id$=_filter] input');
      search_input.attr('placeholder', 'Buscar');
      search_input.removeClass('form-control-sm');
      // LENGTH - Inline-Form control
      var length_sel = datatable.closest('.dataTables_wrapper').find('div[id$=_length] select');
      length_sel.removeClass('form-control-sm');
    });
  });
})(jQuery);