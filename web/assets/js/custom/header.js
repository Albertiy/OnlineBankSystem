$(document).ready(function () {
    $("#typical").click(function () {
        if ($('#top_navbar').hasClass('navbar-inverse'))
            $('#top_navbar').removeClass('navbar-inverse');
        if (!$('#top_navbar').hasClass('navbar-default'))
            $('#top_navbar').addClass('navbar-default');
        $('.footer').css("background-color", "#f5f5f5");
    });
    $("#night").click(function () {
        if ($('#top_navbar').hasClass('navbar-default'))
            $('#top_navbar').removeClass('navbar-default');
        if (!$('#top_navbar').hasClass('navbar-inverse'))
            $('#top_navbar').addClass('navbar-inverse');
        $('.footer').css("background-color", "#111111");
    });
    $("#location").ready(function () {
        var s = String(window.location);
        var a = s.lastIndexOf("/");
        var b = s.lastIndexOf(".");
        var s1 = "#" + s.substr(a + 1, b - a - 1);
        if (!$(s1).parent().hasClass("active"))
        {
            $(s1).parent().addClass("active");
        }
    });
});