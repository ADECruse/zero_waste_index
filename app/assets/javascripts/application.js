// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.

//= require rails-ujs
//= require turbolinks
//= require popper
//= require jquery3
//= require bootstrap-sprockets
//= require_tree .

$('.popover-dismiss').popover({
  trigger: 'focus'
})

function myNavFunc(){
    // If it's an iPhone..
    if( (navigator.platform.indexOf("iPhone") != -1)
        || (navigator.platform.indexOf("iPod") != -1)
        || (navigator.platform.indexOf("iPad") != -1))
         window.open("maps://maps.google.com/maps?daddr=51.467978,-2.592091&amp;ll=");
    else
         window.open("http://maps.google.com/maps?daddr=51.467978,-2.592091&amp;ll=");
}

function initMap() {
        var bristol = {lat: 51.467978, lng: -2.592091};
        var thai = {lat:51.469542, lng:-2.593643};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 12,
          center: bristol
        });
        var marker = new google.maps.Marker({
          position: thai,
          map: map
        });
      }
