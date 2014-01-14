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