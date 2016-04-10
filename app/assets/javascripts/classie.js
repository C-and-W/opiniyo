( function( window ) {

'use strict';

// class helper functions from bonzo https://github.com/ded/bonzo

function classReg( className ) {
  return new RegExp("(^|\\s+)" + className + "(\\s+|$)");
}

// classList support for class management
// altho to be fair, the api sucks because it won't accept multiple classes at once
var hasClass, addClass, removeClass;

if ( 'classList' in document.documentElement ) {
  hasClass = function( elem, c ) {
    return elem.classList.contains( c );
  };
  addClass = function( elem, c ) {
    elem.classList.add( c );
  };
  removeClass = function( elem, c ) {
    elem.classList.remove( c );
  };
}
else {
  hasClass = function( elem, c ) {
    return classReg( c ).test( elem.className );
  };
  addClass = function( elem, c ) {
    if ( !hasClass( elem, c ) ) {
      elem.className = elem.className + ' ' + c;
    }
  };
  removeClass = function( elem, c ) {
    elem.className = elem.className.replace( classReg( c ), ' ' );
  };
}

function toggleClass( elem, c ) {
  var fn = hasClass( elem, c ) ? removeClass : addClass;
  fn( elem, c );
}

window.classie = {
  // full names
  hasClass: hasClass,
  addClass: addClass,
  removeClass: removeClass,
  toggleClass: toggleClass,
  // short names
  has: hasClass,
  add: addClass,
  remove: removeClass,
  toggle: toggleClass
};

})( window );

// function getStyle(el, styleProp) {
//   var value, defaultView = (el.ownerDocument || document).defaultView;
//   // W3C standard way:
//   if (defaultView && defaultView.getComputedStyle) {
//     // sanitize property name to css notation
//     // (hypen separated words eg. font-Size)
//     styleProp = styleProp.replace(/([A-Z])/g, "-$1").toLowerCase();
//     return defaultView.getComputedStyle(el, null).getPropertyValue(styleProp);
//   } else if (el.currentStyle) { // IE
//     // sanitize property name to camelCase
//     styleProp = styleProp.replace(/\-(\w)/g, function(str, letter) {
//       return letter.toUpperCase();
//     });
//     value = el.currentStyle[styleProp];
//     // convert other units to pixels on IE
//     if (/^\d+(em|pt|%|ex)?$/i.test(value)) { 
//       return (function(value) {
//         var oldLeft = el.style.left, oldRsLeft = el.runtimeStyle.left;
//         el.runtimeStyle.left = el.currentStyle.left;
//         el.style.left = value || 0;
//         value = el.style.pixelLeft + "px";
//         el.style.left = oldLeft;
//         el.runtimeStyle.left = oldRsLeft;
//         return value;
//       })(value);
//     }
//     return value;
//   }
// }

    // //0 if pushed to left, negative if hidden
    // if (getStyle(document.getElementById('pg-posts'), 'left') < 0){
    //   classie.add( body, 'cbp-spmenu-push-toleft' );
    // }
    // else //if pushed to left
    // {
    //   classie.remove( body, 'cbp-spmenu-push-toleft' );
    // }