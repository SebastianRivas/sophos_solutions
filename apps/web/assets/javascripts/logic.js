function current_position() {
  navigator.geolocation.getCurrentPosition(function(position){
    document.getElementById('latitude').value = position.coords.latitude;
    document.getElementById('longitude').value = position.coords.longitude;
  });
}

function load_action() {
  let trip_id = document.getElementById('trip').value;
  document.getElementById('end_form_trip').action = 'trip/' + trip_id; 
}

function show_form(action_button) {
  switch (action_button) {
    case 'rider':
      document.getElementById('init_trip').style.display = "initial";
      document.getElementById('end_trip').style.display = "none";
      current_position()
    break;

    case 'driver':
      document.getElementById('init_trip').style.display = "none";
      document.getElementById('end_trip').style.display = "initial";
    break;
  }
}
