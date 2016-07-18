// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


$(document).ready(function() {

    $('.mouse').mouseenter(function () {

        if($(this).hasClass("red")){
            $(".red-texto").addClass(("cambiar-color"));
            $(".red-fondo").addClass(("cambiar-opacidad"));
        }

        if($(this).hasClass("paneles")){
            $(".paneles-texto").addClass(("cambiar-color"));
            $(".paneles-fondo").addClass(("cambiar-opacidad"));
        }

        if($(this).hasClass("costos")){
            $(".costos-texto").addClass(("cambiar-color"));
            $(".costos-fondo").addClass(("cambiar-opacidad"));
        }

        if($(this).hasClass("mail")){
            $(".mail-fondo").addClass(("cambiar-opacidad"));
        }
        //$(this).children('.fondo-verde').css({ opacity: 1 });
    }).mouseleave(function() {
        if($(this).hasClass("red")){
            $(".red-texto").removeClass(("cambiar-color"));
            $(".red-fondo").removeClass(("cambiar-opacidad"));

        }

        if($(this).hasClass("paneles")){
            $(".paneles-texto").removeClass(("cambiar-color"));
            $(".paneles-fondo").removeClass(("cambiar-opacidad"));
        }


        if($(this).hasClass("costos")){
            $(".costos-texto").removeClass(("cambiar-color"));
            $(".costos-fondo").removeClass(("cambiar-opacidad"));
        }

        if($(this).hasClass("mail")){
            $(".mail-fondo").removeClass(("cambiar-opacidad"));
        }
       // $(this).children('.fondo-verde').css({ opacity: 0 });
    });






});

$(document).on('click', '.slow-down', function(event){


        $('html, body').animate({
            scrollTop: $($.attr(this, 'href')).offset().top
        }, 500);



});
