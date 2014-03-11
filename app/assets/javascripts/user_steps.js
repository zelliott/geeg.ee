$(document).ready(function() {
    $(".account-types > div").click(function() {
        if ($(this).hasClass("player-acc")) {
            $("input[value=player]").click();
        }
        else if ($(this).hasClass("caster-acc")) {
            $("input[value=caster]").click();
        }
        else if ($(this).hasClass("league-acc")) {
            $("input[value=lol]").click();
        }
        else if ($(this).hasClass("dota-acc")) {
            $("input[value=dota]").click();
        }
        else if ($(this).hasClass("starcraft-acc")) {
            $("input[value=starcraft]").click();
        }
        else {
            
        }
    });
});