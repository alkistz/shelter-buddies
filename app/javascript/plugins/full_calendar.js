import { Calendar } from '@fullcalendar/core';
import interactionPlugin from '@fullcalendar/interaction';
//import dayGridPlugin from '@fullcalendar/daygrid';
import timeGridPlugin from '@fullcalendar/timegrid';
import moment from 'moment';

const initFullCalendar = () => {
document.addEventListener('DOMContentLoaded', function() {
  var calendarEl = document.getElementById('calendar');

  var calendar = new Calendar(calendarEl, {
    plugins: [ interactionPlugin, timeGridPlugin ],
    defaultView: 'timeGridWeek',
    selectable: true,
    defaultTimedEventDuration: '00:30:00',
    minTime: "07:00:00",
    maxTime: "19:30:00",
    slotDuration: '00:30:00',
    slotLabelInterval: 30,
//    slotLabelFormat: 'h(:mm)a',
    header: {
      left: 'prev,next today',
      center: 'title',
      right: 'agendaDay,agendaWeek,listDay'
    },
      select: function(start, end, jsEvent, view) {
      let start_m = moment(start.start)
      if (start_m.isAfter(moment())) {

        var eventTitle = prompt("Provide your name:");
        if (eventTitle)

        {
          var calendar = new Calendar(calendarEl, {
            eventRender: function(info) {
              title: eventTitle,
              isStart;
              isEnd;
              stick: true
            }
          });
        }

          alert('Buddy time booked at: ' + start_m.format("h(:mm)a"));

      } else {
        alert('Cannot book an appointment in the past');
      }
    },
    eventClick: function(calEvent, jsEvent, view) {
      alert('Event: ' + calEvent.title);
    }
  });

  calendar.render();
});
};

export { initFullCalendar };


