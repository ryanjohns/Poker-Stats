// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
function validate_result_entry_form() {
  var place = $('place').value;
  if (place == "" || isNaN(place)) {
    alert('Place must be a valid number.');
    return false;
  }
  if ($('player_id').value == "") {
    alert('You must select an eliminated player.');
    return false;
  }
  if ($('bounty_collector_id').value == "" && place != "1") {
    alert('You must specify a bounty collector.');
    return false;
  }
  return true;
}

function validate_start_tournament_form() {
  var val = $('num_entrants').value
  if (val == "" || isNaN(val) || parseInt(val, 10) < 3) {
    alert('Num Players must be a number greater than or equal to 3.');
    return false;
  }
  return true;
}

function update_fee_paid(player_id, series_id) {
  new Ajax.Request('/get-fees-paid-for-player/' + series_id + '/' + player_id,
    {asynchronous:true, evalScripts:true,
      onSuccess:function(request) {
        $('fee_paid').checked = parseInt(request.responseText) < 10;
      },
      onFailure:function(request) {
        alert(request.responseText);
      }
    });
}
