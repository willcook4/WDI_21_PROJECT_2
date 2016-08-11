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

  // function truncateOnWord(str, limit) {
  //   var trimmable = '\u0009\u000A\u000B\u000C\u000D\u0020\u00A0\u1680\u180E\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200A\u202F\u205F\u2028\u2029\u3000\uFEFF';
  //   var reg = new RegExp('(?=[' + trimmable + '])');
  //   var words = str.split(reg);
  //   var count = 0;
  //   sentance = words.filter(function(word) {
  //       count += word.length;
  //       return count <= limit;
  //   }).join('');
  //   return sentance + "...";
  // }

  function willtruncation(string) {
    // console.log(string.text());
    $chars=(string.text().split(""));
    // console.log($chars);
    
    if($chars.length < 120) {
      // console.log($chars.join(""));
      return ($chars.join(""));
    }
    else {
      // console.log($chars.slice(0,119));
      $str = ($chars.slice(0,119).join(""));
      // console.log($str+"...");
      return ($str+"...");
    }
  }
// Truncating the description text
  var $TextToChange = document.getElementsByClassName('card-text');
  $($TextToChange).each(function() {
    // console.log(willtruncation($(this)));
    $newShortText = willtruncation($(this));
    $(this).text($newShortText);
  });

// Works but doesn't allow for spaces :(

  // var $TextToChange = document.getElementsByClassName('card-text');
  // $($TextToChange).each(function(){
  //   console.log(truncateOnWord($(this).text(), 120))
  //   $newShortText = truncateOnWord($(this).text(), 120)
  //   $(this).text($newShortText);

  // });
    
    // var $newItem = $('<p class="ellipistext">'+ $newShortText +'</p>');
    // $('.short-card-text').append($newItem); 
    

  // $.each($TextToChange), function(index, value) {
  //   console.log((value).text());
  // }


  // $texttotruncate = $('p.card-text').text() 
  // $(alert(truncateOnWord($texttotruncate, 120)));

  // Works but changes every cardtext box to be the same
  // $('p.card-text').html(truncateOnWord($texttotruncate, 120));
  // var $TextToChange = $('card-text').text();
  // $('card-text').text($texttotruncate);

  $('*[id^=messagetitle]:visible').each(function() {
    console.log($(this).text());
    console.log(($(this).attr('id')).slice(12));

      if ((($(this).attr('id')).slice(12)) % 2 == 0) {
         console.log($(this)+"red");
         $(this).css({ 'color': 'red'});
      }
      else {
        console.log(($(this).to_s + "blue"));
        $(this).css({ 'color': 'blue'});
      }
  });
  
});

