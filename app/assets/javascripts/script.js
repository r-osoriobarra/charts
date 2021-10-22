$(document).ready(function(){

    $(".montly_origin").hide();
    $(".montly_blend").hide();

    $("#montlySales").click(function(){
        $(".montly_sales").slideToggle(1300);
    });

    $("#montlySalesOrigin").click(function(){
        $(".montly_origin").slideToggle(1300);
    });

    $("#montlySalesBlend").click(function(){
        $(".montly_blend").slideToggle(1300);
    });

});

