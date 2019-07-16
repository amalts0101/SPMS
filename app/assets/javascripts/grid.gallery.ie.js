$('.grid-box a span').css({'opacity' : '1'}).hide();
$('.grid-box a').hover(
    function () {
        $(this).children('span').fadeIn(200);
    },
    function () {
        $(this).children('span').fadeOut(200);
    }
);