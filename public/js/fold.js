$(function() {
  /* GLOBAL VARIABLES */
  var windowSize, scrollPosition, scrollDelayFactor;

  /* DOM ELEMENTS */
  $fold = $('.fold');
  $foldDetail = $('.fold-detail');
  $scrollIcon = $('.scroll-icon');
  $videoWrapper = $('.video-wrapper');
  $container = $('.container-fluid');

  /* DOM EVENTS */
  $(window).smartresize(function() {
    adjustContainerMargin();
    adjustFoldHeight();
  });

  $(window).scroll(function() {
    scrollPosition = $(this).scrollTop();
    if( scrollPosition == 0 ) {
      $scrollIcon.show();
    }
    else {
      $scrollIcon.hide();
    }
    if( scrollPosition < windowSize[1] ) {
      $('.menu-kamikaze-home').css('top', "-70px");
    }
    else {
      $('.menu-kamikaze-home').css('top', "0px");
    }
    adjustFoldHeight();
  });

  $scrollIcon.click(function(e) {
    e.preventDefault();
    $('html, body').animate({
      scrollTop: windowSize[1] + 'px'
    }, 'slow');
  });

  /* INIT */
  scrollPosition = 0;
  scrollDelayFactor = 0.5;
  adjustContainerMargin();
  adjustFoldHeight();

  /* FUNCTIONS */
  function adjustContainerMargin() {
    windowSize = getWindowSize();
    $container.css('margin-top', windowSize[1] + 'px');
  }

  function adjustFoldHeight() {
    var deltaHeight = windowSize[1] - scrollPosition;
    var foldHeight = (deltaHeight > 0) ? deltaHeight : 0;
    $fold.css('height', foldHeight + 'px');
    $videoWrapper.css('height', windowSize[1] + 'px');
    var newTop = 25 + parseInt( (foldHeight * 50 * scrollDelayFactor) / windowSize[1] );
    $foldDetail.css('top', newTop + '%');
  }
});

(function($,sr){
  // debouncing function from John Hann
  // http://unscriptable.com/index.php/2009/03/20/debouncing-javascript-methods/
  var debounce = function (func, threshold, execAsap) {
    var timeout;
    return function debounced () {
      var obj = this, args = arguments;
      function delayed () {
        if (!execAsap)
          func.apply(obj, args);
        timeout = null;
      };
      if (timeout)
        clearTimeout(timeout);
      else if (execAsap)
        func.apply(obj, args);
      timeout = setTimeout(delayed, threshold || 100);
    };
  }
  // smartresize
  jQuery.fn[sr] = function(fn){  return fn ? this.bind('resize', debounce(fn)) : this.trigger(sr); };
})(jQuery,'smartresize');

function getWindowSize() {
  var myWidth = 0, myHeight = 0;
  if( typeof( window.innerWidth ) == 'number' ) {
    //Non-IE
    myWidth = window.innerWidth;
    myHeight = window.innerHeight;
  }
  else if( document.documentElement && ( document.documentElement.clientWidth || document.documentElement.clientHeight ) ) {
    //IE 6+ in 'standards compliant mode'
    myWidth = document.documentElement.clientWidth;
    myHeight = document.documentElement.clientHeight;
  }
  else if( document.body && ( document.body.clientWidth || document.body.clientHeight ) ) {
    //IE 4 compatible
    myWidth = document.body.clientWidth;
    myHeight = document.body.clientHeight;
  }
  // window.alert( 'Width = ' + myWidth + " | " + 'Height = ' + myHeight );
  return [ myWidth, myHeight ];
}
