function validate_result_entry_form() {
  var place = document.result_entry_form.elements[0].value;
  if (place == "" || isNaN(place)) {
    alert('Place must be a valid number.');
    return false;
  }
  var val = document.result_entry_form.elements[1].value;
  if (val == "") {
    alert('You must select an eliminated player.');
    return false;
  }
  val = document.result_entry_form.elements[2].value;
  if (val == "" && place != "1") {
    alert('You must specify a bounty collector.');
    return false;
  }
  return true;
}

function validate_start_tournament_form() {
  var val = document.start_tournament_form.elements[1].value;
  if (val == "" || isNaN(val) || parseInt(val, 10) < 3) {
    alert('Num Players must be a number greater than or equal to 3.');
    return false;
  }
  return true;
}
