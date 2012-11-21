$(document).ready(function() {

	$('#lesen').on('click', function() {
        $.ajax({
            url : "new_exercises.csv",
            dataType: "text",
            success : function (data) {
                console.log(data.split(/\r\n|\n/));
            }
        });
	});
});