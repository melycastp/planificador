var init_calendar;
init_calendar = function(){
  $('.calendar').each(function(){
    var calendar = $(this);
    calendar.fullCalendar({
      locale: 'es',
      header: {
        left: 'prev, next today',
        center: 'title',
        right: 'month, agendaWeek, agendaDay '
      },
      //eventLimit: true,
      events: 'admin/eventos/eventos.json'
    });
  });
}

$(document).on('turbolinks:load', init_calendar);