$(document).foundation()

$(document).ready(function () {
  var flash = $('#flash');
  if (flash.length > 0) {
    window.setTimeout(function () {
      flash.fadeTo(500, 0).slideUp(500, function () {
        $(this).remove();
      });
    }, 5000);
  }
});

function fixedFooter() {
    var footer = $(".footer"); //or your footer class
    height = footer.height();
    paddingTop = parseInt(footer.css('padding-top'), 10);//zero if is undefined
    paddingBottom = parseInt(footer.css('padding-bottom'), 10);//zero if is undefined
    totalHeight = (height + paddingTop + paddingBottom);
    footerPosition = footer.position();
    windowHeight = $(window).height();
    height = (windowHeight - footerPosition.top) - totalHeight;
    if (height > 0) {
      footer.css({
        'margin-top': (height) + 'px'
      });
    }
  }

  $(document).ready(function () {
    fixedFooter(); //at page load

  });
  $(window).resize(function () {
    fixedFooter(); //at page resize
  });
