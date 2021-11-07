$(function() {
    // =====================================
    // Layouts/loadingPage
    $(window).on('load', function(event) {
        $('#preloader').delay(1000).fadeOut('slow');
    });
     // Layouts/Back to top
     var srcollToTop = function() {
        //Check to see if the window is top if not then display button
        $(window).on('scroll', function() {
            if ($(this).scrollTop() > 100) {
                $('#back-to-top').fadeIn();
            } else {
                $('#back-to-top').fadeOut();
            }
        });
        //Click event to scroll to top
        $('#back-to-top').click(function() {
            $('html, body').animate({ scrollTop: 0 }, 100);
            return false;
        });
    };
    srcollToTop();
});