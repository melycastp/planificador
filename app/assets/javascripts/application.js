// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require moment 
//= require fullcalendar
//= require full_calendar
//= require locale-all
//= requite daterangepicker
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

$(function() {
  $.getScript('admin/eventos/new', function() {
          $('#evento_date_range').val(moment(start).format("MM/DD/YYYY HH:mm") + ' - ' + moment(end).format("MM/DD/YYYY HH:mm"))
          date_range_picker();
          $('.fechainicial_hidden').val(moment(start).format('YYYY-MM-DD HH:mm'));
          $('.fechafinal_hidden').val(moment(end).format('YYYY-MM-DD HH:mm'));
        });
});


/*$( function() {
    var dialog

    dialog = $( "#dialog").dialog({
      autoOpen: false,
      height: 200,
      width: 350,
      modal: true,
      buttons: {
        "Crear": {
        	function: add,
        	text: "Crear",
        	class: "btn btn-success"
        }
      }
    });

    function add() {;
    	$( "#dialog").dialog( "close" );
    }

    $("#create-note" ).button().on( "click", function() {
      dialog.dialog( "open" );
	});
 
});*/