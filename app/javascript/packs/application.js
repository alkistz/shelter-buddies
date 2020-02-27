import "bootstrap";
import "flatpickr";
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initMapbox } from '../plugins/init_mapbox';
import { initFullCalendar } from '../plugins/full_calendar';
import '@fullcalendar/core/main.css';
//import '@fullcalendar/daygrid/main.css';
import '@fullcalendar/timegrid/main.css';

// import { initAutocomplete } from '../plugins/init_mapbox';
initMapbox();
// initAutocomplete();
// console.log(document.querySelector("#datetimepicker1"))

flatpickr('#datetimepicker1')
initFullCalendar();
