// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require twitter/bootstrap
//= require application
//= require move
//= require setup
//= require_tree .



$(document).ready(function() {
	if ($(".page-header").data('modal') === "yes"){
		$('#descriptionModal').modal('show');
	}

	var start = $("#board").data('initial_setup');
	if ((start != undefined)&&(start != "")){
		loadPiecesOnBoard(start.split(","));
	}
});

//This function takes an array of pieces and loads them on the board
function loadPiecesOnBoard(initial_setup){

	var ilen = initial_setup.length
	for (var i=0; i<ilen; ++i) {
		var square_info = initial_setup[i].split("-");
		$('#'+square_info[0]).append('<div class="piece '+square_info[1]+'">'+square_info[2]+'</div>');
	}
}

// function sizeBoard(percent_of_original){
// 	var css_attr_to_shrink = ["#board", ".square", ".unused-square", ".corner", ".side", ".top"]
// 	var ilen = css_attr_to_shrink.length
// 	for (var i=0; i<ilen; ++i) {
// 		$(css_attr_to_shrink[i]).css("height", parseInt($(css_attr_to_shrink[i]).css("height"))*percent_of_original)
// 			.css("width", parseInt($(css_attr_to_shrink[i]).css("width"))*percent_of_original)
// 	}
// }
// function sizeFont(percent_of_original){
// 	var css_attr_to_shrink = [".piece", ".side", ".top"]
// 	var ilen = css_attr_to_shrink.length
// 	for (var i=0; i<ilen; ++i) {
// 		$(css_attr_to_shrink[i]).css("font-size", parseInt($(css_attr_to_shrink[i]).css("font-size"))*percent_of_original)
// 			.css("padding-left", parseInt($(css_attr_to_shrink[i]).css("padding-left"))*percent_of_original)
// 	}

// }
