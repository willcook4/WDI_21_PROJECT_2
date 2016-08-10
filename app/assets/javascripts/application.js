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
//= require tether
//= require turbolinks
//= require_tree .
//= require bootstrap-sprockets

$(document).on('turbolinks:load', function() {
  $('select').select2();

  function truncateOnWord(str, limit) {
          var trimmable = '\u0009\u000A\u000B\u000C\u000D\u0020\u00A0\u1680\u180E\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200A\u202F\u205F\u2028\u2029\u3000\uFEFF';
          var reg = new RegExp('(?=[' + trimmable + '])');
          var words = str.split(reg);
          var count = 0;
          sentance = words.filter(function(word) {
              count += word.length;
              return count <= limit;
          }).join('');
          sentance += '...';
          return sentance;
      }
  $texttotruncate = $('p.card-text').text() 
  $(alert(truncateOnWord($texttotruncate, 120)));
  $('p.card-text').replaceWith( "<p>" + ($(truncateOnWord($texttotruncate, 120)).text()) + "</p>" );    
});

