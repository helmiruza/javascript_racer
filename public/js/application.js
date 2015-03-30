

$(document).ready(function(i) {
		// function fillAndSubmitHiddenForm(player) {
  //       theForm = document.getElementById( 'realForm' );
  //       theForm.won.value = player.playerNum;
  //       theForm.player1.value = self.player1.location;
  //       theForm.player2.value = self.player2.location;
  //       theForm.time.value = self.timer.time();
  //       theForm.submit();
  //     }
	  



	  $(document).on('keyup', function(i) {
	  	
	  	if(i.which == 81){
	  	$("#player1_row").prepend("<td></td>");
	  	var n = $( "#player1_row td" ).length;

	  		if (n == 26){
	  		alert("Player 1 has won!");
	  		$("#player1winsgame").submit();
	  		}
	  	}

	  	if(i.which == 80){
	  	$("#player2_row").prepend("<td></td>");
	  	var n = $( "#player2_row td" ).length;

	  		if (n == 26){
	  			alert("Player 2 has won!");
	  			$("#player2winsgame").submit();
	  		}
	  	}

	  });

	});