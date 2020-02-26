import "bootstrap";
import "flatpickr";

import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

// console.log(document.querySelector("#datetimepicker1"))

flatpickr('#datetimepicker1')
