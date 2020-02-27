import "bootstrap";
import "flatpickr";
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initMapbox } from '../plugins/init_mapbox';
// import { initAutocomplete } from '../plugins/init_mapbox';
initMapbox();
// initAutocomplete();
// console.log(document.querySelector("#datetimepicker1"))

flatpickr('#datetimepicker1')
