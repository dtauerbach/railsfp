// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require d3
//= require d3plus
//= require_tree .

// fake data for demo
var data = [
    {"year": 1992, "name":"alpha", "value": 34},
    {"year": 1992, "name":"alpha2", "value": 65},
    {"year": 1992, "name":"beta", "value": 10},
    {"year": 1992, "name":"beta2", "value": 38},
    {"year": 1992, "name":"gamma", "value": 10},
    {"year": 1992, "name":"gamma2", "value": 34},
    {"year": 1992, "name":"delta", "value": 43},
    {"year": 1992, "name":"delta2", "value": 35}
]

submit_answer = function(answer_text) {
    $('input[name="answer_json"]').val(answer_text);
    $("form").submit();
}

ready = function() {
    $(".question-button").on("click", function(){
        submit_answer($(this).text());
    });

    $(".submit-button").on("click", function(){
        submit_answer($('input[name="answer"]').val());
    });

    var visualization = d3plus.viz()
        .container("#viz")
        .data(data)
        .type("box")
        .id("name")
        .x("value")
        .y("year", {"scale": "discrete"})
        .time("year")
        .draw()
}


$(document).ready(ready);
$(document).on('page:load', ready);
