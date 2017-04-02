# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $('#aircraft_code').autocomplete
    source: "/autocomplete/acs"
    minLength: 2
    select: (event,ui) -> $("#aircraft_code").val(ui.item.id)

  $("#srsLk").click ->
    $("#srs").toggle()