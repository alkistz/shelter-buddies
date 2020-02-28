import { Calendar } from '@fullcalendar/core';
import interactionPlugin from '@fullcalendar/interaction';
//import dayGridPlugin from '@fullcalendar/daygrid';
import timeGridPlugin from '@fullcalendar/timegrid';
import momentPlugin from '@fullcalendar/moment';
//import moment from 'moment';

const initFullCalendar = () => {
document.addEventListener('DOMContentLoaded', function() {
  var calendarEl = document.getElementById('calendar');

  var calendar = new Calendar(calendarEl, {
    plugins: [ interactionPlugin, timeGridPlugin, momentPlugin ],
    defaultView: 'timeGridWeek',
    selectable: true,
    defaultTimedEventDuration: '00:30:00',
    minTime: "07:00:00",
    maxTime: "19:30:00",
    slotDuration: '00:30:00',
    slotLabelInterval: 30,
// comment slotLabelFormat out?
    slotLabelFormat: 'h(:mm)a',
    header: {
      left: 'prev,next today',
      center: 'title',
      right: 'agendaDay,agendaWeek,listDay'
    },
      select: function(start, end, jsEvent, view) {
//      let start_m = moment(start.start)
// start_m?
      if (start.isAfter(moment())) {

        var eventTitle = prompt("Provide your name:");
        if (eventTitle)

        {
          var calendar = new Calendar(calendarEl, {
            eventRender: function(info) {
              console.log(info.event.title);
              console.log(info.el);
              console.log(info.view);
              console.log(info.isStart);
              console.log(info.isEnd);
              console.log(info.isMirror);
            }
          });

//          var calendar = new Calendar(calendarEl, {
//            eventRender: function(info) {
//              title: eventTitle,
//              isStart;
//              isEnd;
//              stick: true
//            }
//          });
        }
// start_m?
          alert('Buddy time booked at: ' + start.format("h(:mm)a"));

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
