// Rotate
// Params: number of degrees and element to be rotated
$.rotate = function(degrees, elem) {
    elem.animate(
        {degrees: degrees},
        {
            step: function(now, tween) {
                if (tween.prop === "degrees") {
                    $(this).css('-webkit-transform','rotate('+now+'deg)');
                    $(this).css('-moz-transform','rotate('+now+'deg)'); 
                    // add Opera, MS etc. variants
                    $(this).css('transform','rotate('+now+'deg)');  
                }
            }
        });
}