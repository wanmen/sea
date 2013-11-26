# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
    $(".course-outline .page a")
        .bind "ajax:success", (event, data, status) ->
            update_outline(data)

update_outline = (data) ->
    $(".course-outline").html(data)
    $(".course-outline .page a")
        .bind "ajax:success", (event, data, status) ->
            update_outline(data)
