// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require tether
//= require bootstrap-sprockets
//= require summernote
//= require_tree .


$(function() {
    $('[data-provider="summernote"]').each(function(){
        $(this).summernote({
            toolbar: [
                ['style', ['style']],
                ['font', ['bold', 'italic', 'underline', 'clear']],
                ['color', ['color']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['height', ['height']],
                ['table', ['table']],
                ['insert', ['link', 'picture', 'hr']],
                ['view', ['fullscreen', 'codeview']],
                ['help', ['help']]
            ],
            minHeight: 100,             // set minimum height of editor
            maxHeight: 400              // set maximum height of editor

        });
    });

    $('.star-rating').each(function() {
        $(this).raty({
            path: '/assets',
            readOnly: 'true',
            score: function () {
                return $(this).attr('data-score');
            }
        });
    });

    $('.star-rating-edit').each(function() {
        $(this).raty({
            path: '/assets/',
            scoreName: 'review[rating]',
            score: function () {
                return $(this).attr('data-score');
            }
            });

    });
});

