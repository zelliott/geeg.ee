function showSignIn() {
    $("#auth").show();
    $("#blur-wrapper").addClass("blurred");
    $("#darken-blur-wrapper").show();
}

function hideSignIn() {
    $("#auth").hide();
    $("#blur-wrapper").removeClass("blurred");
    $("#darken-blur-wrapper").hide();
}

$(document).ready(function() {
    $("input[type=checkbox]").change(function () {
        $checkbox = $(this)
        $icon = $checkbox.siblings("i")
    
        checked = $checkbox.is(":checked")
    
        $icon.toggleClass('fa-check-square-o', checked)
             .toggleClass('fa-square-o', !checked)
    });
});