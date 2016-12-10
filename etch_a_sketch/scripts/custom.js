$(function() {

	 $('body').append('<div id="slider"></div>');
   $('body').append('<div id="slider_num">Choose Grid Size</div>');

   $('#slider').slider({
		max: 125,
		min: 2,
		value: 25,
		change: function(event, ui) {
			$('.squares').remove();
				grid_size = $('#slider').slider('value');
				pixel_size = (sketch_dimensions/grid_size) - 2; // the minus two accounts for margins
				squa_qua = grid_size * grid_size; // total squares is grid size squared
			for (i = 0; i < squa_qua; ++i) {
				$('#wrapper').append('<div class="squares" style="height:'+ pixel_size +'px; width:'+ pixel_size +'px; background-color:#5C2025; float:left;"></div>');
			}
			$('.squares').mouseenter(function() {
  			$(this).css("background-color", '#0'+Math.floor(Math.random()*16777215).toString(16).slice(0,-1));
  		})
		}

	});

	const sketch_dimensions = 500;
	var grid_size = $('#slider').slider('value');
	var pixel_size = (sketch_dimensions/grid_size) - 2; // the minus two accounts for margins
	var squa_qua = grid_size * grid_size; // total squares is grid size squared

	$('body').prepend('<h1 style="text-align:center;">Etch-Sketchhh</h1>');
	
	for (i = 0; i < squa_qua; ++i) {
    	$('#wrapper').append('<div class="squares"></div>');
   };

  $('.squares').css({ 'width' :pixel_size,
    				          'height':pixel_size,
    				          'background-color': '#5C2025',
    				          'float': 'left',
    				          'margin': '1px' });

  $('.squares').mouseenter(function() {
  		$(this).css("background-color", '#0'+Math.floor(Math.random()*16777215).toString(16).slice(0,-1));
  })

});
