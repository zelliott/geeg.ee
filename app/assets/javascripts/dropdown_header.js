function toggleDropdownHeader() {
    if($("#dropdown-header-bkg").hasClass("on")) {
        var degrees = 0;
        $("#dropdown-header-bkg").removeClass("on");
        $("#dropdown-header-bkg").animate({
            height: "0px",
            padding: "0px 0"
        }, 200, function() {
        });
    } else {
        var degrees = 180;
        $("#dropdown-header-bkg").addClass("on");
        $("#dropdown-header-bkg").animate({
            height: "180px",
            padding: "30px 0"
        }, 200, function() {
        // Animation complete.
        });
    }
    
    $('#dropdown-header-arrow').animate(
        {
            degrees: degrees
        },
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