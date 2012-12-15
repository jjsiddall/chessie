$(document).ready(function() {
	
	//makes pieces only draggable for
	if ($(".page-header").data('draggable') === "yes"){
	  	//used for piece set up - drag 'em around 
	  	makeDraggable();
	}

	if ($(".page-header").data('droppable') === "update-db"){
		console.log("db")
	  	//used for making the board able to take items that are dropped on it
	  	$('.square').droppable({
	    	drop: function(event, ui) {
	    		//cashe the item that is being dragged
				pieceBeingMoved = $(ui.draggable);
				//remove any children on the spot being dropped on
				$(this).children().remove();
				//add the dragged piece to the board
				$(this).append(pieceBeingMoved);
				pieceBeingMoved.css("top", "");
				pieceBeingMoved.css("left", "");

				//reset the extra piece set
				resetExtraPiece($(ui.draggable));

				//remove the piece being dragged if it is moved to any of the "deleteme" squares
				if ($(this).attr('class').indexOf('deleteme') != -1){
					pieceBeingMoved.remove();
				}
				saveCurrentBoard();
	    	}
	  	});
  	}

	if ($(".page-header").data('droppable') === "screen-response"){
		console.log("screen")
	  	//used for making the board able to take items that are dropped on it
	  	$('.square').droppable({
	    	drop: function(event, ui) {
	    		//cashe the item that is being dragged
				pieceBeingMoved = $(ui.draggable);
				verifyCorrectMove(pieceBeingMoved, $(this));
	    	}
	  	});
  	}
});

function makeDraggable(){
	$('.piece').addClass('draggable');
	$( ".draggable" ).draggable({ containment: "#setup_board" });
}

function verifyCorrectMove(pieceBeingMoved, droppedOnSquare){

	//generate an identical statement to the moves written out
	var moveMade = pieceBeingMoved.html() + " from " + pieceBeingMoved.parent().attr("id") + " to " + droppedOnSquare.attr("id");
	var nextMoveInList = $('.nextMove:First')
	
	//Making the piece "revert" on any movement --> this will be overwritten (see below) if it is the right piece and move 	
	pieceBeingMoved.draggable({ revert: true });	
	
	//check if the nextMove in the list 
	if (moveMade === nextMoveInList.html()){
		console.log("right!");

		//This it the right spot, so I don't want it to revert anymore (in case it was previously)
		pieceBeingMoved.draggable({ revert: false });

		//show the move and pull it off the "next move list"
		nextMoveInList.removeClass("hideMe").removeClass("nextMove");
		//remove any children on the spot being dropped on
		droppedOnSquare.children().remove();
		//add the dragged piece to the board
		droppedOnSquare.append(pieceBeingMoved);
		pieceBeingMoved.css("top", "");
		pieceBeingMoved.css("left", "");

		//check to see if the next move is one the computer should make
		var nextMoveInList = $('.nextMove:First');
		if (nextMoveInList.data('computer') === true){
			console.log("its a computer move!")

			//do not show the popover for the move the user is on
			showPopover = false;
			//pulls apart HTML and sends the from, to, and piece to "one_move"
			var shown_move = nextMoveInList.html().split(" ");
			var current_move = [shown_move[2]];
			current_move.push(shown_move[4]);

			//sends in the current move
			one_move(current_move, shown_move[0]);
			nextMoveInList.remove();
		}	

		//look and see if all the moves are done
		if ($('.nextMove:First').length === 0){
	  		$('#conclusionModal').modal('show');  		
	  	}
	}
	else{
		console.log("wrong");
// TODO: something that pops up the wrong move and asks if you want a hint
	}
}