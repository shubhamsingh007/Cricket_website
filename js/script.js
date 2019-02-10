
//ripple effect
$(document).ready(function(){

    $("#header, .info").ripples({
        dropRadius: 20,
        perturbance: 0.09,
    
      });

//magnific poopup
$('.parent-container').magnificPopup({
    delegate: 'a', // child items selector, by clicking on it popup will open
    type: 'image',

    gallery:{
        enabled:true
    }
    // other options
  });

//stickey nav-bar
$(window).scroll(function(){
    let position = $(this).scrollTop();

    if(position >= 700){
        $('.navbar').addClass('navbar-background');
        $('.navbar').addClass('fixed-top');
    }
    else{
        $('.navbar').removeClass('navbar-background');
        $('.navbar').removeClass('fixed-top');
    }
});




});