$(document).ready(function() {
    $(".toggle-dropdown-header").click(function() {
        var dropdown = $("#dropdown-header-bkg"),
            arrow = $("#dropdown-header-arrow");
        if(dropdown.hasClass("open")) {
            $.rotate(0, arrow);
            dropdown.removeClass("open").animate({
                height: "0px",
                padding: "0px 0"
            }, 200, function() {
            });
        } else {
            $.rotate(180, arrow);
            dropdown.addClass("open").animate({
                height: "180px",
                padding: "30px 0"
            }, 200, function() {
            // Animation complete.
            });
        }
    });
});