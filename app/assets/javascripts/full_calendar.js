var init_calendar;
init_calendar = function(){
  $('.calendar').each(function(){
    var calendar = $(this);
    calendar.fullCalendar({
      header: {
        left: 'prev, next today',
        center: 'title',
        right: 'month, agendaWeek, agendaDay '
      }
    });
  });
}

$(document).on('turbolinks:load', init_calendar);