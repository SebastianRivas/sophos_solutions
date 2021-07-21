function current_position() {
  navigator.geolocation.getCurrentPosition(function(position){
    document.getElementById('latitude').value = (position.coords.latitude).toFixed(6);
    document.getElementById('longitude').value = (position.coords.longitude).toFixed(6);
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

    case 'payment_method':
      let selected_option = document.getElementById('payment_method').value;

      if (selected_option === 'CARD') {
        document.getElementById('account_form').style.display = "none";
        document.getElementById('card_form').style.display = "initial";
      } else if (selected_option === 'NEQUI') {
        document.getElementById('account_form').style.display = "initial";
        document.getElementById('card_form').style.display = "none";
      }
    break;
  }
}
