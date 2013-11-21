/** Utilities **/
//alternative to toFixed() - since it's broken in IE6
//sets a floating point number to the specified decimal place
function toFixed(value, precision) {
  var precision = precision || 0,
  neg = value < 0,
  power = Math.pow(10, precision),
  value = Math.round(value * power),
  integral = String((neg ? Math.ceil : Math.floor)(value / power)),
  fraction = String((neg ? -value : value) % power),
  padding = new Array(Math.max(precision - fraction.length, 0) + 1).join('0');
  return precision ? integral + '.' +  padding + fraction : integral;
}
//alternative to native headache-inducing isNaN() or isNumeric()
function isNumber(n) {
  return !isNaN(parseFloat(n)) && isFinite(n);
}
//alternative to $.trim - since it breaks in Safari 4.x on ipad/iphone
function chomp(str) {
  if (typeof str !== 'undefined') {
    var chomped = str.toString().replace(/(^[\s\xA0]+|[\s\xA0]+$)/g, '');
    return chomped;
  }
}


/** jQuery begins **/
$(function() {  

  // Pressing 'esc' also closes modals
  $(document).keyup(function(e) {
    if (e.keyCode == 27) { $('*').modal('hide'); }   // esc
  });


  // Automatically iconize buttons that need to be UI-responsive
  /** Usage:
    <a href="#" class="btn btn-iconize" data-btn-iconize="icon-plus">This is a Plus Button</a>  
  **/
  function btn_iconize(op) {
    var target = $('.btn-iconize');    
    target.each( function() {
      if (op === 'load') {
        $(this).data('btn-original',$(this).html()); //store original only on page load
      }      
      if ($(window).width() < 979) {
        $(this).data('btn-to-show', '<i class="' + $(this).data('btn-iconize') + '"></i>'); //replace
      } else {
        $(this).data('btn-to-show', $(this).data('btn-original'));  //revert
      }      
      $(this).html( $(this).data('btn-to-show') );  //show button      
    });    
  }  
  btn_iconize('load'); //also loaded on window resize. Refer bottom of this file.

  /** generate phone call links - tel: scheme for mobile devices, callto: scheme for larger devices **/
  //Usage: <a data-type="tel">+6012-3456-789</a>
  $('a[data-type="tel"]').each( function() {
    if (typeof($(this).text()) !== 'undefined') {
      // trim (can't use $.trim because it breaks in Safari 4.x on ipad/iphone, grr...)
      var phoneNum = chomp( $(this).text() );
      if ($(window).width() >= 768) {      
        var uriPhone = "callto:"+phoneNum;       
      } else {
        var uriPhone = "tel:"+phoneNum;    
      }
      $(this).attr("href", uriPhone);
    }
  });  
  /** generate email links **/
  //Usage: <a data-type="email">john.doe@email.com</a>
  $('a[data-type="email"]').each( function() {
    if (typeof($(this).text()) !== 'undefined') {
      var emailAdd = chomp( $(this).text() );
      $(this).attr("href", "mailto:"+emailAdd);
    }
  }); 
  
  
  
  /*** Things to do on window resize ***/
  $(window).resize( function() { 
    btn_iconize();    
  });

//end-of-file
});


$(".with-chosen").chosen();