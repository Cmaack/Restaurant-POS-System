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
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .
console.log("..loaded")
var seconds = 300; 
var countdownTimer;
var colorChange;
colorChange = ['#7ed473', '#fff194', '#fa8283']
function secondPassed(){
	var minutes = Math.floor(seconds/60);
	var remainingSeconds = seconds % 60;
	if (remainingSeconds < 10) {
        remainingSeconds = "0" + remainingSeconds;
    }
    document.getElementById('countdown').innerHTML = minutes + ":" + remainingSeconds;

   if (seconds == 0) {
		clearInterval(countdownTimer);
		}
};

function changeColor(){
	if (seconds <= 300 && seconds > 90) {  //green between 5:00 - 1:30
		document.body.style.background = colorChange[0];
	}
	else if (seconds <= 90 && seconds > 30) { //yellow between 1:30 - 30
		document.body.style.background = colorChange[1];
	}
	else if(seconds <= 30 && seconds >= 0){ // red between 30 - 0
	document.body.style.background = colorChange[2];
	}
};
