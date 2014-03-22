$(document).ready(function() {
    $(".main-block h3").click(function() {
        var header = $(this),
            arrow = header.children("i"),
            collapsable = header.next();
        if(collapsable.hasClass("hidden")) {
            $.rotate(0, arrow);
            collapsable.removeClass("hidden").animate({
                height: "200px",
                margin: "12px 0 0 0"
            }, 200, function() {
            });
        } else {
            $.rotate(180, arrow);
            collapsable.addClass("hidden").animate({
                height: "0",
                margin: "0"
            }, 200, function() {
            });
        }
    });
});