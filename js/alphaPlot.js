(function($) {
    $(document).ready(function() {
	
	$('#alphaPlot').scianimator({
	    'images': ['images/alphaPlot1.png'],
	    'width': 480,
	    'delay': 1000,
	    'loopMode': 'loop'
	});
	$('#alphaPlot').scianimator('play');
    });
})(jQuery);
