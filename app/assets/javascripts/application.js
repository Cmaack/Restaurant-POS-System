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
var seconds = 300; //Variables for the code below
var countdownTimer;
var colorChange; //sets up array of colors
colorChange = ['#7ed473', '#fff194', '#fa8283']
function secondPassed(){
	var minutes = Math.floor(seconds/60); //takes the output of seconds/60 and makes rounds it down. 4.7 = 4, 3.7 = 3. (to keep the minutes displaying right)
	var remainingSeconds = seconds % 60; //takes remainder of seconds/60 and displays it. so 270/60 = 4.5 this displays it as 30 so it becomes 4:30 instead of 4.5
	if (remainingSeconds < 10) {  //if remaining seconds are less than 10 add a zero before the number. Displays numbers like 09 08 07 06
        remainingSeconds = "0" + remainingSeconds;
    }
    document.getElementById('countdown').innerHTML = minutes + ":" + remainingSeconds; //displays time in the html page  5:06

   if (seconds == 0) {
		clearInterval(countdownTimer);  //keeps value at zero once it hits zero. 0:00 will not go anymore

		}
};

function changeColor(){ //this changes the background color based on the time that has elapsed
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
