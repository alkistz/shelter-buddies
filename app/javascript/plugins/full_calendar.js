import { Calendar } from '@fullcalendar/core';
import interactionPlugin from '@fullcalendar/interaction';
//import dayGridPlugin from '@fullcalendar/daygrid';
import timeGridPlugin from '@fullcalendar/timegrid';
import momentPlugin from '@fullcalendar/moment';
import moment from 'moment';
import listPlugin from '@fullcalendar/list';

const initFullCalendar = () => {
document.addEventListener('DOMContentLoaded', function() {
  var calendarEl = document.getElementById('calendar');
console.log(calendarEl.dataset)
const events = JSON.parse(calendarEl.dataset.bookings).map((booking) =>
        { return {
        title  : 'booked',
        start  : moment(booking.time_slot).format(),
        end  : moment(booking.time_slot).add(30, "minutes").format(),
        allDay : false // will make the time show
      }}
     )
//     console.log(events)
  var calendar = new Calendar(calendarEl, {
    plugins: [ interactionPlugin, timeGridPlugin, momentPlugin, listPlugin ],
    defaultView: 'timeGridWeek',
    contentHeight: 600,
    selectable: true,
    selectOverlap: false,
    defaultTimedEventDuration: '00:30:00',
    minTime: "07:00:00",
    maxTime: "19:30:00",
    slotDuration: '00:30:00',
    slotLabelInterval: 30,
    slotLabelFormat: 'h:mma',
    header: {
      left: 'prev,next today',
      center: 'title ',
      right: 'agendaDay, timeGridWeek,listDay'
    },

   // eventSources: [{ url: '/users/<%= current_volunteer.id %>/events', }],


    events: events,
    select: function(info) {
//      console.log(info)
      if (info.start > Date.now()) {
        var eventTitle = prompt("Provide your name:");
//        if (eventTitle)
//        {
        calendar.addEvent({
          title: eventTitle,
          start: info.start,
          end: info.end
        });
        let input_time = document.querySelector('#booking_time_slot')
        input_time.value = info.start
        document.querySelector('#new_booking').submit()
        alert('Buddy time booked on: ' + info.start.toUTCString());
      } else {
        alert('Cannot book an appointment in the past');
      }
//    },
//    eventClick: function(calEvent, jsEvent, view) {
//      alert('Event: ' + calEvent.title);
    }
  });

  calendar.render();
});
};

export { initFullCalendar };

//      select: function(start, end, jsEvent, view) {
//      let start_m = moment(start.start)
// start_m?
//      if (info.start.isAfter(moment())) {



//          var calendar = new Calendar(calendarEl, {
//            eventRender: function(info) {
//              console.log(info.event.title);
//              console.log(info.el);
//              console.log(info.view);
//              console.log(info.isStart);
//              console.log(info.isEnd);
//              console.log(info.isMirror);
//            }
//          });

//          var calendar = new Calendar(calendarEl, {
//            eventRender: function(info) {
//              title: eventTitle,
//              isStart;
//              isEnd;
//              stick: true
//            }
//          });
//        }
// start_m?
//          alert('Buddy time booked at: ' + info.start.formatDate("h:mma"));
